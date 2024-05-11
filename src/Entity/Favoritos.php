<?php

namespace App\Entity;

use App\Repository\FavoritosRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: FavoritosRepository::class)]
class Favoritos
{
       /*   ATRIBUTOS */
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id_favoritos = null;

    #[ORM\Column]
    private ?int $id_user = null;

    #[ORM\Column]
    private ?int $id_producto = null;

    /*     METODOS      */
    
    public function getIdFavoritos(): ?int
    {
        return $this->id_favoritos;
    }

    public function setIdFavoritos(int $id_favoritos): static
    {
        $this->id_favoritos = $id_favoritos;

        return $this;
    }

    public function getIdUser(): ?int
    {
        return $this->id_user;
    }

    public function setIdUser(int $id_user): static
    {
        $this->id_user = $id_user;

        return $this;
    }

    public function getIdProducto(): ?int
    {
        return $this->id_producto;
    }

    public function setIdProducto(int $id_producto): static
    {
        $this->id_producto = $id_producto;

        return $this;
    }
}
