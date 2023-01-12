<?php
$get_shops_data = select('meta_shop_lists', [
    'conditions' => [
        'status' => 1,
    ],
    'join' => [
        'land_locations' => 'land_locations_id',
    ],
]);
if ($_GET && $_GET['camera_position']) {
    $camera_position = str_replace('%20', ' ', $_GET['camera_position']);
} else {
    $camera_position = '50 3 95';
}

$all_exit_positions = [];
foreach ($get_shops_data as $key => $pos) {
    array_push(
        $all_exit_positions,
        $pos['land_locations']['on_exit_camers_position']
    );
}

$get_all_land_locations = select('land_locations');

// pr($get_all_land_locations);
// return;

?>
