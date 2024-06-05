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
    public function index($id_carrito, EntityManagerInterface $entityManager, Request $request): Response
    {
        $usuario = $this->getUser()->getIdUser();
        $carrito = $entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $usuario]);
        
        if (!$carrito) {
            throw $this->createNotFoundException('Carrito no encontrado.');
        }

        // Obtener el ID del producto del carrito a actualizar
        //$carritoProductoId = $request->request->get('carritoProductoId');
        /* if ($carrito) {
            // Obtener la acción a realizar
            $accion = $request->request->get('accion');
            
            // Obtener el producto del carrito
            $carritoProducto = $entityManager->getRepository(CarritoProducto::class)->find($carrito);
            
            if ($carritoProducto && $carritoProducto->getIdCarrito()->getIdCarrito() === $carrito->getIdCarrito()) {
                try {
                    switch ($accion) {
                        case 'añadir':
                            $carritoProducto->setCantidad($carritoProducto->getCantidad() + 1);
                            break;

                        case 'quitar':
                            if ($carritoProducto->getCantidad() > 1) {
                                $carritoProducto->setCantidad($carritoProducto->getCantidad() - 1);
                            } else {
                                $entityManager->remove($carritoProducto);
                            }
                            break;

                        case 'eliminar':
                            $entityManager->remove($carritoProducto);
                            break;

                        default:
                            throw new Exception('Acción no válida');
                    }

                    $entityManager->flush();

                } catch (Exception $e) {
                    // Manejo de excepciones (opcional: agregar un mensaje de error)
                }
            }
        } */

        // Obtener los productos del carrito
        $carritoProductos = $entityManager->getRepository(CarritoProducto::class)->findBy(['id_carrito' => $carrito]);

        // Calcular el total
        $total = 0;
        if ($carritoProductos) {
            $total = array_reduce($carritoProductos, function ($sum, $carritoProducto) {
                return $sum + $carritoProducto->getIdProducto()->getPrice() * $carritoProducto->getCantidad();
            }, 0);
        }

        return $this->render('carrito.html.twig', [
            'carrito' => $carrito,
            'carritoProductos' => $carritoProductos,
            'total' => $total
        ]);
    }

    /* 
    public function index($id_carrito, EntityManagerInterface $entityManager, Request $request): Response
    {
        
            $usuario = $this->getUser()->getIdUser();
            dump($usuario);
            $carrito = $this->entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $usuario]);
            dump($carrito);
            $carritoProducto = $this->entityManager->getRepository(CarritoProducto::class)->findBy(['id_carrito'=>$carrito]);
    
            $carritoProductos = [];
            $total = 0;
        
            if ($carrito) {
                // Obtener los productos del carrito
                $carritoProductos = $this->entityManager->getRepository(CarritoProducto::class)->findBy(['id_carrito' => $carrito]);
        
                // Calcular el total si hay productos en el carrito
                if ($carritoProductos) {
                    $total = array_reduce($carritoProductos, function ($sum, $carritoProducto) {
                        return $sum + $carritoProducto->getIdProducto()->getPrice() * $carritoProducto->getCantidad();
                    }, 0);
                }
            } 

        

        return $this->render('carrito.html.twig', [
            'carrito' => $carrito,
            'carritoProductos' => $carritoProducto, // Pasa la variable aunque esté vacía
           'total'=> $total
        ]); 
    } */
    

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
    #[Route("/carrito_actualizar", name:'carrito_actualizar')]
    public function carrito_actualizar(Request $request, CarritoProducto $carritoProducto, EntityManagerInterface $entityManager): Response{
        try {
            $accion = $request->request->get('accion');

            switch ($accion) {
                case 'añadir':
                    $carritoProducto->setCantidad($carritoProducto->getCantidad() + 1);
                    break;
    
                case 'quitar':
                    if ($carritoProducto->getCantidad() > 1) {
                        $carritoProducto->setCantidad($carritoProducto->getCantidad() - 1);
                    } else {
                        $entityManager->remove($carritoProducto);
                    }
                    break;
    
                case 'eliminar':
                    $entityManager->remove($carritoProducto);
                    break;
    
                default:
                    throw new Exception('Acción no válida');
            }
    
            $entityManager->flush();
    
        }catch(Exception ){}
        return $this->redirectToRoute('carrito');

    }

    //Testear todo y aun hay que crear PEDIDO y PEDIDOPRODUCTO
    public function crearPedido(Request $request): Response
    {
        $em = $this->getDoctrine()->getManager();
        $usuario = $this->getUser();
    
        // Asumiendo que el carrito se obtiene de alguna forma, por ejemplo, buscando por usuario
        $carrito = $em->getRepository(Carrito::class)->findOneBy(['usuario' => $usuario]);
    
        if (!$carrito) {
            // Manejar el error, como redirigir a una página de error o mostrar un mensaje
            return $this->redirectToRoute('error_page');
        }
    
        // Crear un nuevo pedido
        $pedido = new Pedido();
        $pedido->setUsuario($usuario);
        $pedido->setFecha(new \DateTime()); // Fecha actual
        $pedido->setTotal($carrito->calcularTotal()); // Implementar esta función en la entidad Carrito
    
        $em->persist($pedido);
    
        // Transferir los ítems del carrito a detalles de pedido
        foreach ($carrito->getCarritoProductos() as $item) {
            $detalle = new DetallePedido();
            $detalle->setPedido($pedido);
            $detalle->setProducto($item->getProducto());
            $detalle->setCantidad($item->getCantidad());
            $detalle->setPrecio($item->getProducto()->getPrecio()); // Asegúrate de que el precio es el actual
    
            $em->persist($detalle);
        }
    
        // Opcional: Limpiar o eliminar el carrito
        $carrito->limpiarCarrito(); // Implementa este método para borrar los productos o el carrito entero
        $em->remove($carrito); // Si quieres eliminar el carrito completamente
    
        // Guardar todo en la base de datos
        $em->flush();
    
        // Redirigir al usuario a una página de confirmación del pedido
        return $this->redirectToRoute('confirmacion_pedido', ['id' => $pedido->getId()]);
    }









}


