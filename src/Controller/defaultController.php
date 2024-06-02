<?php
namespace App\Controller;

use App\Entity\Opiniones;
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

        dump($idProduct);
        return $this->render("productopag.html.twig", ['producto'=>$productos, 'opiniones'=>$opiniones]);
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

    
}