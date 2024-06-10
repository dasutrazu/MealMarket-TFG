<?php

namespace App\Controller;

use App\Entity\Pedido;
use App\Entity\Carrito;
use App\Entity\CarritoProducto;
use App\Entity\PedidoProducto;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;

class usuarioController extends AbstractController
{
    #[Route('/perfil', name: 'app_perfil')]
    public function perfil(EntityManagerInterface $entityManager): Response
    {
        
        $usuario = $this->getUser();
        $pedidos = $entityManager->getRepository(Pedido::class)->findBy(['id_user' => $usuario]);
        return $this->render("perfil.html.twig", ["usuario" => $usuario, "pedidos"=>$pedidos]);
    }


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

}