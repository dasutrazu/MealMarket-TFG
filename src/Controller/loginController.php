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
// para poder enviar los correos
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use App\Controller\JsonResponse;
use App\Entity\Producto;



class loginController extends AbstractController{
    

    #[Route('/login', name: 'login')]
    public function index(AuthenticationUtils $authenticationUtils): Response
    {
           // Guarda el error si hay
          $error = $authenticationUtils->getLastAuthenticationError();
 
         // Guarda el último usuario introducido
          $lastUsername = $authenticationUtils->getLastUsername();
 
          $user = $this->getUser();

        return $this->render('login.html.twig', [
              'last_username' => $lastUsername,
              'error'         => $error,
        ]);

    }

    #[Route('/registro', name: 'registro')]
    public function registro(Request $request,  EntityManagerInterface $entityManager,UserPasswordHasherInterface $passwordHasher,MailerInterface $mailer): Response
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

            // Enviar correo electrónico instala =>composer require symfony/google-mailer
            $email = (new TemplatedEmail())
            ->from('cjldm2004@gmail.com') // se ecribe el correo de quien envia y en env se pone el mismo correo con la contraseña de aplicaciones externas
            ->to($user->getEmail())
            ->subject('Verificación de Correo Electrónico')
            ->html($this->renderView('correoBienvenida.html.twig', [ 'user' => $user])); //pasamos los parametros a la plantilla del correo

            $mailer->send($email);
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


/*

    ERROR AL ENVIAR EL EMAIL POR FALTA DE TABLA:
    - EJECUTAR ESTE COMANDO EN EL CMD: php bin/console messenger:setup-transports   --> Crea la tabla a partir de la cual se envian los emails en symfony



*/
