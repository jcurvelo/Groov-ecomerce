<?php
require './connection.php';

$cliName = $_POST['client_name'];
$cliLastname = $_POST['client_lastname'];
$cliEmail = $_POST['client_email'];
$cliUsername = $_POST['username'];
$cliPassword = crypt($_POST['password'],'sha');


$insetSql = "INSERT INTO usuarios (nombre, apellido, email, username, password) VALUES ('$cliName','$cliLastname','$cliEmail','$cliUsername','$cliPassword')";

if(!$conn->query($insetSql)){
    die('Error al ingresar '.$conn->error);
}else{
    header('Location: public/login.html');
}