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
    // Click through auth for demo only
    if ($get_data) {
        $_SESSION['user'] = $get_data;
        header('Location: dashboard.php');
        die();
    } else {
        pr('Wrong username/passsword');
    }
}

include './Layout/AuthPageHeader.php';
?>

<div class="container-fluid" >
    <div class="row">
        <div class="col-md-6">
            <section class="people ml-5 Rectangle-242" style="width: 30rem;">
                <section class="w3l-team-block">
                    <!-- //people cards style 1 -->
                    <div >
                        <div class="text-primary mb-4">
                            <h3>Login</h3>
                        </div>
                        <div class="">
                            <form action="" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                  <!--<label for="pwd">Username</label>-->
                                  <input type="text" name="username"  class="form-control"  placeholder="Enter username" >
                                </div>
                                <div class="form-group">
                                  <!--<label for="pwd">Password</label>-->
                                  <input type="password" class="form-control"  placeholder="Enter password" name="password" value="5 5 5">
                                </div>
                                <button type="submit" class="btn btn-primary btn-lg" style="width:100%;">Log in</button>
                             </form>
                          <br/>
                          Do not have account? <a href="register.php"> Register from here</a>
                        </div>
                    </div>
                </section>
            </section>
        </div>
        <div class="col-md-6"></div>
    </div>
</div>
<?php include './footer.php'; ?>

