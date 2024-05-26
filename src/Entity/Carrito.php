<?php

namespace App\Entity;

use App\Repository\CarritoRepository;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;

#[ORM\Entity(repositoryClass: CarritoRepository::class)]
#[ORM\Table(name:'carrito')]
class Carrito
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private ?int $id_carrito = null;

   
    #[ORM\ManyToOne(targetEntity: User::class)]
    #[ORM\JoinColumn(name: 'id_user', referencedColumnName: 'id_user')]
    private ?User $id_user = null;

    #[ORM\OneToMany(targetEntity: CarritoProducto::class, mappedBy: 'carritoproducto', cascade: ['persist', 'remove'])]
    private $carritoProductos;


    #[ORM\ManyToOne(targetEntity: User::class)]
    #[ORM\JoinColumn(name: 'id_user', referencedColumnName: 'id_user')]
    private ?User  $user = null;

    //CONSTRUCTOR TABLA ALTERNA
    public function __construct()
    {
        $this->carritoProductos = new ArrayCollection();
    }

     // Getters y setters
    public function getIdCarrito(): ?int
    {
        return $this->id_carrito;
    }

    public function setIdCarrito(int $id_carrito): static
    {
        $this->id_carrito = $id_carrito;

        return $this;
    }

    public function getIdUser(): ?int
    {
        return $this->id_user;
    }

    public function setIdUser(?int $user): self
    {
        $this->id_user = $user;

        return $this;
    }

    /**
     * @return Collection|CarritoProducto[]
     */
    public function getCarritoProductos(): Collection
    {
        return $this->carritoProductos;
    }
    public function addCarritoProducto(CarritoProducto $carritoProducto): self
    {
        if (!$this->carritoProductos->contains($carritoProducto)) {
            $this->carritoProductos[] = $carritoProducto;
            $carritoProducto->setCarrito($this);
        }

        return $this;
    }

    public function removeCarritoProducto(CarritoProducto $carritoProducto): self
    {
        if ($this->carritoProductos->contains($carritoProducto)) {
            $this->carritoProductos->removeElement($carritoProducto);
        }

        return $this;
    }
}
