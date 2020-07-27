<?php

require './connection.php';
$data = Array();

$itemsSQL = "SELECT * FROM items";
$usersSQL = "SELECT * FROM usuarios";

$result = $conn->query($itemsSQL);

while($row = $result->fetch_assoc()){
    $data['items'][] = $row;
}

$result = $conn->query($usersSQL);

while($row = $result->fetch_assoc()){
    $data['users'][] = $row;
}

echo json_encode($data);