<?php
session_start();

$mensaje ="";
if(isset($_POST['btnAccion'])){
    switch($_POST['btnAccion']){
        case 'Agregar':
        if(is_numeric( openssl_decrypt($_POST['id'],Cod,Key))){
            $id= openssl_decrypt($_POST['id'],Cod,Key);
            $mensaje.="Todo Correcto".$id."<br/>";
        }
        else{
            $mensaje="Ups... Algo salio Mal".$id."<br/>";
        }
        if(is_string( openssl_decrypt($_POST['name'],Cod,Key))){
            $Nombre= openssl_decrypt($_POST['name'],Cod,Key);
            $mensaje="Ok Nombre".$Nombre."<br/>";
        }else{
            $mensaje.= "Algo fallo con el nombre"."<br/>"; break;
        }
        if(is_string( openssl_decrypt($_POST['cantidad'],Cod,Key))){
            $cant= openssl_decrypt($_POST['cantidad'],Cod,Key);
            $mensaje="Ok Cantidad".$cant;
        }else{
            $mensaje.= "Algo fallo con la cantiad"."<br/>"; break;
        }
        if(is_string( openssl_decrypt($_POST['price'],Cod,Key))){
            $precio= openssl_decrypt($_POST['price'],Cod,Key);
            $mensaje="Costo en Moneda Nacional Mexicana".$precio;
        }else{
            $mensaje.= "Algo fallo con el precio"."<br/>"; break ;
        }
//Informacion de sesion
        if(!isset($_SESSION['CARRITO'])){
            $PRODUCTO=array(
                'id' =>$id,
                'name' =>$Nombre,
                'cantidad' => $cant,
                'price' =>$precio,
            );
            $_SESSION['CARRITO'][0] = $PRODUCTO;
            $mensaje= "Producto agregado al carrito";
        }
        else{
$idProducto=array_column($_SESSION['CARRITO'],"id");
if(in_array($id,$idProducto)){
    echo "<script>alert('El producto ya a sido seleccionado')</script>";
}else{

            $numeroProductos=count($_SESSION['CARRITO']);
            $PRODUCTO=array(
                'id' =>$id,
                'name' =>$Nombre,
                'cantidad' => $cant,
                'price' =>$precio,
            );
            $_SESSION['CARRITO'][$numeroProductos] = $PRODUCTO;
            $mensaje= "Producto agregado al carrito";
        }
}
        //$mensaje=print_r($_SESSION,true);
        
        break;

        case "Eliminar":
        if(is_numeric( openssl_decrypt($_POST['id'],Cod,Key))){
            $id= openssl_decrypt($_POST['id'],Cod,Key);
            
            foreach($_SESSION['CARRITO'] as $indice=>$PRODUCTO){
                if($PRODUCTO['id']==$id){
                    unset($_SESSION['CARRITO'][$indice]);
                    echo"<script>alert('Elemento borrado del carrito');</script>";
                }
            }
        }
        else{
            $mensaje="Ups... Algo salio Mal".$id."<br/>";
        }
        break;
    }
}
?>