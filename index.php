<?php

include './db/query.php';
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

// pr($all_exit_positions);
// return;
?>
<html>
   <head>
      <script src="https://aframe.io/releases/1.3.0/aframe.min.js"></script>
      <script src="https://unpkg.com/aframe-environment-component@1.3.1/dist/aframe-environment-component.min.js"></script>
      <script src="https://gftruj.github.io/webzamples/aframe/controls/oculus-thumbstick-controls.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      <script src="https://unpkg.com/video.js/dist/video.js"></script>
      <script src="//cdn.dashjs.org/latest/dash.all.debug.js"></script>
      <script src="https://unpkg.com/videojs-contrib-dash/dist/videojs-dash.js"></script> 
      <link href="https://unpkg.com/video.js/dist/video-js.css" rel="stylesheet">
      <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
    
      

      
      <style>
         .loader {
         border: 3px solid #f3f3f3;
         border-radius: 50%;
         border-top: 3px solid #3498db;
         width: 20px;
         height: 20px;
         -webkit-animation: spin 2s linear infinite; /* Safari */
         animation: spin 2s linear infinite;
         }
         /* Safari */
         @-webkit-keyframes spin {
         0% { -webkit-transform: rotate(0deg); }
         100% { -webkit-transform: rotate(360deg); }
         }
         @keyframes spin {
         0% { transform: rotate(0deg); }
         100% { transform: rotate(360deg); }
         }
         
         .back-g {
              background-image: url('../../../assets/gifs/6201b4e82e1ed1bf64e0d9a8_metaverse brands copy.jpeg');
              background-repeat: no-repeat;
              background-attachment: fixed;
              background-size: 100% 100%;
   
            }
            .Rectangle-242 {
                /*position: absolute;*/
                top: 400px;
                /*left: 80px;*/
                padding: 50px;
                border-radius: 30px;
                box-shadow: 0 3px 6px 0 rgb(0 0 0 / 16%);
                background-color: #fff;
            }
            .form-control{
                
                padding: 12px !important;
                height: 53px;
                border-radius: 13px !important;
            }
            .info_ui{
                
                font-size: 30px !important;
                padding: 10px !important;
            
            }
      </style>
      <script>
        
        sessionStorage.clear();
      
      
         AFRAME.registerComponent("click-log", {
           init: function () {
             this.myFunction = async function (i) {
                
                 console.log("hi", i);
                 console.log("distance", i?.detail?.intersection?.distance);

                
                const visitor_data = localStorage.getItem('visitor_data');
                console.log("--visitor_data--",visitor_data)
                if(visitor_data){
                    const raw_visitor_data = JSON.parse(visitor_data);
                    console.log("--raw_visitor_data--",raw_visitor_data)
                    document.getElementById('name').value = raw_visitor_data?.name;
                    document.getElementById('email').value = raw_visitor_data?.email;
                    document.getElementById('contact').value = raw_visitor_data?.contact_no;
                  
                }
                
                
                
                 if(i?.detail?.intersection?.distance < 10 ){
                     console.log("path", i?.path[0]?.components);
                    const productId = i?.path[0]?.components['click-log']?.data;
                    console.log(productId);
                    camera.setAttribute('look-controls', { enabled: false })
                    document.getElementById('buttonModal').click()
                    document.getElementById('productid').value = productId;
                 }else{
                     
                     document.getElementById('camera_text').setAttribute('visible', true);
                     document.getElementById('camera_ring').setAttribute('visible', false);
                     setTimeout(()=>{
                         document.getElementById('camera_text').setAttribute('visible', false);
                         document.getElementById('camera_ring').setAttribute('visible', true);
                     },2000)
                    //  alert("come closer")
                 }
                 
                  
                  
             };
             this.el.addEventListener("click", this.myFunction);
           
           },
           remove: function () {
             this.el.removeEventListener("click", this.myFunction);
             camera.setAttribute('look-controls', { enabled: true })
           }
         });
         
         
         AFRAME.registerComponent("camera-listener", {
           init: function () {
             this.myFunction = async function (i) {
                
                 console.log("hi", i);
                 console.log("distance", i?.detail?.intersection?.distance);
                 
                const linkData = i?.path[1]?.components['camera-listener']?.data;
                console.log("-----linkData------>",linkData);
                    
                    
                 if(linkData && i?.detail?.intersection?.distance < 5 ){
                      window.location.href = `control/pages/${linkData}`
                 }

             };
             this.el.addEventListener("mouseenter", this.myFunction);
             this.el.addEventListener("mouseleave", this.myFunction);
           },
           remove: function () {
             this.el.removeEventListener("click", this.myFunction);
             camera.setAttribute('look-controls', { enabled: true })
           }
         });
         

         function submitForm(){
                  const productid = document.getElementById('productid').value;
                  const name = document.getElementById('name').value;
                  const email = document.getElementById('email').value;
                  const contact = document.getElementById('contact').value;
                    console.log("---->",name)
                    var formdata = new FormData();
                    formdata.append("name", name);
                    formdata.append("contact_no", contact);
                    formdata.append("email", email);
                    
                    var requestOptions = {
                      method: 'POST',
                      body: formdata,
                      redirect: 'follow'
                    };

                    fetch(`control/api/visitor_lead.php?shop=${productid}`, requestOptions)
                      .then(response => response.json())
                      .then(result => {
                          console.log(result)
                          localStorage.setItem("visitor_data", JSON.stringify(result[0]));
                          window.location.href = `control/pages/${result?.link}`
                          
                      })
                      .catch(error => console.log('error', error));    
         }
         
         function closeModal (){
           camera.setAttribute('look-controls', { enabled: true })
         }
         
         function moveToLoocation (address){
             const camera = document.getElementById('camera');
            camera.setAttribute('position', address) 
         }
         
      </script>
   </head>
   <body>
       
            <!-- --------------------------------taleport modal --------------------- -->
      <div class="hidden-xs" style='position: fixed; top: 10px; width:100%; text-align: right; z-index: 1;'>
          <!--<a href="../../../dashboard.php">-->
          <!--   <button type="button" class="btn btn-primary btn-lg" style="margin-right:20px;" >-->
          <!--      <span class="glyphicon glyphicon-user"></span>&nbsp;-->
          <!--  </button>-->
          <!--</a>-->
          <!--<a href="list.php">-->
          <!--   <button type="button" class="btn btn-info btn-lg" style="margin-right:20px;" >-->
          <!--      <span class="glyphicon glyphicon-cog"></span>&nbsp;-->
          <!--  </button>-->
          <!--</a>-->
         <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#taleportModal" style="margin-right:20px;" >
         <span class="glyphicon glyphicon-screenshot"></span>&nbsp;
         </button>
      </div>
      <div class="modal " id="taleportModal" role="dialog">
         <div class="modal-dialog">
 
            <div class="modal-content" style="background-color: #555555d4;">
               <div class="modal-body">
                
                <div class="row">
                    
                    <?php foreach ($get_shops_data as $key => $value) { ?>
                    
                    <div class="col-sm-4 col-md-4 col-lg-4" style="cursor: pointer;" > 
                        <div class="well"  onclick="moveToLoocation('<?php echo $value[
                            'land_locations'
                        ][
                            'on_exit_camers_position'
                        ]; ?>')" style="font-weight:bold;">
                            <div class="card-body"><?php echo $value[
                                'name'
                            ]; ?></div>
                          </div>
                    </div>
         <?php } ?>            
                    
                </div>
               </div>
               <div class="modal-footer" id="modalFooter">
                  
                  <button type="button" class="btn btn-default" data-dismiss="modal" onclick="closeModal()">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- --------------------------------taleport modal --------------------- -->
