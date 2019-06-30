<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>
  <br>
    <br>
    <br>
<?php

if($_POST){
    $total=0;
    $Sid=session_id();
    $Correo=$_POST['email'];
    foreach($_SESSION['CARRITO'] as $indice=>$PRODUCTO){
      $total=$total+($PRODUCTO['price']*$PRODUCTO['cantidad']);
    }
$sentencia=$pdo->prepare("INSERT INTO `Ventas` (`id`, `ClaveTransaccion`, `DatosPayPal`, `Fecha`, `Total`, `Status`, `Correo`) 
VALUES (NULL, :ClaveTransaccion, '', NOW() , :Total , 'Pendiente', :Correo );");
$sentencia->bindParam(":ClaveTransaccion",$Sid);
$sentencia->bindParam(":Total",$total);
$sentencia->bindParam(":Correo",$Correo);
$sentencia->execute();
$idVenta=$pdo->lastInsertId();
foreach($_SESSION['CARRITO'] as $indice=>$PRODUCTO){

    $sentencia=$pdo->prepare("INSERT INTO `detalleventa` (`id`, `idVENTA`, `idPRODUCTO`, `PrecioUnitario`, `Cantidad`, `Descarga`) 
    VALUES (NULL, :idVENTA , :idPRODUCTO , :PrecioUnitario , :Cantidad, '0');");
    $sentencia->bindParam(":idVENTA",$idVenta);
    $sentencia->bindParam(":idPRODUCTO",$PRODUCTO['id']);
    $sentencia->bindParam(":PrecioUnitario",$PRODUCTO['price']);
    $sentencia->bindParam(":Cantidad",$PRODUCTO['cantidad']);
    $sentencia->execute();
}

    //echo "<h3>" .$total. "</h3>";
}
?>
<!-- Include the PayPal JavaScript SDK -->
<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD"></script>

<div class="jumbotron text-center">
    <h1 class="display-4">¡Paso Final!</h1>
    <hr class="my-4">
    <p class="lead">Estas a punto de realizar el pago con PayPal la cantidad de: 
    <h4> $ <?php echo number_format($total,0);?></h4>
    <div id="paypal-button-container">
    
</div>
    </p>
    <p>Los libors podran ser descargados una vez procesado el pago</p>
    <strong>Para aclaraciones, favor de ponerse en contacto con el administrador.</strong>
</div>


<script>
    // Render the PayPal button into #paypal-button-container
    paypal.Buttons({
        style: {
            layout: 'horizontal'
        }
    }).render('#paypal-button-container');
</script>

<?php
include 'templates/pie.php';
?>