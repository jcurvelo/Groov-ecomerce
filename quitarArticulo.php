<?php
session_start();
require 'connection.php';
$id_item = $_POST["id_item"];
$sql = "DELETE FROM carritos WHERE `id_item`='$id_item'";

$result = $conn->query($sql);

if(!$result){
    echo 'Error '.$conn->error;
}else{
    header("Location: public/carrito.php");
}