<button id="buttonModal" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"
         style="display: none;">Open Modal</button>
      <div class="modal fade" id="myModal" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content" style="background-color: #555555d4;color: white;">
               <div class="modal-body back-g">
                  <center>
                      <h2 id="shop_name">Want to get inside the shop?</h2>
                      <small>Please provide the details</small>
                     <h4 style=" margin-bottom: 25px; font-size: 12px;"><b style="color:#f9f7f5" id="description">
                        </b>
                     </h4>
                     <input type="hidden" class="form-control" name="productid" id="productid">
                      <div class="form-group" style="text-align: left;">
                        <!--<label for="name">Name:</label>-->
                        <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                      </div>
                      <div class="form-group" style="text-align: left;">
                        <!--<label for="email">Email address:</label>-->
                        <input type="email" class="form-control" id="email" placeholder="Email address">
                      </div>
                      <div class="form-group" style="text-align: left;">
                        <!--<label for="pwd">Contact no:</label>-->
                        <input type="number" class="form-control" id="contact" placeholder="Contact no">
                      </div>
                      <button type="button" onclick="submitForm()" class="btn btn-warning btn-lg" style="width:100%;">Enter Now</button>
                  </center>
               </div>
               <div class="modal-footer" id="modalFooter">
                  <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal" onclick="closeModal()">Close</button>
               </div>
            </div>
         </div>
      </div>
      
      
      <a-scene physics="gravity: 0">
         
         <a-entity light="type: ambient; color: #BBB"></a-entity>
         <!-- <a-entity light="type: directional; color: #FFF; intensity: 0.6" position="-0.5 1 1"></a-entity> -->
         <a-assets>
            <!--<a-asset-item id="shop" src="<?php echo $get_shop_data[0][
                'shop_env_model'
            ]; ?>"></a-asset-item>-->
            <a-asset-item id="town" src="control/common_models/town.glb"></a-asset-item>

            <?php foreach ($get_shops_data as $key => $value) { ?>
            <a-asset-item 
            id="<?php echo $value['name']; ?>" 
            src="control/common_models/thumb/<?php echo $value[
                'thumb_model'
            ]; ?>" 
            cube-env-map="reflectivity: 1;
                        materials: myPrimaryMaterial, myAccentMaterial;"
            ></a-asset-item>
            <?php } ?>
            <img id="skyTexture" src="assets/images/back-city.jpg">
         </a-assets>
         
         <a-entity gltf-model="#town" position="0 1 150" scale="50 50 50" ></a-entity>
         
         
         <!--default-->
         <!--groundColor: #523c60; groundColor2:#523c60;  dressingColor:#196F3D, skyType: atmosphere-->
         <a-entity environment="preset: forest; fog:0; " src="#skyTexture"  scale="10 10 10"></a-entity>
         <!-- <a-entity environment=" fog:0; " scale="10 10 10"></a-entity> -->
         <!-- <a-entity environment="preset: default; fog:0; groundColor: #d4c63d; groundColor2:#c7b437; dressingColor:#d4c63d"  scale="10 10 10"></a-entity> -->

         <a-sky src="#skyTexture" position="0 250 0"></a-sky>
        <?php foreach ($get_shops_data as $key => $value) { ?>
  
            <a-entity 
                id="shop_obj"
                gltf-model="#<?php echo $value['name']; ?>" 
                title="<?php echo $value['name']; ?>"
                position="<?php echo $value['land_locations']['position']; ?>" 
                scale="<?php echo $value['thumb_model_scale']; ?>" 
                rotation="<?php echo $value['thumb_model_rotation']; ?>"
                click-log="<?php echo $value['id']; ?>"
            ></a-entity>
  
 
       <?php if ($value['direct_entry'] == 1) { ?>
      
            <a-link 
             href="#" 
             position="<?php echo $value['land_locations'][
                 'link_door_position'
             ]; ?>" 
             on="collide"
             rotation="<?php echo $value['land_locations'][
                 'link_door_rotation'
             ]; ?>"
             image="control/common_models/link_thumb/<?php echo $value[
                 'land_locations'
             ]['link_door_thumb']; ?>"
             peekMode="true"
             
             camera-listener="<?php echo $value['link']; ?>"
         ></a-link>
        <?php } ?>   
         
         
         <a-text 
         value="<?php echo $value['name']; ?>" 
         color="<?php echo $value['land_locations']['shop_name_color']; ?>" 
         position="<?php echo $value['land_locations'][
             'shop_name_position'
         ]; ?>" 
         scale="<?php echo $value['land_locations']['shop_name_scale']; ?>" 
         rotation="<?php echo $value['land_locations'][
             'shop_name_rotation'
         ]; ?>"
         id="text_data"></a-text>

        <?php } ?> 
            
   
         
         <a-entity id="head"
            camera="near:0.01;"
            look-controls="pointerLockEnabled: false"
            position="0 1.65 0"
            wasd-controls="acceleration:20;"
            simple-navmesh-constraint="navmesh:.navmesh;fall:0.5;height:1.65;exclude:.navmesh-hole;"
        ></a-entity>
      
  
         <a-entity id="rig" movement-controls="constrainToNavMesh: true;" foo>
            <!--$camera_position -->
            <a-camera  
            id="camera" 
            position="<?php echo $camera_position; ?>" 
            look-controls="pointerLockEnabled: true" 
            limit-my-distance
            >
                
               <a-entity cursor="fuse: false; fuseTimeout: 500" position="0 0 -1"
                  geometry="primitive: ring; radiusInner: 0.02; radiusOuter: 0.03" material="color: red; shader: flat"  id="camera_ring">
               </a-entity>
            
               <a-text value="Get closer and click on the door" color="white" scale="0.2 0.2 0.2" position="0 0 -1" id="camera_text" visible="false"></a-text>
               
            </a-camera>
            <a-entity oculus-touch-controls="hand: left" ></a-entity>
            <a-entity oculus-touch-controls="hand: right" oculus-thumbstick-controls></a-entity>
         </a-entity>
         </a-entity>
      </a-scene>
      
      
   </body>
</html>