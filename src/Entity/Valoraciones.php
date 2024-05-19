<?php

namespace App\Entity;

use App\Repository\ValoracionesRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ValoracionesRepository::class)]
class Valoraciones
{
       /*   ATRIBUTOS */
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id_val = null;

    #[ORM\Column]
    private ?int $id_producto = null;

    #[ORM\Column]
    private ?int $id_user = null;

    #[ORM\Column]
    private ?int $valoracion = null;

         /*     RELACIONES      */

        /*     METODOS      */
        
    public function getIdVal(): ?int
    {
        return $this->id_val;
    }

    public function setIdVal(int $id_val): static
    {
        $this->id_val = $id_val;

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

    public function getIdUser(): ?int
    {
        return $this->id_user;
    }

    public function setIdUser(int $id_user): static
    {
        $this->id_user = $id_user;

        return $this;
    }

    public function getValoracion(): ?int
    {
        return $this->valoracion;
    }

    public function setValoracion(int $valoracion): static
    {
        $this->valoracion = $valoracion;

        return $this;
    }
}
