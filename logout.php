<?php
session_unset();
session_destroy();
setcookie('PHPSESSID','',time() - 3600);
header("Location: public/index.php");
