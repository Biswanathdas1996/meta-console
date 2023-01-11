<?php
include '../../src/config/includes.php';
echo Layout::APILayout();

function folder_exist($folder)
{
    // Get canonicalized absolute pathname
    $path = realpath($folder);
    // If it exist, check if it's a directory
    return ($path !== false and is_dir($path)) ? $path : false;
}

if ($_POST) {
    if ($_POST['name'] == 'Update') {
        $thumb_model = $_POST['thumb_model'];
        if ($_FILES['image']['error'] === 0) {
            $errors = [];
            $file_name = $_FILES['image']['name'];
            $file_size = $_FILES['image']['size'];
            $file_tmp = $_FILES['image']['tmp_name'];
            $file_type = $_FILES['image']['type'];
            $temp = explode('.', $_FILES['file']['name']);
            $file_data = round(microtime(true)) . '.' . 'glb';
            if (empty($errors) == true) {
                copy($file_tmp, '../../common_models/thumb/' . $file_data);
                $thumb_model = $file_data;
                echo 'Success model upload';
            } else {
                print_r($errors);
            }
        }

        $file_data_videos_name = $_POST['wall_video_name'];
        if ($_FILES['wall_video']['error'] === 0) {
            $errors = [];
            $file_name = $_FILES['wall_video']['name'];
            $file_size = $_FILES['wall_video']['size'];
            $file_tmp = $_FILES['wall_video']['tmp_name'];
            $file_type = $_FILES['wall_video']['type'];
            $temp = explode('.', $_FILES['file']['name']);
            $file_data_videos = round(microtime(true)) . '.' . 'mp4';
            if (empty($errors) == true) {
                copy(
                    $file_tmp,
                    '../../common_models/videos/' . $file_data_videos
                );
                $file_data_videos_name = $file_data_videos;
                echo 'Success model upload';
            } else {
                print_r($errors);
            }
        }

        $insert_shop_data = update(
            'meta_shop_lists',
            [
                'data' => [
                    'name' => $_POST['blank_name'],
                    'thumb_model' => $thumb_model,
                    // "shop"=> $_POST['shop_env_model'],
                    // "shop_env_model"=> $_POST['shop_env_model'],
                    'rack' => $_POST['rack'],
                    'stand_qty' => $_POST['stand_qty'],
                    'land_locations_id' => $_POST['position'],
                    'thumb_model_scale' => $_POST['thumb_model_scale'],
                    'thumb_model_rotation' => $_POST['thumb_model_rotation'],
                    'wall_video' => $file_data_videos_name,
                    'direct_entry' => $_POST['direct_entry'],
                ],
            ],
            $_POST['shop_id']
        );
        $shop_name_position_updated =
            $_POST['shop_name_position_X'] .
            ' ' .
            $_POST['shop_name_position_Y'] .
            ' ' .
            $_POST['shop_name_position_Z'];

        if ($_POST['prev_shop_position'] == $_POST['position']) {
            $update_location_data = update(
                'land_locations',
                [
                    'data' => [
                        'shop_name_position' => $shop_name_position_updated,
                        'position' => $_POST['shop_position'],
                        'on_exit_camers_position' =>
                            $_POST['on_exit_camers_position'],
                        'shop_name_rotation' => $_POST['shop_name_rotation'],
                        'shop_name_scale' => $_POST['shop_name_scale'],
                        'shop_name_color' => $_POST['shop_name_color'],
                        'link_door_position' => $_POST['link_door_position'],
                        'link_door_rotation' => $_POST['link_door_rotation'],
                    ],
                ],
                $_POST['position']
            );
        }
    } elseif ($_POST['status']) {
        $status = 1;
        if ($_POST['status'] != 'Publish shop') {
            $status = 0;
        }
        $update_publish_status = update(
            'meta_shop_lists',
            [
                'data' => [
                    'status' => $status,
                ],
            ],
            $_POST['shop_id']
        );
    }
}

$new_folder_name = str_replace('_meta_product_table', '', $table_name);
$get_data = select('meta_shop_lists', [
    'conditions' => [
        'link' => $new_folder_name,
    ],
    'join' => [
        'business' => 'user_id',
        'land_locations' => 'land_locations_id',
    ],
]);
$get_location = select('land_locations');
$shop_name_position = $get_data[0]['land_locations']['shop_name_position'];
$pieces = explode(' ', $shop_name_position);
$shop_name_position_X = $pieces['0'];
$shop_name_position_Y = $pieces['1'];
$shop_name_position_Z = $pieces['2'];
?>

<?php include '../../header.php'; ?>


