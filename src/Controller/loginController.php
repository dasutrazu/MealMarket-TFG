<?php
namespace App\Controller;

use Exception;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\PasswordHasher\UserPasswordHasherInterface;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;
use App\Controller\UserInterface;
//Para poder usar archivos
use Symfony\Component\Filesystem\Exception\IOExceptionInterface;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Filesystem\Path;
//correo
use Symfony\App\Controller\MailerInterface;

use App\Controller\JsonResponse;

use App\Entity\Productos;
use App\Entity\User;
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
    public function registro(Request $request, /* UserPasswordHasherInterface $passwordHasher, */ EntityManagerInterface $entityManager/* , MailerInterface $mailer */): Response
    {
        if ($request->isMethod('POST')) {
            $email = $request->request->get('newEmail');
            $username = $request->request->get('newUser');
            $password = $request->request->get('newPassword');
            $role = $request->request->get('newRole');
    
            $user = new User();
            $user->setEmail($email);
            $user->setNombreusuario($username);
            //$user->setPassword($passwordHasher->hashPassword($user, $password));
            $user->setRole($role);
    
            //$activationToken = md5(uniqid());
            //$user->setToken($activationToken); // Mover esta línea antes de persistir el usuario
    
            $entityManager->persist($user);
            $entityManager->flush();
    
            // Enviar correo electrónico con el enlace de activación
           // $email = (new TemplatedEmail())
               /*  ->from('') //correo q se va a usar para mandar el mensaje
                ->to($user->getEmail())
                ->subject('Verificación de Correo Electrónico')
                ->html($this->renderView('registrerExit.html.twig', ['token' => $activationToken, 'user' => $user]));
    
            $mailer->send($email); */
    
            // Redirigir a otra página después del registro (puedes ajustar la ruta según tus necesidades)
            //return $this->redirectToRoute('login');
        return $this->render('registro.html.twig');
    }
    return $this->render('registro.html.twig');

}



}
