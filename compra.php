<?php
session_start();
require 'connection.php';

$id = $_SESSION['id_user'];
$session = $_COOKIE['PHPSESSID'];
$item = $_POST['producto'];

$sql = "INSERT INTO carritos (`user_id`,`session_id`,`id_item`) VALUES ('$id','$session','$item')";

echo $id." ".$session." ".$item;
$result = $conn->query($sql);

if(!$result){
    echo 'Error '.$conn->error;
}else{
    header('Location: public/store.php');
}