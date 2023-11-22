<?php

if(session_status() == PHP_SESSION_NONE){
session_start();

}

require_once 'controllers/Utilisateurcontroller.php';


$controller = new \Controllers\UtilisateurController();

$controller->index();