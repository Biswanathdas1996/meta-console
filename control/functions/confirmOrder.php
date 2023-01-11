<?php
include '../../config/query.php';

$get_data = select('shop_meta_products', [
    'conditions' => [
        'id' => $_GET['id'],
    ],
]);

$item_remain = $get_data[0]['qty'];

$data = [
    'data' => [
        'qty' => $item_remain - 1,
    ],
];
$update_data = update('shop_meta_products', $data, $_GET['id']);

// ret
