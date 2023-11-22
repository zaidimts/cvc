<?php

// Définition de l'espace de noms (namespace) pour la classe Controller.
namespace Controllers;

// Déclaration de la classe abstraite Controller.
abstract class Controller {

    // Propriété protégée pour stocker une instance du modèle associé.
    protected $model;

    // Propriété protégée pour stocker le nom de la classe du modèle associé (à définir dans les classes dérivées).
    protected $modelName;

    // Constructeur de la classe Controller.
    public function __construct() {
        // Création d'une instance du modèle associé en utilisant le nom de classe spécifié dans $modelName.
        $this->model = new $this->modelName();
    }

    
}


?>