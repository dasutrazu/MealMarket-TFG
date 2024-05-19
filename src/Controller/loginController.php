<?php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\User;

//Para poder usar archivos
use Symfony\Component\Filesystem\Exception\IOExceptionInterface;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Filesystem\Path;
//correo
use Symfony\App\Controller\MailerInterface;
use App\Controller\JsonResponse;
use App\Entity\Producto;



class loginController extends AbstractController{
    

    #[Route('/login', name: 'login')]
    public function index(AuthenticationUtils $authenticationUtils): Response
    {
          // get the login error if there is one
          $error = $authenticationUtils->getLastAuthenticationError();
 
          // last username entered by the user
          $lastUsername = $authenticationUtils->getLastUsername();
 
          $user = $this->getUser();

        return $this->render('login.html.twig', [
              'controller_name' => 'LoginController',
              'last_username' => $lastUsername,
              'error'         => $error,
        ]);

    }

    #[Route('/registro', name: 'registro')]
    public function registro(Request $request,  EntityManagerInterface $entityManager,UserPasswordHasherInterface $passwordHasher): Response
    {
        if ($request->isMethod('POST')) {
          
                // Procesa los datos del formulario
                $email = $request->request->get('newEmail');
                $username = $request->request->get('newUser');
                $password = $request->request->get('newPassword');
                $puntos = 0;
                $role = 1; //Todos los users tienen rol 1 -- El admin rol 2
        
            // Crear una nueva instancia de la entidad Users
            $user = new User();
            $user->setEmail($email);
            $user->setNombreusuario($username);
            $user->setPassword($passwordHasher->hashPassword($user, $password));
            $user->setPuntos($puntos);
            $user->setRole($role);
  
             // Utilizar el nuevo método para codificar la contraseña
            $user->setPassword($passwordHasher->hashPassword($user, $password));
            $user->setRole($role);
    
            // Persistir el nuevo usuario en la base de datos
            $entityManager->persist($user);
            $entityManager->flush();
                // Redirige a otra página (por ejemplo, la página de inicio) o renderiza la misma página con un mensaje de éxito
                return $this->redirectToRoute('login');
        }

        return $this->render('registro.html.twig');

    }

    #[Route('/logout', name: 'logout')]
    public function logut()
        {
            return;
        }

}
