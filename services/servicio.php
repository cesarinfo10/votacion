<?php
require_once "../controllers/controllers.php";

require_once "../models/model.php";


if (isset($_GET['getAllRegion'])){

    $region= new ControladorVotacion();
    $region->allRegionesCTR();
    
    }


if (isset($_GET['consultaComunas'])){
    $idRegion= $_GET['idRegion'];

    $comuna= new ControladorVotacion();
    $comuna->allComunaCTR($idRegion);
        
    }

if (isset($_GET['getAllCandidatos'])){

    $candidato= new ControladorVotacion();
    $candidato->allCandidatoCTR();
        
}

if (isset($_GET['insertarVotacion'])){
    //header('Content-type: application/json');
    $postdata = file_get_contents("php://input");
    /*$request = json_decode($postdata);
    $datos = ($request);*/

    $insert= new ControladorVotacion();
    $insert->insertarVotacionCTR($postdata);
    
}