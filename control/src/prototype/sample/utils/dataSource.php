<?php

$folder_name = str_replace('_meta_product_table', '', $table_name);

$get_data = select($table_name, [
    'conditions' => [
        'status' => 0,
    ],
    'join' => [
        'shop_meta_products_loocation' => 'location_id',
    ],
]);

$get_shop_data = select('meta_shop_lists', [
    'conditions' => [
        'link' => $folder_name,
    ],
    'join' => [
        'land_locations' => 'land_locations_id',
    ],
]);

$url = url();
?>
