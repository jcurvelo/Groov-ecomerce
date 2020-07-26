<?php

// Archivo login

$username = $_POST['username'];
$password = crypt($_POST['password'],'sha');



echo $username.' '.$password;