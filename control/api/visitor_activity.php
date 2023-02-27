<?php
include '../../db/query.php';
date_default_timezone_set('Asia/Kolkata');
if ($_POST) {
    $getVisitorData = select('visitors_lead', [
        'conditions' => [
            'name' => $_POST['name'],
            'contact_no' => $_POST['contact_no'],
        ],
    ]);

    $data = [
        'data' => [
            'visitor' => $getVisitorData[0]['id'],
            'shop' => $_GET['shop'],
            'time' => date('m/d/Y h:i:s a', time()),
        ],
    ];
    $insert_data = insert('active_visitors', $data);

    echo json_encode($insert_data);

    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json; charset=UTF-8');
    header('Access-Control-Allow-Methods: *');
    header('Access-Control-Max-Age: 3600');
    header(
        'Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With'
    );
}
