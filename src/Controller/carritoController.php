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
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use App\Controller\JsonResponse;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use App\Entity\Producto;
use App\Entity\Carrito;
use App\Entity\CarritoProducto;

class carritoController extends AbstractController{
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    #[Route('/carrito', name: 'app_carrito')]
    public function index(): Response
    {
        $usuario = $this->getUser();
        dump($usuario);
        $carrito = $this->entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $usuario]);
        
        if (!$carrito) {
            $carritoProducto = [];
            $total = 0;
        } else {
            $carritoProducto = $carrito->getCarritoProductos()->toArray();
            $total = array_reduce($carritoProducto, function ($sum, $carritoProducto) {
                return $sum + $carritoProducto->getProducto()->getPrecio() * $carritoProducto->getCantidad();
            }, 0);
        }

        return $this->render('carrito.html.twig', [
            'id_carrito' => $carrito,
            'carritoProductos' => $carritoProducto,
            'total' => $total,
        ]);
    }




   /* #[Route('/addProducto/{idProduct}', name: 'addProducto')]
    public function addProducto(int $producto_id): Response
    {
        $usuario = $this->getUser();
        $carrito = $this->entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $usuario]);

        if (!$carrito) {
            $carrito = new Carrito();
            $carrito->setUsuario($usuario);
            $this->entityManager->persist($carrito);
            $this->entityManager->flush(); // Guardar el carrito primero para obtener su ID
        }

        $producto = $this->entityManager->getRepository(Producto::class)->find($producto_id);

        if (!$producto) {
            throw $this->createNotFoundException('Producto no encontrado');
        }

        $carritoProducto = $this->entityManager->getRepository(CarritoProducto::class)->findOneBy(['carrito' => $carrito, 'producto' => $producto]);

        if (!$carritoProducto) {
            $carritoProducto = new CarritoProducto();
            $carritoProducto->setCarrito($carrito);
            $carritoProducto->setProducto($producto);
            $carritoProducto->setCantidad(1);
            $this->entityManager->persist($carritoProducto);
        } else {
            $carritoProducto->setCantidad($carritoProducto->getCantidad() + 1);
        }

        $this->entityManager->flush();

        return $this->redirectToRoute('app_carrito');
    } */

    #[Route('/addProducto/{idProduct}', name: 'addProducto')]
    public function addProducto(int $idProduct, Request $request): Response
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

                dump($carritoProducto); // Check if this dump statement is executed

                if (!$carritoProducto) {
                    $carritoProducto = new CarritoProducto();
                    $carritoProducto->setIdCarrito($carrito);
                    $carritoProducto->setIdProducto($producto);
                    $carritoProducto->setCantidad(1);
                    $this->entityManager->persist($carritoProducto);
                } else {
                    $carritoProducto->setCantidad($carritoProducto->getCantidad() + 1);
                }

                $this->entityManager->flush(); 
            }

            return $this->redirectToRoute('carrito.html.twig', [
                'id_carrito' => $carrito,
                'carritoProductos' => $carritoProducto
            ]);
        } catch (Exception $e) {
            dump($e->getMessage()); // Dump any exception message
            return $this->render('error.html.twig', ['message' => $e->getMessage()]);
        }


                /*
        $usuario = $this->getUser();
        $carrito = $this->entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $usuario->getIdUser()]);

         if (!$carrito) {
            $carrito = new Carrito();
            $carrito->setIdUser($usuario);
            $this->entityManager->persist($carrito);
            $this->entityManager->flush(); // Guardar el carrito primero para obtener su ID
        }

        $producto = $this->entityManager->getRepository(Producto::class)->find($idProduct);

        if (!$producto) {
            throw $this->createNotFoundException('Producto no encontrado');
        }

        $carritoProducto = $this->entityManager->getRepository(CarritoProducto::class)->findOneBy(['id_carrito' => $carrito, 'id_producto' => $producto]);

        if (!$carritoProducto) {
            $carritoProducto = new CarritoProducto();
            $carritoProducto->setIdCarrito($carrito);
            $carritoProducto->setIdProducto($producto);
            $carritoProducto->setCantidad(1);
            $this->entityManager->persist($carritoProducto);
        } else {
            $carritoProducto->setCantidad($carritoProducto->getCantidad() + 1);
        }

        $this->entityManager->flush();
        dump($carrito);
        dump($carritoProducto); */
        
        // Actualizar la lista de productos del carrito y el total

        //return $this->redirectToRoute('app_carrito');
    /* return $this->redirectToRoute('carrito.html.twig', [
            'id_carrito' => $carrito,
            'carritoProductos' => $carritoProducto
        ]);*/


    }


}


