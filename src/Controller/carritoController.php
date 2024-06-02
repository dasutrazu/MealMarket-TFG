<?php
namespace App\Controller;

use Exception;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;
use App\Controller\UserInterface;
//Para poder usar archivos
use Symfony\Component\Filesystem\Exception\IOExceptionInterface;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Filesystem\Path;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use App\Controller\JsonResponse;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
//Entidades de la base de datos
use App\Entity\Producto;
use App\Entity\Carrito;
use App\Entity\CarritoProducto;
use App\Entity\Opiniones;

class carritoController extends AbstractController{
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    #[Route('/carrito/{id_carrito}', name: 'app_carrito')]
    public function index($id_carrito): Response
    {
        try {
            $usuario = $this->getUser()->getIdUser();
            dump($usuario);
            $carrito = $this->entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $usuario]);
            dump($carrito);
            $carritoProducto = $this->entityManager->getRepository(CarritoProducto::class)->findBy(['id_carrito'=>$carrito]);
    
            //      $carritoProductos = []; // Inicializa la variable $carritoProducto aquí
    
            /* if ($carrito) {
                $carritoProductos = $carrito->getCarritoProductos()->toArray();
                $total = array_reduce($carritoProductos, function ($sum, $carritoProducto) {
                    return $sum + $carritoProducto->getProducto()->getPrecio() * $carritoProducto->getCantidad();
                }, 0);
            } else {
                $total = 0; // Asegúrate de inicializar $total aunque no haya productos en el carrito
            } */
        } catch (Exception $e) {
            dump($e->getMessage()); // Dump any exception message
            return $this->render('error.html.twig', ['message' => $e->getMessage()]);
        }
    
        return $this->render('carrito.html.twig', [
            'carrito' => $carrito,
            'carritoProductos' => $carritoProducto // Pasa la variable aunque esté vacía
           
        ]); 
    }
    

    #[Route('/addProducto/{idProduct}', name: 'addProducto')]
    public function addProducto(int $idProduct, Request $request)
    {
        try {
            $usuario = $this->getUser()->getIdUser();
            $productoId = $request->request->get("id_producto");

            // Comprobamos si el producto existe
            $producto = $this->entityManager->getRepository(Producto::class)->find($productoId);
            if (!$producto) {
                throw $this->createNotFoundException('The product does not exist');
            }

            dump($usuario); // Check if this dump statement is executed

            $carrito = $this->entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $usuario]);

            dump($carrito); // Check if this dump statement is executed

            if ($request->isMethod('POST')) { // Check if the method is POST
                if (!$carrito) { // If the cart does not exist
                    $carrito = new Carrito();
                    $carrito->setIdUser($usuario);
                    $this->entityManager->persist($carrito);
                    $this->entityManager->flush(); // Save the cart first to get its ID
                }

                // Check if product is already in the cart
                $carritoProducto = $this->entityManager->getRepository(CarritoProducto::class)->findOneBy([
                    'id_carrito' => $carrito, 
                    'id_producto' => $producto
                ]);
                //dd($carritoProducto);
              

                if (!$carritoProducto) {
                    $carritoProducto = new CarritoProducto();
                    $carritoProducto->setIdCarrito($carrito);
                    $carritoProducto->setIdProducto($producto);
                    $carritoProducto->setCantidad(1);
                    $this->entityManager->persist($carritoProducto);
                    dump($carritoProducto); // Check if this dump statement is executed
                } else {
                    $carritoProducto->setCantidad($carritoProducto->getCantidad() + 1);
                    dump($carritoProducto); // Check if this dump statement is executed
                }

                $this->entityManager->flush(); 
            }

            return $this->render('carrito.html.twig', [
                'id_carrito' => $carrito,
                'carritoProductos' => $carritoProducto
            ]);
        } catch (Exception $e) {
            dump($e->getMessage()); // Dump any exception message
            return $this->render('error.html.twig', ['message' => $e->getMessage()]);
        }
    }


}


