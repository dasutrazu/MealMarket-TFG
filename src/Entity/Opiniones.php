<?php

namespace App\Entity;

use App\Repository\OpinionesRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: OpinionesRepository::class)]
class Opiniones
{
        /*   ATRIBUTOS */
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id_opinion = null;

    #[ORM\Column(nullable: true)]
    private ?int $id_user = null;

    #[ORM\Column(nullable: true)]
    private ?int $id_producto = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $opinion = null;

    /*     METODOS      */

    public function getIdOpinion(): ?int
    {
        return $this->id_opinion;
    }

    public function setIdOpinion(int $id_opinion): static
    {
        $this->id_opinion = $id_opinion;

        return $this;
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

    public function getIdProducto(): ?int
    {
        return $this->id_producto;
    }

    public function setIdProducto(?int $id_producto): static
    {
        $this->id_producto = $id_producto;

        return $this;
    }

    public function getOpinion(): ?string
    {
        return $this->opinion;
    }

    public function setOpinion(?string $opinion): static
    {
        $this->opinion = $opinion;

        return $this;
    }
}
