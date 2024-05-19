<?php

namespace App\Entity;

use App\Repository\PedidoRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PedidoRepository::class)]
class Pedido
{
    /*  ATRIBUTOS  */
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id_pedido = null;

    #[ORM\Column(nullable: true)]
    private ?int $id_user = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $fecha_pedido = null;

    #[ORM\Column]
    private ?int $estado = null;

    #[ORM\Column(type: Types::DECIMAL, precision: 10, scale: 2)]
    private ?float $total = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $direccion_envio = null;

    #[ORM\Column(length: 255)]
    private ?string $metodo_pago = null;

    /*  RELACIONES  */
    
    #[ORM\ManyToOne(targetEntity: User::class)]
    #[ORM\JoinColumn(nullable: false)]
    private ?User $user = null;

    /*  METODOS    */

    public function getId(): ?int
    {
        return $this->id_pedido;
    }

    public function getIdUser(): ?int
    {
        return $this->id_user;
    }

    public function setIdUser(?int $id_user): static
    {
        $this->id_user = $id_user;

        return $this;
    }

    public function getFechaPedido(): ?\DateTimeInterface
    {
        return $this->fecha_pedido;
    }

    public function setFechaPedido(\DateTimeInterface $fecha_pedido): static
    {
        $this->fecha_pedido = $fecha_pedido;

        return $this;
    }

    public function getEstado(): ?int
    {
        return $this->estado;
    }

    public function setEstado(int $estado): static
    {
        $this->estado = $estado;

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

    public function getDireccionEnvio(): ?string
    {
        return $this->direccion_envio;
    }

    public function setDireccionEnvio(string $direccion_envio): static
    {
        $this->direccion_envio = $direccion_envio;

        return $this;
    }

    public function getMetodoPago(): ?string
    {
        return $this->metodo_pago;
    }

    public function setMetodoPago(string $metodo_pago): static
    {
        $this->metodo_pago = $metodo_pago;

        return $this;
    }
}
