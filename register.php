<?php
session_start();
include './db/query.php';
if ($_POST) {
    $data = [
        'data' => [
            'industry' => $_POST['industry'],
            'name' => $_POST['name'],
            'address' => $_POST['address'],
            'username' => $_POST['username'],
            'password' => $_POST['password'],
        ],
    ];
    $insert_data = insert('business', $data);
    $get_data = select('business', [
        'conditions' => [
            'id' => $insert_data,
        ],
    ]);

    $_SESSION['user'] = $get_data;
    header('Location: business_type.php');
    die();
}
include './Layout/AuthPageHeader.php';
?>
<div class="container-fluid back-g-register" >
   <div class="row">
      <div class="col-md-4 col-sm-4">
         <section class="people ml-5 Rectangle-242" style="width: 30rem;">
            <section class="w3l-team-block">
               <!-- //people cards style 1 -->
                  <div class="text-primary mb-2">
                     <h5>Register your business</h5>
                  </div>
                        <form action="" method="POST" enctype="multipart/form-data" class="mb-1">
                           <div class="form-group">
                              <label for="sel1" class="form-label">Industry</label>
                              <select class="form-control" id="sel1" name="industry">
                                 <option >---select Industry ---</option>
                                 <option value="Retail">Retail</option>
                                 <option value="Pharma">Pharma</option>
                                 <option value="FMCG">FMCG</option>
                                 <option value="Clothing">Clothing</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <!--<label for="pwd">Business Name</label>-->
                              <input type="text" class="form-control"  placeholder="Business Name" name="name">
                           </div>
                           <div class="form-group">
                              <!--<label for="pwd">Address</label>-->
                              <input type="text" class="form-control"  placeholder="Address" name="address">
                           </div>
                           <div class="form-group">
                              <!--<label for="pwd">Username</label>-->
                              <input type="text" name="username"  class="form-control"  placeholder="Username" >
                           </div>
                           <div class="form-group">
                              <!--<label for="pwd">Password</label>-->
                              <input type="password" class="form-control"  placeholder="Password" name="password" value="5 5 5">
                           </div>
                           <button type="submit" class="btn btn-primary btn-lg" style="width:100%;">Register</button>
                        </form>
                        Already registered? <a href="login.php"> Log in from here</a>
            </section>
         </section>
      </div>
      <div class="col-md-6"></div>
   </div>
</div>
<?php include './footer.php'; ?>
