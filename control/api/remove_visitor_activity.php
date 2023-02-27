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

    $delete_data = delete('active_visitors', [
        'visitor' => $getVisitorData[0]['id'],
    ]);

    echo json_encode('ok');

    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json; charset=UTF-8');
    header('Access-Control-Allow-Methods: *');
    header('Access-Control-Max-Age: 3600');
    header(
        'Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With'
    );
}
