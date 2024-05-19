<?php

namespace App\Entity;

use App\Repository\PedidodetalleRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PedidodetalleRepository::class)]
class Pedidodetalle
{
     /*     ATRIBUTOS      */
     
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id_pedido_detalle;

    #[ORM\Column(nullable: true)]
    private ?int $id_pedido = null;

    #[ORM\Column(nullable: true)]
    private ?int $id_producto = null;

    #[ORM\Column]
    private ?int $cantidad = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 10, scale: 2)]
    private ?string $precio_unitario = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 10, scale: 2)]
    private ?string $subtotal = null;


         /*     RELACIONES      */


         /*     METODOS      */

    public function getId(): ?int
    {
        return $this->id_pedido_detalle;
    }

    public function getIdPedido(): ?int
    {
        return $this->id_pedido;
    }

    public function setIdPedido(?int $id_pedido): static
    {
        $this->id_pedido = $id_pedido;

        return $this;
    }

    public function getIdProducto(): ?int
    {
        return $this->id_producto;
    }

    public function setIdProducto(?int $id_producto): static
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

    public function getPrecioUnitario(): ?string
    {
        return $this->precio_unitario;
    }

    public function setPrecioUnitario(string $precio_unitario): static
    {
        $this->precio_unitario = $precio_unitario;

        return $this;
    }

    public function getSubtotal(): ?string
    {
        return $this->subtotal;
    }

    public function setSubtotal(string $subtotal): static
    {
        $this->subtotal = $subtotal;

        return $this;
    }
}
