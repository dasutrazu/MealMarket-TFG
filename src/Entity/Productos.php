<?php

namespace App\Entity;

use App\Repository\ProductosRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ProductosRepository::class)]
class Productos
{
    /*   ATRIBUTOS */
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $ID_prod = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $name = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $supermarket = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $category = null;

    #[ORM\Column(nullable: true)]
    private ?float $price = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $img = null;

    /*     METODOS      */

    public function getIDProd(): ?int
    {
        return $this->ID_prod;
    }

    public function setIDProd(?int $ID_prod): static
    {
        $this->ID_prod = $ID_prod;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getSupermarket(): ?string
    {
        return $this->supermarket;
    }

    public function setSupermarket(?string $supermarket): static
    {
        $this->supermarket = $supermarket;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(?float $price): static
    {
        $this->price = $price;

        return $this;
    }

    public function getImg(): ?string
    {
        return $this->img;
    }

    public function setImg(?string $img): static
    {
        $this->img = $img;

        return $this;
    }

    public function getCategory(): ?string
    {
        return $this->category;
    }

    public function setCategory(?string $category): static
    {
        $this->category = $category;

        return $this;
    }
}
