<?php

// echo __DIR__.'\index.html';
$requests = $_SERVER['REQUEST_URI'];
$cpath = "/groovecomerce";

switch($requests){
    case $cpath.'/':
        header('Location: '.$cpath.'/index.html');
        die();
        break;
    case $cpath.'/login':
        header('Location: '.$cpath.'/login.html');
        die();
        break;
    default:
        header('Location: '.$cpath.'/Page_not_found.html');
        die();
        break;
}