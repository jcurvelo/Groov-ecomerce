<?php
session_unset();
session_destroy();
setcookie("Usuario", "",time() - 3600);

header("Location: index.html");