<style>
.back-g {
  background-image: url('../../../assets/gifs/metaverse-shopping-1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
  height: 400px;
}
.Rectangle-242 {
    /*position: absolute;*/
    top: 300px;
    /*left: 80px;*/
   
    padding: 50px;
    border-radius: 30px;
    box-shadow: 0 3px 6px 0 rgb(0 0 0 / 16%);
    background-color: #fff;
}

.float{
	position:fixed;
	/*width:60px;*/
	/*height:60px;*/
	bottom:20px;
	right:10px;
	/*background-color:#0C9;*/
	color:#FFF;
	/*border-radius:50px;*/
	text-align:center;
	/*box-shadow: 2px 2px 3px #999;*/
}

.my-float{
	margin-top:22px;
}
</style>

<div class="main-content">
   <div class="container-fluid content-top-gap back-g mb-5">
      <section class="people">
         <section class="w3l-team-block ">
         
                  <!-- //people cards style 1 -->
                  <div class="mb-5">
                     <div class="cards__heading">
                        <h3>Settings</h3>
                     </div>
                     <div class="card-body">
                         
                        <div class="container login-container">
                           <div class="Rectangle-242 mt-5">
                                      
                                      <form class="idForm" method="POST" enctype="multipart/form-data" >
                                        <div style="text-align: right;">
                                          <input type="hidden" class="form-control" name="shop_id" value="<?php echo $get_data[0][
                                              'id'
                                          ]; ?>" />
                                          <?php if (
                                              $get_data[0]['status'] == 1
                                          ) { ?>
                                          <input type="submit"  class="btn btn-danger btn-lg btnSubmit" value="Un-Publish shop" name="status">
                                          <br/>
                                          <small>Shop is published, now visible on Metaverse</small>
                                          <?php } else { ?>
                                          <input type="submit"  class="btn btn-success btn-lg btnSubmit " value="Publish shop" name="status">
                                          <br/>
                                          <small>Shop is not visible on the Metaverse</small>
                                          <?php } ?>
                                        </div>
                           </form>
                                       
                                </div>
                                
                                
                                
                                
                                
                                
                                
                                
                           <form class="idForm" method="POST" enctype="multipart/form-data" >
                               <div class="Rectangle-242 mt-5">
                                   
                                   <input type="hidden" class="form-control" name="shop_id" value="<?php echo $get_data[0][
                                       'id'
                                   ]; ?>" />
                                      <div class="form-group my-5">
                                         <label for="exampleInputEmail1" class="input__label "><b>Shop name * </b></label>
                                         <input type="text" class="form-control" name="blank_name" placeholder="Enter shop name *"
                                            value="<?php echo $get_data[0][
                                                'name'
                                            ]; ?>" /> 
                                      </div>
                                      <label for="exampleInputEmail1" class="input__label "><b>Text Position on metaverce * </b></label>
                                      <div class="mb-5" style="display:flex;">
                                         <div class="form-group m-2">
                                            <label for="exampleInputEmail1" class="input__label ">X-Axis * </label>
                                            <input type="text" class="form-control" name="shop_name_position_X" placeholder="Enter shop name *"
                                               value="<?php echo $shop_name_position_X; ?>" /> 
                                         </div>
                                         <div class="form-group m-2">
                                            <label for="exampleInputEmail1" class="input__label ">Y-Axis  * </label>
                                            <input type="text" class="form-control" name="shop_name_position_Y" placeholder="Enter shop name *"
                                               value="<?php echo $shop_name_position_Y; ?>" /> 
                                         </div>
                                         <div class="form-group m-2">
                                            <label for="exampleInputEmail1" class="input__label ">Z-Axis  * </label>
                                            <input type="text" class="form-control" name="shop_name_position_Z" placeholder="Enter shop name *"
                                               value="<?php echo $shop_name_position_Z; ?>" /> 
                                         </div>
                                      </div>
                                      <div class="row">
                                      <div class="col-md-4 mt-5">
                                       <div class="form-group mt-3">
                                          <label for="exampleInputEmail1" class="input__label "><b>Shop name rotation * </b></label>
                                          <input type="text" class="form-control" name="shop_name_rotation" placeholder="Enter shop name rotation *"
                                             value="<?php echo $get_data[0][
                                                 'land_locations'
                                             ]['shop_name_rotation']; ?>" /> 
                                       </div>
                                    </div>
                                      <div class="col-md-4 mt-5">
                                       <div class="form-group mt-3">
                                          <label for="exampleInputEmail1" class="input__label "><b>Shop name scale * </b></label>
                                          <input type="text" class="form-control" name="shop_name_scale" placeholder="Enter shop name scale *"
                                             value="<?php echo $get_data[0][
                                                 'land_locations'
                                             ]['shop_name_scale']; ?>" /> 
                                       </div>
                                    </div>
                                      <div class="col-md-4 mt-5">
                                       <div class="form-group mt-3">
                                          <label for="exampleInputEmail1" class="input__label "><b>Shop name color * </b></label>
                                          <input type="text" class="form-control" name="shop_name_color" placeholder="Enter shop name color *"
                                             value="<?php echo $get_data[0][
                                                 'land_locations'
                                             ]['shop_name_color']; ?>" /> 
                                       </div>
                                    </div>
                                    </div>
                                           
                               </div>
                               <div class="Rectangle-242 mt-5">
                                   
                                    <div class="row">
                                      <div class="col-md-12 mt-3" >
                                       <div class="form-group">
                                          <label for="exampleInputEmail1" class="input__label"><b>Visitors lead</b></label>
                                          <select class="form-control" name="direct_entry">
                                             <option >---Select location---</option>
                                            
                                             <option value="1" <?php if (
                                                 $get_data[0]['direct_entry'] ==
                                                 1
                                             ) {
                                                 echo 'selected';
                                             } ?>>
                                                Do not ask visitors identity before entering the shop
                                             </option>
                                             <option value="0" <?php if (
                                                 $get_data[0]['direct_entry'] ==
                                                 0
                                             ) {
                                                 echo 'selected';
                                             } ?>>
                                                Ask visitors identity before entering the shop
                                             </option>
                                            
                                          </select>
                                          <input type="hidden" class="form-control" name="prev_shop_position" value="<?php echo $get_data[0][
                                              'land_locations_id'
                                          ]; ?>" /> 
                                       </div>
                                    </div>
                                    </div>
                                           
                               </div>
                              
                              <div class="Rectangle-242 mt-5">
                              
                                  
                                  <label for="exampleInputEmail1" class="input__label"><b>Choose shop model in metaverse *</b></label>
                                 <div class="row">
                                    <div class="col-md-4 " style="height:400px;">
                                       <div>
                                          <center>
                                             <model-viewer camera-controls alt="Model" src="../../common_models/thumb/shop_thumb_1.glb"
                                                shadow-intensity="1" camera-controls touch-action="pan-y"
                                                style="height:400px; width:100%; border:1px solid #80808038; border-radius: 30px;">
                                             </model-viewer>
                                          </center>
                                       </div>
                                       <div class="form-check mt-3">
                                          <input type="radio" class="form-check-input" id="radio1" name="thumb_model"
                                             value="shop_thumb_1.glb" <?php if (
                                                 $get_data[0]['thumb_model'] ==
                                                 'shop_thumb_1.glb'
                                             ) {
                                                 echo 'checked';
                                             } ?> />
                                          <label class="form-check-label" for="radio1">Model 1</label>
                                       </div>
                                    </div>
                                    <div class="col-md-4 " style="height:400px;">
                                       <div>
                                          <center>
                                             <model-viewer camera-controls alt="Model" src="../../common_models/thumb/shop_thumb_2.glb"
                                                shadow-intensity="1" camera-controls touch-action="pan-y"
                                                style="height:400px; width:100%; border:1px solid #80808038; border-radius: 30px;">
                                             </model-viewer>
                                          </center>
                                       </div>
                                       <div class="form-check mt-3">
                                          <input type="radio" class="form-check-input" id="radio2" name="thumb_model"
                                             value="shop_thumb_2.glb" <?php if (
                                                 $get_data[0]['thumb_model'] ==
                                                 'shop_thumb_2.glb'
                                             ) {
                                                 echo 'checked';
                                             } ?>/>
                                          <label class="form-check-label" for="radio2" >Model 2</label>
                                       </div>
                                    </div>
                                    <div class="col-md-4 " style="height:380px;">
                                       <div class="form-group mt-3" >
                                          <label for="pwd" class="mb-2">Upload your own shop model (.glb) <i class="fa fa-info-circle info_ui text-info" data-toggle="tooltip" data-placement="top" title="Select and upload the 3D model of the product"></i></label>
                                          <input type="file" name="image"  class="form-control"  placeholder="Select 3D Model" style="padding: 12px !important;height: 53px; width:90%">
                                       </div>
                                       <div>
                                          <center>
                                             <model-viewer camera-controls alt="Model" src="../../common_models/thumb/<?php echo $get_data[0][
                                                 'thumb_model'
                                             ]; ?>"
                                                shadow-intensity="1" camera-controls touch-action="pan-y"
                                                style="height:285px; width:100%; border:1px solid #80808038; border-radius: 30px;">
                                             </model-viewer>
                                             <input type="radio" class="form-check-input" id="radio2" name="thumb_model"
                                                value="<?php echo $get_data[0][
                                                    'thumb_model'
                                                ]; ?>" <?php if (
    $get_data[0]['thumb_model'] != 'shop_thumb_2.glb' &&
    $get_data[0]['thumb_model'] != 'shop_thumb_1.glb'
) {
    echo 'checked';
} ?>/>
                                             <label class="form-check-label" for="radio2" >Custom Model</label>
                                          </center>
                                       </div>
                                    </div>
                                    <div class="col-md-6 mt-5">
                                       <div class="form-group mt-3">
                                          <label for="exampleInputEmail1" class="input__label "><b>Shop ModeDimention scale * </b></label>
                                          <input type="text" class="form-control" name="thumb_model_scale" placeholder="Enter thumb model scale *"
                                             value="<?php echo $get_data[0][
                                                 'thumb_model_scale'
                                             ]; ?>" /> 
                                       </div>
                                    </div>
                                    <div class="col-md-6 mt-5">
                                       <div class="form-group mt-3">
                                          <label for="exampleInputEmail1" class="input__label "><b>Shop ModeDimention rotation * </b></label>
                                          <input type="text" class="form-control" name="thumb_model_rotation" placeholder="Enter thumb model rotation *"
                                             value="<?php echo $get_data[0][
                                                 'thumb_model_rotation'
                                             ]; ?>" /> 
                                       </div>
                                    </div>
                                    </div>
                                  
                              </div>
                            
                                <div class="Rectangle-242 mt-5">
                                      <div class="row">
                                      <!--// select rack-->
                                    <div class="col-md-12 mt-5">
                                       <label for="exampleInputEmail1" class="input__label mt-5"><b>Choose Type of Stand *</b></label>
                                    </div>
                                    <div class="col-md-4 mt-1" style="height:400px;">
                                       <div>
                                          <center>
                                             <model-viewer camera-controls alt="Model" src="../../common_models/Stand.glb"
                                                shadow-intensity="1" camera-controls touch-action="pan-y"
                                                style="height:300px; width:100%; border:1px solid #80808038; border-radius: 30px;">
                                             </model-viewer>
                                          </center>
                                       </div>
                                       <div class="form-check mt-3">
                                          <input type="radio" class="form-check-input" id="rack" name="rack"
                                             value="Stand.glb" <?php if (
                                                 $get_data[0]['rack'] ==
                                                 'Stand.glb'
                                             ) {
                                                 echo 'checked';
                                             } ?>>Stand 1
                                          <label class="form-check-label" for="rack"></label>
                                       </div>
                                    </div>
                                    <div class="col-md-4 mt-1" style="height:400px;">
                                       <div>
                                          <center>
                                             <model-viewer camera-controls alt="Model" src="../../common_models/Stand2.glb"
                                                shadow-intensity="1" camera-controls touch-action="pan-y"
                                                style="height:300px; width:100%; border:1px solid #80808038; border-radius: 30px;">
                                             </model-viewer>
                                          </center>
                                       </div>
                                       <div class="form-check mt-3">
                                          <input type="radio" class="form-check-input" id="rack" name="rack"
                                             value="Stand2.glb" <?php if (
                                                 $get_data[0]['rack'] ==
                                                 'Stand2.glb'
                                             ) {
                                                 echo 'checked';
                                             } ?>>Stand 2
                                          <label class="form-check-label" for="rack"></label>
                                       </div>
                                    </div>
                                    <div class="col-md-4 mt-1" style="height:400px;">
                                       <div>
                                          <center>
                                             <model-viewer camera-controls alt="Model" src="../../common_models/Stand3.glb"
                                                shadow-intensity="1" camera-controls touch-action="pan-y"
                                                style="height:300px; width:100%; border:1px solid #80808038; border-radius: 30px;">
                                             </model-viewer>
                                          </center>
                                       </div>
                                       <div class="form-check mt-3">
                                          <input type="radio" class="form-check-input" id="rack" name="rack"
                                             value="Stand3.glb" <?php if (
                                                 $get_data[0]['rack'] ==
                                                 'Stand3.glb'
                                             ) {
                                                 echo 'checked';
                                             } ?>>Stand 3
                                          <label class="form-check-label" for="rack"></label>
                                       </div>
                                    </div>
                                    <!----------------------------rack end      -->
                                    <div class="col-md-12 mt-3" >
                                       <div class="form-group">
                                          <label for="exampleInputEmail1" class="input__label"><b>No of Stands <small class="text-danger">(Max calibrated value is 2)</small></b></label>
                                          <input type="number" class="form-control" name="stand_qty" placeholder="Enter no of stand(s) *"
                                             value="<?php echo $get_data[0][
                                                 'stand_qty'
                                             ]; ?>" />
                                       </div>
                                    </div>
                                      </div> 
                                </div> 
                                <div class="Rectangle-242 mt-5">
                                      <div class="row">
                                      <div class="col-md-12 mt-3" >
                                       <div class="form-group">
                                          <label for="exampleInputEmail1" class="input__label"><b>Shop location on metaverse</b></label>
                                          <select class="form-control" name="position">
                                             <option >---Select location---</option>
                                             <?php foreach (
                                                 $get_location
                                                 as $key => $value
                                             ) { ?>
                                             <option value="<?php echo $value[
                                                 'id'
                                             ]; ?>" <?php if (
    $get_data[0]['land_locations_id'] == $value['id']
) {
    echo 'selected';
} ?>>
                                                <?php echo $value['name']; ?>
                                             </option>
                                             <?php } ?>
                                          </select>
                                          <input type="hidden" class="form-control" name="prev_shop_position" value="<?php echo $get_data[0][
                                              'land_locations_id'
                                          ]; ?>" /> 
                                       </div>
                                    </div>
                                    <div class="col-md-12 mt-3" style="display:flex;">
                                       <div class="form-group mr-5">
                                          <label for="exampleInputEmail1" class="input__label "><b>Shop position</b></label>
                                          
                                          <input type="text" class="form-control" name="shop_position" placeholder="Enter position *"
                                             value="<?php echo $get_data[0][
                                                 'land_locations'
                                             ]['position']; ?>" /> 
                                       </div>
                                       <div class="form-group mr-5">
                                          <label for="exampleInputEmail1" class="input__label "><b>On exit camers position</b></label>
                                          <input type="text" class="form-control" name="on_exit_camers_position" placeholder="Enter on_exit_camers_position *"
                                             value="<?php echo $get_data[0][
                                                 'land_locations'
                                             ][
                                                 'on_exit_camers_position'
                                             ]; ?>" /> 
                                       </div>
                                       
                                       
                                       <!--/////////////////////////////////////-->
                                       <div class="form-group mr-5">
                                          <label for="exampleInputEmail1" class="input__label "><b>Link door position</b></label>
                                          <input type="text" class="form-control" name="link_door_position" placeholder="Enter link_door_position *"
                                             value="<?php echo $get_data[0][
                                                 'land_locations'
                                             ]['link_door_position']; ?>" /> 
                                       </div>
                                       <div class="form-group mr-5">
                                          <label for="exampleInputEmail1" class="input__label "><b>Link door rotation</b></label>
                                          <input type="text" class="form-control" name="link_door_rotation" placeholder="Enter link_door_rotation *"
                                             value="<?php echo $get_data[0][
                                                 'land_locations'
                                             ]['link_door_rotation']; ?>" /> 
                                       </div>
                                       
                                       
                                       
                                       
                                    </div>
                                      </div> 
                                </div> 
                                 
                                <div class="Rectangle-242 mt-5">
                                      <div class="row">
                                      <div class="col-md-6 mt-3" >
                                       <div class="form-group mt-3" >
                                          <label for="exampleInputEmail1" class="input__label "><b>Upload wall advertisement video *</b></label>
                                          <input type="file" name="wall_video"  class="form-control"  placeholder="Select 3D Model" style="padding: 12px !important;height: 53px; width:90%">
                                          <input type="hidden" class="form-control" name="wall_video_name" value="<?php echo $get_data[0][
                                              'wall_video'
                                          ]; ?>" />
                                       </div>
                                    </div>
                                    <div class="col-md-6 mt-3" >
                                       <center>
                                          <video width="500" controls>
                                             <source src="../../common_models/videos/<?php echo $get_data[0][
                                                 'wall_video'
                                             ]; ?>" type="video/mp4">
                                             <source src="mov_bbb.ogg" type="video/ogg">
                                             Your browser does not support HTML video.
                                          </video>
                                       </center>
                                    </div>
                                      </div> 
                                </div> 
                                    
                                    <div class="float">
<!--<i class="fa fa-plus my-float btn btn-primary" type="submit"></i>-->
<input type="submit" class="btn btn-primary btn-lg btnSubmit mt-5  my-float" value="Update" name="name">
</div>

                               
                                 
                            
                           </form>
                        </div>
                     </div>
                  </div>
               
         </section>
      </section>
   </div>
</div>

</body>
</html>