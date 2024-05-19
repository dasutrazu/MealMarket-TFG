<?php

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface;

#[ORM\Entity(repositoryClass: UserRepository::class)]
class User implements UserInterface, PasswordAuthenticatedUserInterface
{
    /*  ATRIBUTOS   */
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id_user = null;

    #[ORM\Column(length: 255)]
    private ?string $nombreusuario = null;

    #[ORM\Column]
    private ?string $password = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $email = null;

    #[ORM\Column(nullable: true)]
    private ?int $puntos = null;

    #[ORM\Column(nullable: true)]
    private ?int $role = null;


    /* relaciones   */



    /*  metodos  */
    public function getIdUser(): ?string
    {
        return $this->id_user;
    }

    public function getNombreusuario(): ?string
    {
        return $this->nombreusuario;
    }

    public function setNombreusuario(string $nombreusuario): static
    {
        $this->nombreusuario = $nombreusuario;

        return $this;
    }

    public function getPassword(): string
    {
        return $this->password;
    }

    public function setPassword(string $password): static
    {
        $this->password = $password;

        return $this;
    }

    

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(?string $email): static
    {
        $this->email = $email;

        return $this;
    }

    public function getPuntos(): ?int
    {
        return $this->puntos;
    }

    public function setPuntos(?int $puntos): static
    {
        $this->puntos = $puntos;

        return $this;
    }

    public function getRole(): ?int
    {
        return $this->role;
    }

    public function setRole(?int $role): static
    {
        $this->role = $role;

        return $this;
    }


    
    //___________    UserInterface methods    _________________________________

    public function getUserIdentifier(): string{
        return $this->email;
    }
    public function eraseCredentials(): void{
        //$this->password = null;
    }
    public function getRoles(): array{
        /* role 0 for normal user, 1 form admins
           admins are also users */
        if($this->role == 0) {
            return  ["ROLE_USER"];
        }
        else if($this->role==1){
            return  ["ROLE_TEACHER"];
        }
        else if($this->role==2){
            return  ["ROLE_ADMIN"];
        }
        
        else{
        /* alternative to this: confure role hierarchy in securit.yaml*/
            return ["ROLE_USER", "ROLE_TEACHER", "ROLE_ADMIN"];
        }
    }
}

