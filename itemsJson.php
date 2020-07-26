<?php

require './connection.php';

$selectSql = "SELECT * FROM items";
$result = $conn->query($selectSql);
$itemData = Array();
while($row = $result->fetch_assoc()){
    $itemData['items'][] = $row;
}

echo json_encode($itemData);