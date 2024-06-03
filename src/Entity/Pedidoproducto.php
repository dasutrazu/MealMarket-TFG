<?php

namespace App\Entity;

use App\Repository\PedidoproductoRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PedidoproductoRepository::class)]
class Pedidoproducto
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id_pedidoproducto = null;

    #[ORM\ManyToOne(targetEntity: Pedido::class)]
    #[ORM\JoinColumn(name: 'id_pedido', referencedColumnName: 'id_pedido')]
    private $id_pedido = null;

    #[ORM\ManyToOne(targetEntity: Producto::class)]
    #[ORM\JoinColumn(name: "id_producto", referencedColumnName: "id_producto")]
    private ?Producto $id_producto = null;

    #[ORM\Column]
    private ?int $cantidad = null;


    public function getIdPedidoproducto(): ?int
    {
        return $this->id_pedidoproducto;
    }

    public function getIdPedido(): ?Pedido
    {
        return $this->id_pedido;
    }

    public function setIdPedido(?Pedido $id_pedido): static
    {
        $this->id_pedido = $id_pedido;

        return $this;
    }

    public function getIdProducto(): ?Producto
    {
        return $this->id_producto;
    }

    public function setIdProducto(?Producto $id_producto): static
    {
        $this->id_producto = $id_producto;

        return $this;
    }

    public function getCantidad(): ?int
    {
        return $this->cantidad;
    }

    public function setCantidad(int $cantidad): static
    {
        $this->cantidad = $cantidad;

        return $this;
    }
}
