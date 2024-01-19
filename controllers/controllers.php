
<?php

class ControladorVotacion{

    /*=============================================
	LLAMAR TODAS LAS REGIONES
	=============================================*/
    static public function allRegionesCTR(){


        $respuesta = ModelVotacion::allRegionesMDL();
        
        echo ' <select class="form-control" onchange ="llenarComuna()" id="region">';
        echo'<option value="0">Seleccione Región</option>';
        foreach ($respuesta as $key => $value) {
            echo '<option value="'.$value['id'].'">'.$value[1].'</option>';
        }

        echo '</select>';
    }

    /*=============================================
	LLAMAR COMUNA X REGION
	=============================================*/
    static public function allComunaCTR($idRegion){


        $respuesta = ModelVotacion::allComunaMDL($idRegion);
        
        echo '<select class="form-control" id="comuna">';
        echo'<option value="0">Seleccione Comuna</option>';
        foreach ($respuesta as $key => $value) {
            echo '<option value="'.$value['id'].'">'.$value['nombre'].'</option>';
        }

        echo '</select>';
    }

    
    /*=============================================
	LLAMAR TODOS LOS CANDIDATOS
	=============================================*/
    static public function allCandidatoCTR(){


        $respuesta = ModelVotacion::allCandidatoMDL();
        
        echo '<select class="form-control" id="candidato">';
        echo'<option value="0">Seleccione Candidato</option>';
        foreach ($respuesta as $key => $value) {
            echo '<option value="'.$value['id'].'">'.$value['candidato'].'</option>';
        }

        echo '</select>';
    }

    static public function insertarVotacionCTR($dataString){

        $respuesta = ModelVotacion::insertarVotacionMDL($dataString);
    
        echo $respuesta;

        
    }
 
}