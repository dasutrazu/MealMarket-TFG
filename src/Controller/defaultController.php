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
        $productos = $entityManager->getRepository(Producto::class)->find($idProduct);
        $opiniones = $entityManager->getRepository(Opiniones::class)->findBy(['id_producto' => $idProduct]);
        $valoraciones = $entityManager->getRepository(Valoraciones::class)->findBy(['id_producto' => $idProduct]);
        
        if ($this->getUser() && $this->isGranted('ROLE_USER')) {
            $userId = $this->getUser()->getIdUser();
            

            dump($userId);

            return $this->render("productopag.html.twig", ['producto'=>$productos,
                                                       'opiniones'=>$opiniones,
                                                       'valoraciones'=>$valoraciones,
                                                       'idProduct' => $idProduct,//paso el id del producto para manejar bien los formularios de los productos
                                                        'usuarioId'=> $userId,
                                                    ]);
        }else{
        return $this->render("productopag.html.twig", ['producto'=>$productos,
                                                       'opiniones'=>$opiniones,
                                                       'valoraciones'=>$valoraciones,
                                                       'idProduct' => $idProduct,//paso el id del producto para manejar bien los formularios de los productos
                                                        'usuarioId' => null,
                                                    ]);
        }
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
    public function opiniones(Request $request, EntityManagerInterface $entityManager): Response
    {
        if ($request->isMethod('POST')) {
            try {
                $opinionText = $request->request->get("opinion");
                $userId = (int) $request->request->get("UsuarioIdOpiniones");
                $idProduct = (int) $request->request->get("idProducto");
        $userId = 1;
                dump($opinionText); // Verifica que la opinión se está recibiendo
                dump($userId); // Verifica que el ID del usuario se está recibiendo
                dump($idProduct); // Verifica que el ID del producto se está recibiendo

                $newOpinion = new Opiniones();
                $newOpinion->setIdUser($userId);
                $newOpinion->setIdProducto($idProduct);
                $newOpinion->setOpinion($opinionText);

                $entityManager->persist($newOpinion);
                $entityManager->flush();

                // Redirigir a la página del producto después de guardar la opinión
                return $this->redirectToRoute('meal', ['idProduct' => $idProduct]);
            } catch (Exception $e) {
                // Maneja la excepción (por ejemplo, mostrando un mensaje de error)
                dump($e->getMessage());
            }
        }

        // En caso de que la solicitud no sea POST, redirigir a la página de inicio o mostrar un mensaje de error
        return $this->redirectToRoute('defaults');
    }
    
    #[Route('/valoraciones', name: 'valoraciones')]
    function valoraciones(Request $request,EntityManagerInterface $entityManager ): Response{
        if ($request->isMethod('POST')) {
            try {

                $valoracion= $request->request->get("valoracion");
                $userId = (int) $request->request->get("UsuarioIdOpiniones");
                $idProduct = (int) $request->request->get("idProducto");
                $userId = 1;
    
                $new = new Valoraciones();
                //$new->setIdOpinion($idProd);
                $new->setIdUser($userId);
                $new->setIdProducto($idProduct);
                $new->setValoracion($valoracion);
                
    
                $entityManager->persist($new);
                $entityManager->flush();
            } catch (Exception $e) {
                
                dump($e->getMessage());
            }
        }
        return $this->redirectToRoute('defaults');

    }


    #[Route('/buscar', name: 'buscarProducto')]
    public function buscar(Request $request, EntityManagerInterface $entityManager): Response
    {
        $query = $request->query->get('q');

        if ($query) {
            // Buscar productos que coincidan con el término de búsqueda
            $productos = $entityManager->getRepository(Producto::class)->createQueryBuilder('p')
                ->where('p.name LIKE :query')
                ->setParameter('query', '%' . $query . '%')
                ->getQuery()
                ->getResult();
        } else {
            $productos = [];
        }

        return $this->render('productosBuscados.html.twig', [
            'productos' => $productos,
        ]);
    }



}