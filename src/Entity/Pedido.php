<?php

namespace App\Entity;

use App\Repository\PedidoRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
#[ORM\Entity(repositoryClass: PedidoRepository::class)]
class Pedido
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id_pedido = null;

    #[ORM\ManyToOne(targetEntity: User::class)]
    #[ORM\JoinColumn(name: 'id_user', referencedColumnName: 'id_user')]
    private ?User $id_user = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $fecha = null;

    #[ORM\Column]
    private ?float $total = null;


    /*  RELACIONES  */
    #[ORM\OneToMany(mappedBy: 'pedido', cascade:['persist'], targetEntity: PedidoProducto::class)]
    private Collection $pedidoProductos;

    public function __construct()
    {
        $this->pedidoProductos = new ArrayCollection();
    }

    public function getIdPedido(): ?int
    {
        return $this->id_pedido;
    }


    public function getIdUser(): ?User
    {
        return $this->id_user;
    }

    public function setIdUser(User $id_user):self
    {
        $this->id_user = $id_user;

        return $this;
    }

    public function getFecha(): ?\DateTimeInterface
    {
        return $this->fecha;
    }

    public function setFecha(\DateTimeInterface $fecha): static
    {
        $this->fecha = $fecha;

        return $this;
    }

    public function getTotal(): ?float
    {
        return $this->total;
    }

    public function setTotal(float $total): static
    {
        $this->total = $total;

        return $this;
    }

        /**
     * @return Collection<int, PedidoProducto>
     */
    public function getPedidoProductos(): Collection
    {
        return $this->pedidoProductos;
    }

    public function addPedidoProducto(PedidoProducto $pedidoProducto): self
    {
        if (!$this->pedidoProductos->contains($pedidoProducto)) {
            $this->pedidoProductos->add($pedidoProducto);
            $pedidoProducto->setPedido($this);
        }

        return $this;
    }

    public function removePedidoProducto(PedidoProducto $pedidoProducto): self
    {
        if ($this->pedidoProductos->removeElement($pedidoProducto)) {
            // set the owning side to null (unless already changed)
            if ($pedidoProducto->getPedido() === $this) {
                $pedidoProducto->setPedido(null);
            }
        }

        return $this;
    }



}
