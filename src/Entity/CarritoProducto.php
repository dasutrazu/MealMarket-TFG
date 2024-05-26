<?php

namespace App\Entity;

use App\Repository\CarritoProductoRepository;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use App\Entity\Carrito;
#[ORM\Entity(repositoryClass: CarritoProductoRepository::class)]
class CarritoProducto
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private ?int $id_carritoproducto = null;

    #[ORM\ManyToOne(targetEntity: Carrito::class, inversedBy: 'carritoProductos')]
    #[ORM\JoinColumn]
    private ?Carrito $id_carrito = null;

    #[ORM\ManyToOne(targetEntity: Producto::class)]
    #[ORM\JoinColumn(name: "id_producto", referencedColumnName: "id_producto")]
    private ?int $id_producto = null;

    #[ORM\Column]
    private ?int $cantidad = null;

    public function getId(): ?int
    {
        return $this->id;
    }
    
    // Getters y setters
    public function getIdCarritoproducto(): ?int
    {
        return $this->id_carritoproducto;
    }

    public function setIdCarritoproducto(int $id_carritoproducto): static
    {
        $this->id_carritoproducto = $id_carritoproducto;

        return $this;
    }

    public function getIdCarrito(): ?Carrito
    {
        return $this->id_carrito;
    }

    public function setIdCarrito(Carrito $id_carrito): static
    {
        $this->id_carrito = $id_carrito;

        return $this;
    }

    public function getIdProducto(): ?Producto
    {
        return $this->id_producto;
    }

    public function setIdProducto(int $id_producto): static
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

    

    public function addProducto(Producto $id_producto): self
    {
        $this->id_producto = $id_producto;

        return $this;
    }

    public function removeProducto(Producto $id_producto): self
    {
        $this->id_producto = null;
        return $this;
    }
}
