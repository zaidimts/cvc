<?php 
if(session_status() == PHP_SESSION_NONE){
session_start();

}?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/css/style.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
      crossorigin="anonymous"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>CVC</title>
</head>
<header class="bg-secondaire">
 <nav class="navbar navbar-expand-lg bg-secondaire c-principal py-4">
       <a class="navbar-brand px-5" href="/index.php"
          ><img src="/assets/img/logo_1.png" height="70px" alt="logo du site"
        /></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <?php /*var_dump($_SESSION);*/ ?>
        <div class="collapse navbar-collapse" id="navbarNav">
         <ul class="navbar-nav m-0">
                <li class="nav-item px-5 active">
                    <a class="nav-link" href="/index.php">MODELE</a>
                </li>
                <li class="nav-item px-5">
                    <a class="nav-link" href="/views/voitures.php">NOS VOITURES</a>
                </li>
                <li class="nav-item px-5">
                    <a class="nav-link" href="#">CONTACT</a>
                </li>
                <?php if(!empty($_SESSION)) : ?>
                <li class="nav-item px-5">
                    <a class="nav-link" href="/views/deconnexion.php">DECONNEXION</a>
                </li>
                <?php else : ?>
                <li class="nav-item px-5">
                    <a class="nav-link" href="/views/connect.php">CONNEXION</a>
                </li>
                <?php endif; ?>
                    <?php if(isset($_SESSION['id_utilisateur'])&&($_SESSION['nom'] == "Azerty")) :?>
                    <li class="nav-item">
                    <a class="nav-link" href="/views/display_car.php">Administartion</a>
                    </li>
                <?php endif; ?>
            </ul>
            <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2 rounded" type="search" placeholder="Search" aria-label="Search">
    </form>
        </div>
    </nav>
 </header>


<?php if(isset($_SESSION['flash'])): ?>

      <?php   foreach($_SESSION['flash'] as $type => $message) : 
        
        echo $message;
        
      endforeach;
    endif;


    if(isset($errors)) :
        foreach($errors as $error) :
            echo $error;
        endforeach;
    endif;
        ?>
