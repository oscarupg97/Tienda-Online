<?php
$servidor ="mysql:dbname=".DataBase.";host=".Server;
try{
 $pdo = new PDO($servidor,User,Password,
 array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8")
);
//echo "<script>alert('Conectando...:')</script>";
}catch(PDOException $e){
    //echo "<script>alert('Error de Conexion...:')</script>";
}
?>