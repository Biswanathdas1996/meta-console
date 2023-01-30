<?php
session_start();
include './db/query.php';
if ($_POST) {
    $data = [
        'data' => [
            'username' => $_POST['username'],
            'password' => $_POST['password'],
        ],
    ];
    $get_data = select('business', [
        'conditions' => [
            'username' => $_POST['username'],
            'password' => $_POST['password'],
        ],
    ]);
    if ($get_data) {
        $_SESSION['user'] = $get_data;
        header('Location: dashboard.php');
        die();
    } else {
        pr('Wrong username/passsword');
    }
}
?>

<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>MetsShop</title>
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
  <!-- google fonts -->
  <link href="//fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900&display=swap" rel="stylesheet">
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
<style>
body {
    background-image: url('assets/images/metaverse-2.png');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
  height: 100vh;
}
.Rectangle-242 {
    position: absolute;
    top: 100px;
    left: 80px;
    padding: 28px 62px 35px 55.4px;
    border-radius: 30px;
    box-shadow: 0 3px 6px 0 rgb(0 0 0 / 16%);
    background-color: #fff;
}
.form-control{
    
    padding: 12px !important;
    height: 53px;
    border-radius: 13px !important;
}
</style>
</head>

<div class="container" >
    <div class="row">
        <div class="col-md-12">
            <center>
                <h2 style="color: white;font-weight: bold;font-size: 40px;">
                    <br/>
                    <br/>
                    Choose business type
                </h2>
            </center>
        </div>
        <div class="col-md-4">
            <section class="people Rectangle-242" style="padding:0px;">
                <section class="w3l-team-block">
                <div class="card">
                    <img class="card-img-top" src="assets/images/meta-store-retail-architecture_dezeen_2364_col_hero.jpg" alt="Card image" style="height: 168px; width: 298px;">
                    <div class="card-body" style="padding:2rem;">
                       
                        <center>
                            <h4 class="card-title">Retail shop</h4>
                            <a href="dashboard.php" class="btn btn-primary" style="padding:10px;">Select</a>
                        </center>
                     
                    </div>
                </div>
                </section>
            </section>
        </div>
        <div class="col-md-4">
            <section class="people  Rectangle-242" style="padding:0px;">
                <section class="w3l-team-block">
                <div class="card">
                    <img class="card-img-top" src="assets/images/87547019.png" alt="Card image" style="height: 168px; width: 298px;">
                    <div class="card-body" style="padding:2rem;">
                        <center>
                            <h4 class="card-title">L&D Platform</h4>
                            <a href="#" class="btn btn-primary disabled" style="padding:10px;">Select</a>
                        </center>
                    </div>
                </div>
                </section>
            </section>
        </div>
        <div class="col-md-4">
            <section class="people  Rectangle-242" style="padding:0px;">
                <section class="w3l-team-block">
                <div class="card">
                    <img class="card-img-top" src="assets/images/real-estate-business-compressor.png" alt="Card image" style="height: 168px; width: 298px;">
                    <div class="card-body" style="padding:2rem;">
                        <center>
                            <h4 class="card-title">Real estate</h4>
                            <a href="#" class="btn btn-primary disabled" style="padding:10px;">Select</a>
                        </center>
                    </div>
                </div>
                </section>
            </section>
        </div>
       
    </div>



</div>
<?php include './footer.php'; ?>
