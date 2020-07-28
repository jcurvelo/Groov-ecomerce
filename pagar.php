<?php
session_start();
require 'connection.php';

$precioTotal = $_POST['precioTotal'];
$sesion = $_POST['session_id'];
$id_user = $_POST['id_user'];
$fecha = date("Y-m-j");
$sql = "INSERT INTO facturas (`id_user`,`session_id`,`total`,`fecha`) VALUES ('$id_user','$sesion','$precioTotal','$fecha')";

echo $fecha;

$result = $conn->query($sql);
if(!$result){
    echo 'Error '.$conn->error;
}else{

    $delCarrito = "DELETE FROM carritos WHERE `session_id`='$sesion'";
    if($conn->query($delCarrito)){
        echo '<script>
            alert("Gracias por su compra");
            window.location = "public/store.php";
        </script>';
    }else{
        echo 'Error en '.$conn->error;
    }
}

