<?php
namespace App\Controller;

use Exception;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;
use App\Controller\UserInterface;
//Para poder usar archivos
use Symfony\Component\Filesystem\Exception\IOExceptionInterface;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Filesystem\Path;

use App\Controller\JsonResponse;

use App\Entity\Productos;
class login extends AbstractController{


    #[Route('/login', name: 'login')]
    public function defaults(EntityManagerInterface $entityManager){

        $productos= $entityManager->getRepository(Productos::class)->findAll();
        //var_dump($productos);
       return $this-> render('login.html.twig');
    }
}