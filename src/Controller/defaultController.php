<?php
namespace App\Controller;

use Exception;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;
use App\Controller\UserInterface;
//Para poder usar archivos
use Symfony\Component\Filesystem\Exception\IOExceptionInterface;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Filesystem\Path;

use App\Controller\JsonResponse;

use App\Entity\Producto;
use App\Entity\Opiniones;
use App\Entity\Valoraciones;
use App\Entity\Carrito;
use App\Entity\CarritoProducto;


class defaultController extends AbstractController{


    #[Route('/defaults', name: 'defaults')]
    public function defaults(EntityManagerInterface $entityManager){

        
        $productos= $entityManager->getRepository(Producto::class)->findAll();
       

        // Si el usuario está autenticado, intentamos obtener su carrito
        if ($this->getUser()) {
            $user = $this->getUser();
            $carrito = $entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $user]);

            // Si no se encontró carrito para el usuario, se crea uno nuevo
            if (!$carrito) {
                $carrito = new Carrito();
                $carrito->setIdUser($user); // Asignar el usuario al carrito
                $entityManager->persist($carrito);
                $entityManager->flush();
            }

            // Obtener los productos del carrito si existe
            $carritoProductos = $entityManager->getRepository(CarritoProducto::class)->findBy(['id_carrito' => $carrito]);

            return $this->render('pagPrincipal.html.twig', [
                'prod' => $productos,
                'carrito' => $carrito,
                'carritoProductos' => $carritoProductos,
            ]);
        }

        // Si no está autenticado, simplemente mostramos todos los productos
        return $this->render('pagPrincipal.html.twig', [
            'prod' => $productos,
        ]);
       
    }


    #[Route('/mealmarket/{idProduct}', name: 'meal')]
    public function meal(EntityManagerInterface $entityManager, $idProduct, Request $request): Response
    {
        //if ($this->getUser() && $this->isGranted('ROLE_USER')) {
        $userId = $this->getUser()->getIdUser();
        $productos = $entityManager->getRepository(Producto::class)->find($idProduct);
        $opiniones = $entityManager->getRepository(Opiniones::class)->findBy(['id_producto' => $idProduct]);
        $valoraciones = $entityManager->getRepository(Valoraciones::class)->findBy(['id_producto' => $idProduct]);


        if ($request->request->has('submit_opinion')) {
            $this->opiniones($request, $userId, $idProduct, $entityManager);    //Llamo a la función que va a manejar la insercion en la base de datos
        }
        dump($idProduct);
        return $this->render("productopag.html.twig", ['producto'=>$productos,
                                                       'opiniones'=>$opiniones,
                                                       'valoraciones'=>$valoraciones,
                                                       'idProduct' => $idProduct,//paso el id del producto para manejar bien los formularios de los productos
                                                    ]);
    }


    //configurar para q recoja los valores de barra de busqueda
    public function busqueda(Request $request, $idProduct,EntityManagerInterface $entityManager){
        if ($request->isMethod('POST')) {
            
        }
    }

   

    #[Route('/carrito', name: 'carrito')]
    public function carrito()
    {
        return $this->render("carrito.html.twig");
    }

    #[Route('/opiniones', name: 'opiniones')]
    function opiniones(Request $request, $userId, $idProduct,EntityManagerInterface $entityManager ): void{
        if ($request->isMethod('POST')) {
            try {
                $opinionText = $request->request->get("opinion");
                dump($opinionText); // Verifica que la opinión se está recibiendo

                $newOpinion = new Opiniones();
                $newOpinion->setIdUser($userId);
                $newOpinion->setIdProducto($idProduct);
                $newOpinion->setOpinion($opinionText);

                $entityManager->persist($newOpinion);
                $entityManager->flush();
            } catch (Exception $e) {
                // Maneja la excepción (por ejemplo, mostrando un mensaje de error)
                dump($e->getMessage());
            }
        }
    }
    #[Route('/valoraciones', name: 'valoraciones')]
    function valoraciones(Request $request, $userId, $idProduct,EntityManagerInterface $entityManager ): ?Valoraciones{
        if ($request->isMethod('POST')) {
            try {
                $idProd = $idProduct;
                $Userid = $userId;
                $valoracion= $request->request->get("valoracion");
    
                $new = new Valoraciones();
                //$new->setIdOpinion($idProd);
                $new->setIdUser($Userid);
                $new->setIdProducto($idProd);
                $new->setValoracion($valoracion);
                
    
                $entityManager->persist($new);
                $entityManager->flush();
            } catch (Exception $e) {
                
                dump($e->getMessage());
            }
        }
    }




    /*    Prueba metodo para buscar    
    #[Route('/buscarProducto', name: 'buscarProducto')]
    public function search(Request $request): JsonResponse
    {
        $query = $request->query->get('q', '');
        
        if (empty($query)) {
            return new JsonResponse([]);
        }

        $products = $this->productRepository->findByNameLike($query);

        $data = [];
        foreach ($products as $product) {
            $data[] = [
                'id' => $product->getId(),
                'name' => $product->getName(),
                'price' => $product->getPrice(),
                'img' => $product->getImg(),  // Asumiendo que tienes una propiedad 'img'
                'supermarket' => $product->getSupermarket(),  // Asumiendo que tienes una propiedad 'supermarket'
                // Agrega otros campos necesarios
            ];
        }

        return new JsonResponse($data);
    }
     */


     public function search(Request $request, ProductRepository $productRepository): JsonResponse
     {
         $query = $request->query->get('q', '');
 
         if (strlen($query) < 3) {
             return new JsonResponse([]);
         }
 
         $productos = $productRepository->findByName($query);
 
         return new JsonResponse($productos);
     }
}