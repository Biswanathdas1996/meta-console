<?php
session_start();
include './Layout/AuthPageHeader.php';
?>
<body class="body_business_type">

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
</body>
