<?php

$username = "root";
$password = "";
$server = "localhost";
$db = "groov-ecomerce";

$conn = new Mysqli($server,$username,$password,$db);

if(!$conn){
    die('Error de conexión');
}