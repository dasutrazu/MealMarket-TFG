<?php

namespace App\Controller;

use App\Entity\Pedido;
use App\Entity\Carrito;
use App\Entity\CarritoProducto;
use App\Entity\Producto;
use App\Entity\PedidoProducto;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;

class usuarioController extends AbstractController
{
    /* PAGINA DE PERFILS */
    #[Route('/perfil', name: 'app_perfil')]
    public function perfil(EntityManagerInterface $entityManager): Response
    {
        
        $usuario = $this->getUser();
        $pedidos = $entityManager->getRepository(Pedido::class)->findBy(['id_user' => $usuario]);
        return $this->render("perfil.html.twig", ["usuario" => $usuario, "pedidos"=>$pedidos]);
    }

    /*  VER PEDIDOS */
    #[Route('/pedido/{id_pedido}', name: 'app_pedido')]
    public function pedido($id_pedido, EntityManagerInterface $entityManager): Response
    {
        $pedido = $entityManager->getRepository(Pedido::class)->findOneBy(['id_pedido' => $id_pedido]);
        $productosPedido = $entityManager->getRepository(PedidoProducto::class)->findBy(['id_pedido' => $pedido]);

        return $this->render('compra.html.twig', [
            'pedido' => $pedido,
            'pedidoProductos' => $productosPedido,
        ]);
    }


    #[Route('/borrar_mi_usuario', name: 'app_borrar_mi_usuario')]
    public function borrar_mi_usuario(EntityManagerInterface $entityManager, Request $request, TokenStorageInterface $tokenStorage): Response
    {
        $usuario = $this->getUser();
    
        // Eliminar CarritoProducto
        $carrito = $entityManager->getRepository(Carrito::class)->findOneBy(['id_user' => $usuario]);
        $CarritoProductos = $entityManager->getRepository(CarritoProducto::class)->findBy(['id_carrito' => $carrito]);
        foreach ($CarritoProductos as $producto) {
            $entityManager->remove($producto);
        }
        if ($carrito) {
            $entityManager->remove($carrito);
        }
    
        // Eliminar PedidoProducto y Pedido
        $pedidos = $entityManager->getRepository(Pedido::class)->findBy(['id_user' => $usuario]);
        foreach ($pedidos as $pedido) {
            $PedidoProductos = $entityManager->getRepository(PedidoProducto::class)->findBy(['id_pedido' => $pedido]);
            foreach ($PedidoProductos as $pedidoProducto) {
                $entityManager->remove($pedidoProducto);
            }
            $entityManager->remove($pedido);
        }
    
        // Ahora es seguro eliminar el usuario
        $entityManager->remove($usuario);     
        $entityManager->flush();
        // Invalidar la sesión completamente
        $request->getSession()->invalidate();
        
        // Limpiar el token de seguridad
        $tokenStorage->setToken(null);



        // Redirección después de la eliminación del usuario
        return $this->redirectToRoute('defaults');

    }


}