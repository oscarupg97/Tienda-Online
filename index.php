<?php
include 'global/config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>
        <br>
        <br>
        <br>
        <div class="alert alert-success" role="alert"> 
  <?php
    echo($mensaje);
  ?>
  <a href="mostrarCarrito.php" class="badge badge-success"> Ver Carrito </a>
</div>
<div class="row">
    <?php
        $sentencia=$pdo->prepare("SELECT * FROM `productos`");
        $sentencia->execute();
        $listProducts=$sentencia->fetchAll(PDO::FETCH_ASSOC);
    ?>
    <?php foreach($listProducts as $producto){?>
    <div class="col-3">
        <div class="card"> 
            <img 
            title="<?php echo $producto['name'];?>"  
            alt="<?php echo $producto['name'];?>"
            class="card-img-top" 
            src="<?php echo $producto['image'];?>" 
            data-toggle="popover"
            data-trigger="hover"
            data-content="<?php echo $producto['description'];?>"
            height="400px"
            >
            <div class="card-body">
                <span><?php echo $producto['name'];?></span>
                <h5 class="card-title">$<?php echo $producto['price'];?></h5>
                <p class="card-text"></p>
                <form action="" method="post">
                    <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt ($producto['id'],Cod,Key);?>">
                    <input type="hidden" name="name" id="name" value="<?php echo openssl_encrypt ($producto['name'],Cod,Key);?>">
                    <input type="hidden" name="price" id="price" value="<?php echo openssl_encrypt ($producto['price'],Cod,Key);?>">
                    <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt (1,Cod,Key);?>">
                <button class= "btn btn-primary" name="btnAccion" value="Agregar" type="submit">Agregar al carrito</button>
                </form>
            </div>
        </div>
    </div>
   <?php }?>
</div>
<script>
$(function () {
  $('[data-toggle="popover"]').popover()
})
</script>
<?php
include 'templates/pie.php';
?>
