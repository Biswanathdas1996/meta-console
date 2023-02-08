<?php
session_start();
include './db/query.php';

$user_data = $_SESSION['user'];

// pr($user_data);

if (!$_SESSION['user']) {
    header('Location: login.php');
    die();
}

$get_shop_data = select('meta_shop_lists', [
    'conditions' => [
        'user_id' => $user_data[0]['id'],
    ],
]);

// pr($get_shop_data);
?>

<?php include './header.php'; ?>



<div class="main-content">

  <!-- content -->
  <div class="container-fluid content-top-gap">


    <div class="welcome-msg pt-3 pb-4">
      <h1>Hi <span class="text-primary"><?php echo $user_data[0][
          'name'
      ]; ?> </span>, Welcome back</h1>
      <p><?php echo $user_data[0]['address']; ?></p>
    </div>


    <img src="assets/gifs/AdobeStock_468099360-1380x548.jpeg" width="100%"/>
    
    <!-- content block style 1-->
    <div class="card card_border p-lg-5 p-2 mb-2">
      <div class="card-body py-3 p-0">
        <div class="row">
          <div class="col-lg-6 align-self pr-lg-4">
            <h3 class="block__title mb-lg-4">Create a new shop on Metaverse</h3>
            <p class="mb-3">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusa ntium corrupti
              neque sunt labore veritatis. </p>
            <p class="mb-lg-5 mb-3">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusa ntium corrupti
              neque sunt
              praesentium aut, labore veritatis. Eaque, similique aspernatur. Perferendis doloremque ut
              praesentium vel voluptatum quasi dolor explicabo nobis ex?</p>
            <a href="create_shop.php">
                <button type="button" class="btn btn-primary btn-lg"><i class="fa fa-plus mr-2"></i> Create a new shop</button>
            </a> 
    
          </div>
          <div class="col-lg-6 pl-lg-4 mt-lg-0 mt-4">
            <img src="assets/images/safetynow_frame1-drib.gif" alt="" class="img-fluid rounded" height="100"/>
          </div>
        </div>
      </div>
    </div>
    <!-- //content block style 1-->



<br/>
<section class="people">
            <section class="w3l-team-block">
                <!-- //people cards style 1 -->
                <div class="card card_border mb-5">
                    <div class="cards__heading">
                        <h3>Shops</h3>
                    </div>
                    <div class="card-body">
      <div class="container">
      <div class="row">
      <?php foreach ($get_shop_data as $val) { ?>
    <div class="col-md-4" style="margin-bottom:20px;">
        <div class="card" >
            
            
                <div>
                  <center>
                    <model-viewer camera-controls alt="Model" src="control/common_models/thumb/<?php echo $val[
                        'thumb_model'
                    ]; ?>"
                      shadow-intensity="1" camera-controls touch-action="pan-y"
                      style="height:300px; width:100%;">
                    </model-viewer>
                  </center>
                </div>
                    
            <div class="card-body" style="background: #292a2d; border: none;margin:0px;">
                
              <h3 class="name-pos mb-0" ><a href="#"><?php echo $val[
                  'name'
              ]; ?></a></h3>
             <p class="card-text text-white">Some example text some example text. John Doe is an architect and engineer</p>
         
             <a href="control/pages/<?php echo $val[
                 'link'
             ]; ?>" target="_blank" > <button type="button" class="btn btn-primary btn-md mt-2"><i class="fa fa-eye mr-2"></i>&nbsp;View</button></a>
             <a href="control/pages/<?php echo $val['link'] .
                 '/list.php'; ?>" target="_blank" > <button type="button" class="btn btn-info btn-md mt-2"><i class="fa fa-cog mr-2"></i>&nbsp;Settings</button></a>
            </div>
          </div>
        
    </div>
    <?php } ?>
    
  </div>
</div>

</div>
</div>
</section>
</section>


</div>
</div>
<?php include './footer.php'; ?>
