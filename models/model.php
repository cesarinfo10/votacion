<?php

require_once "conexion.php";

class ModelVotacion
{

    /*=============================================
    LLAMAR TODAS LAS REGIONES
    =============================================*/
    static public function allRegionesMDL()
    {

        $sql = Conexion::conectar()->prepare("SELECT *FROM regiones_tbl");


        $sql->execute();

        return $sql->fetchAll();


    }

    /*=============================================
    LLAMAR COMUNA X REGION
    =============================================*/
    static public function allComunaMDL($idRegion)
    {

        $sql = Conexion::conectar()->prepare("SELECT *FROM comunas_tbl WHERE id_region = :id");

        $sql->bindParam(":id", $idRegion, PDO::PARAM_STR);

        $sql->execute();

        return $sql->fetchAll();

    }

    /*=============================================
    LLAMAR TODOS LOS CANDIDATOS
    =============================================*/
    static public function allCandidatoMDL()
    {

        $sql = Conexion::conectar()->prepare("SELECT *FROM candidato_tbl");


        $sql->execute();

        return $sql->fetchAll();


    }
    /*=============================================
INSERTAR DETALLE DE REPORTE USUARIO SOLUCION
=============================================*/
    static public function insertarVotacionMDL($dataString)
    {

        $nombre = $_POST['nombre'];
        $alias = $_POST['alias'];
        $rut = $_POST['rut'];
        $email = $_POST['email']; //
        $region = $_POST['region']; //
        $comuna = $_POST['comuna']; //
        $id_candidato = $_POST['id_candidato']; //
        $web = $_POST['web']; //
        $tv = $_POST['tv']; //
        $redes_soc = $_POST['redes_soc']; //
        $amigo = $_POST['amigo'];

        $sql = Conexion::conectar()->prepare("SELECT id FROM votante_tbl WHERE  rut = '$rut'");
        $sql->execute();
        $filas = $sql->fetchColumn();

        if ($filas == 0) {
            $stmt = Conexion::conectar()->prepare("INSERT INTO votante_tbl (nom_ap, alias, rut, email, region, 
        comuna, id_candidato, web, tv, redes_soc, amigo) VALUES (:nombre, :alias, :rut, :email, 
        :region, :comuna, :id_candidato, :web, :tv, :redes_soc, :amigo)");

            $stmt->bindParam(":nombre", $nombre, PDO::PARAM_STR);
            $stmt->bindParam(":alias", $alias, PDO::PARAM_STR);
            $stmt->bindParam(":rut", $rut, PDO::PARAM_STR);
            $stmt->bindParam(":email", $email, PDO::PARAM_STR);
            $stmt->bindParam(":region", $region, PDO::PARAM_STR);
            $stmt->bindParam(":comuna", $comuna, PDO::PARAM_STR);
            $stmt->bindParam(":id_candidato", $id_candidato, PDO::PARAM_STR);
            $stmt->bindParam(":web", $web, PDO::PARAM_STR);
            $stmt->bindParam(":tv", $tv, PDO::PARAM_STR);
            $stmt->bindParam(":redes_soc", $redes_soc, PDO::PARAM_STR);
            $stmt->bindParam(":amigo", $amigo, PDO::PARAM_STR);


            if ($stmt->execute()) {
                return "1";
            } else {

                return "2";

            }
        } else {
            echo 3;
        }

    }
}

