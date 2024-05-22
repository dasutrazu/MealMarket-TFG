<?php
namespace App\Controller;

use App\Entity\Opiniones;
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

use App\Entity\Producto;



class defaultController extends AbstractController{


    #[Route('/defaults', name: 'defaults')]
    public function defaults(EntityManagerInterface $entityManager){

        $productos= $entityManager->getRepository(Producto::class)->findAll();
        //var_dump($productos);
       return $this-> render('pagPrincipal.html.twig', ['prod' => $productos]);
    }


    #[Route('/mealmarket/{idProduct}', name: 'meal')]
    public function meal(EntityManagerInterface $entityManager, $idProduct, Request $request): Response
    {
        $productos = $entityManager->getRepository(Producto::class)->find($idProduct);
        $opiniones = $entityManager->getRepository(Opiniones::class)->findBy(['id_producto' => $idProduct]);

        dump($idProduct);
        return $this->render("productopag.html.twig", ['producto'=>$productos, 'opiniones'=>$opiniones]);
    }

   
 
}