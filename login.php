<?php

require './connection.php';

$username = $_POST['username'];
$password = crypt($_POST['password'],'sha');

$loginSQL = "SELECT * FROM usuarios WHERE username='$username' AND password='$password'";

$result = $conn->query($loginSQL);

if(!$result){
    echo 'error '.$conn->error;
}

if($result->num_rows > 0){
    session_start();
    setcookie('Usuario',$username);
    header('Location: store.php');
}else{
    header('Location: login.html?err=1');
}
