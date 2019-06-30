<?php
include 'global/config.php';
include 'carrito.php';
include 'templates/cabecera.php';
?>
<br>
<br>
<br>
<h3>Carrito de Compras</h3>
<?php if(!empty($_SESSION['CARRITO'])) {?>
<table class="table table-light table-bordered">
    <tbody>
        <tr>
            <th width="40%" class="text-center">Descripcion</th>
            <th width="15%" class="text-center">Cantidad</th>
            <th width="20%" class="text-center">Precio</th>
            <th width="20%" class="text-center">Total</th>
            <th width="5%" class="text-center">Eliminar</th>
        </tr>
        <?php $total=0; ?>
        <?php foreach($_SESSION['CARRITO'] as $indice=>$PRODUCTO){?>
        <tr>
            <td width="40%" class="text-center"><?php echo $PRODUCTO['name']?></td>
            <td width="15%" class="text-center"><?php echo $PRODUCTO['cantidad']?></td>
            <td width="20%" class="text-center"><?php echo $PRODUCTO['price'] ?></td>
            <td width="20%"class="text-center"><?php echo number_format($PRODUCTO['price']* $PRODUCTO['cantidad'],2); ?></td>
            <td width="5%">

                <form action="" method="post">
                    <input type="hidden" name="id" value="<?php echo openssl_encrypt ($PRODUCTO['id'],Cod,Key);?>">
                <button 
                class="btn btn-danger" 
                type="submit"
                name="btnAccion"
                value="Eliminar"
                >Eliminar</button>
                </form>
            </td>
        </tr>
        <?php $total=$total+($PRODUCTO['price']* $PRODUCTO['cantidad']); ?>
        <?php } ?>
        <tr>
            <td colspan="3" align="right"><h3>Total</h3></td>
            <td align="right"><h3><?php echo number_format($total ,2)?></h3></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="5">
                <form action="pagar.php" method="post">
                    <div class="alert alert-success" role="alert">
                <div class="form-group">
                    <label for="my-input">Correo de contacto:</label>
                    <input id="email" 
                    class="form-control" 
                    type="email" 
                    name="email"
                    placeholder="example@example.com"
                    required>
                </div>
                <small id="emailHelp" class="form-text text-muted">
                    Los libros se enviaran a este correo electronico.
                </small>
                </div>
                <button class="btn btn-primary btn-lg btn-block" type="submit" value="proceder" name="btnAccion">Pagar</button>
                </form>
            </td>
        </tr>
    </tbody>
</table>

<?php }else{ ?>
    <div class="alert alert-success">
    No has añadido productos en el carrito
    </div>
<?php }?>
<?php
include 'templates/pie.php';
?>