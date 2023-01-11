<?php
include '../../db/query.php';
date_default_timezone_set('Asia/Kolkata');
if ($_POST) {
    $data = [
        'data' => [
            'name' => $_POST['name'],
            'contact_no' => $_POST['contact_no'],
            'email' => $_POST['email'],
            'shop' => $_GET['shop'],
            'date' => date('m/d/Y h:i:s a', time()),
        ],
    ];
    $insert_data = insert('visitors_lead', $data);

    $getData = select('meta_shop_lists', [
        'conditions' => [
            'id' => $_GET['shop'],
        ],
    ]);
    array_push($getData[0], $_POST);
    echo json_encode($getData[0]);

    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json; charset=UTF-8');
    header('Access-Control-Allow-Methods: *');
    header('Access-Control-Max-Age: 3600');
    header(
        'Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With'
    );
}
