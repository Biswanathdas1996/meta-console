<?php
include '../../src/config/includes.php';
echo Layout::APILayout();
$product_id = $_GET['id'];
$delete_data = delete($table_name, [
    'id' => $product_id,
]);
header('Location: list.php');
die();
