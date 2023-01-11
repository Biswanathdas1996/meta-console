<?php $table_name='1673347505_meta_product_table';?><?php include("../../src/config/includes.php"); echo Layout::APILayout();
 $folder_name = str_replace("_meta_product_table", "", $table_name);
 

 $get_data = select($table_name,[
               'conditions'=>array(
                               "status"=>0,
                           ),
                             'join' =>array(
                               'shop_meta_products_loocation'=>'location_id',
                           ),
           ]);
           
           

$get_shop_data = select('meta_shop_lists',[
            "conditions"=>[
                "link"=>$folder_name
                ],
            'join' =>array(
                'land_locations'=>'land_locations_id',
            ),
        ]);
        
     $url = url();
        
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
        
        <script src="../../functions/buyNow.js"></script>
        <script src="../../functions/addToCart.js"></script>
        <script src="../../functions/cartModal.js"></script>
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
      </style>
      
      
      
      
      <script>
       
        const cameraPosition = "<?php echo $get_shop_data[0]['land_locations']['on_exit_camers_position'];?>";
        console.log("cameraPosition-----------",cameraPosition)
         AFRAME.registerComponent("click-log", {
           init: function () {
             this.myFunction = async function (i) {
                 console.log("hi", i?.detail?.distance);
                 const productId = i?.path[0]?.components['click-log']?.data;
                 console.log(productId);
                 const url = "<?php echo   $url ;?>"
                 if (productId == "shopInside") {
                        if(cameraPosition){
                            window.location.href = `${url}meta-console/?camera_position=${cameraPosition}`
                        }else{
                            window.location.href = `${url}meta-console/`
                        }
                    
                 } else {
         
                   const addedProducts = sessionStorage.getItem("x-user-cart");
                   const toJsonCart = JSON.parse(addedProducts);
                   const checkCart = checkIfInCart(toJsonCart, productId)
                   const addToCartButton = document.getElementById("addToCartButton");
                   if (checkCart) {
                     addToCartButton.innerHTML = "Already in Cart";
                     addToCartButton.disabled = true
                   } else {
                     addToCartButton.innerHTML = "Add to cart";
                     addToCartButton.disabled = false
                   }
         
         
                    let clickedProduct
                    var requestOptions = {
                      method: 'GET',
                      redirect: 'follow'
                    };
                    
                   const tableName = "<?php echo $table_name; ?>";
                   await fetch(`${url}meta-console/control/api/GetAllProduct.php?table=${tableName}`, requestOptions)
                      .then(response => response.json())
                      .then(result => {
                          console.log(result)
                          
                         clickedProduct = result.find((data) => data.id == Number(productId))
                         
                      })
                      .catch(error => console.log('error', error));
         
                   
                   
                //   const productImag = document.getElementById('nftImg')
                //   productImag.src = clickedProduct?.image
                   const modalHeader = document.getElementById('modalHeader')
                   modalHeader.innerHTML = clickedProduct?.name
                   const priceElement = document.getElementById('priceElement')
                   priceElement.innerHTML = clickedProduct?.price
                   const description = document.getElementById('description')
                   description.innerHTML = `${clickedProduct?.desc}`
                   document.getElementById('buttonModal').click()
                   const buyNowButton = document.getElementById('buyNowButton')
                   buyNowButton.setAttribute('productId', Number(productId))
                   const camera = document.getElementById('camera');
                   camera.setAttribute('look-controls', { enabled: false })
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
                
               const url = "<?php echo   $url ;?>"
                 if(i?.detail?.intersection?.distance < 1 ){
                      window.location.href = `${url}meta-console/?camera_position=${cameraPosition}`
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
    
         
         function closeModal (){
           const buyNowButton = document.getElementById('buyNowButton')
           buyNowButton.innerHTML = "Buy Now"
           camera.setAttribute('look-controls', { enabled: true })
         }
         
         function moveToLoocation (address){
             const camera = document.getElementById('camera');
            camera.setAttribute('position', address) 
         }
         
         
        window.addEventListener('click', function () { 
            // document.querySelector('#video').play();
            // document.querySelector('#video2').play();
            document.querySelector('#video3').play();
        });

      </script>
   </head>
   <body>
      <button id="buttonModal" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"
         style="display: none;">Open Modal</button>
      <div class="modal fade" id="myModal" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content" style="background-color: #555555d4;color: white;">
               <div class="modal-body">
                  <center>
                     <!--<img id="nftImg" style="max-height: 280px;width: auto;border: 10px solid;border-radius: 5px;" />-->
                     <h4 class="modal-title" id="modalHeader" style=" font-weight: bold;margin-top: 15px;">Product Title</h4>
                     <h4 style=" margin-bottom: 25px;">
                        Price: 
                        <b style="color:#EB984E" id="priceElement">
                           <div class="loader"></div>
                        </b>
                        INR
                     </h4>
                     <h4 style=" margin-bottom: 25px; font-size: 12px;"><b style="color:#f9f7f5" id="description">
                        </b>
                     </h4>
                     <table class="table table-bordered" style="color: white;">
                        <tbody>
                           <tr>
                              <td>Quantity</td>
                              <td>1.5 L</td>
                           </tr>
                           <tr>
                              <td>Type</td>
                              <td>Herbs</td>
                           </tr>
                           <tr>
                              <td>Maximum Shelf Life</td>
                              <td>24 Months</td>
                           </tr>
                           <tr>
                              <td>Caloric Value</td>
                              <td>240 Cal/Kcal</td>
                           </tr>
                           <tr>
                              <td>Nutrient Content</td>
                              <td>
                                 Energy 402 kcal, Protein 8.3 g, Carbohydrate 68.7 g, Fat 10.5 g, Dietary Fibre 7.0 g
                              </td>
                           </tr>
                           <tr>
                              <td>Storage Instructions</td>
                              <td>
                                 Ambient Temperature. Store in a cool, hygienic & dry place. Do not Freeze. Do not expose product to sunlight.
                              </td>
                           </tr>
                        </tbody>
                     </table>
                     <a id="redirectLink" target="_blank" style="cursor: pointer;">
                     <button id="addToCartButton" type="button" class="btn btn-primary" style="padding: 12px;margin-right: 10px;" onclick="addToCart('<?php echo $table_name; ?>')">Add to cart</button>
                     </a>
                     <button type="button" class="btn btn-warning" id="buyNowButton" style="padding: 12px;" onclick="buyNow('<?php echo $table_name; ?>')">Buy Now </button>
                  </center>
               </div>
               <div class="modal-footer" id="modalFooter">
                  <button type="button" class="btn btn-default" data-dismiss="modal" onclick="closeModal()">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- --------------------------------cart modal --------------------- -->
      <div class="hidden-xs" style='position: fixed; top: 10px; width:100%; text-align: right; z-index: 1;'>
         <button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myCartModal" style="margin-right:20px;" onclick = "constructTable('#table')">
         <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;Cart
         </button>
      </div>
      <div class="modal " id="myCartModal" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content" >
               <div class="modal-body">
                  <center>
                     <div id="list-puntate">
                     </div>
                  </center>
                  <p style="text-align: end;margin: 15px;">Item Total: <b id="totalAmount"></b></p>
                  <p style="text-align: end;margin: 15px;">Tax: <b>0 INR</b></p>
                  <p style="text-align: end;margin: 15px;">Todays Total amount: <b id="totalAmount2"></b></p>
               </div>
               <div class="modal-footer" id="modalFooter">
                  <button type="button" class="btn btn-warning" id="cartCheckoutButton"
                     onclick="cartCheckout('<?php echo $table_name; ?>')">Checkout
                  </button>
                  <button type="button" class="btn btn-default" data-dismiss="modal" onclick="closeModal()">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- --------------------------------cart modal --------------------- -->

      
      <a-scene>
         <!--        gltf-model="dracoDecoderPath: https://www.gstatic.com/draco/v1/decoders/;-->
         <!--meshoptDecoderPath: https://unpkg.com/meshoptimizer@0.16.0/meshopt_decoder.js;" -->
         <a-entity light="type: ambient; color: #BBB"></a-entity>
         <!-- <a-entity light="type: directional; color: #FFF; intensity: 0.6" position="-0.5 1 1"></a-entity> -->
         <a-assets>
             
             <!--<a-asset-item -->
             <!--id="shop" -->
             <!--src="<?php echo $get_shop_data[0]['shop_env_model']; ?>"-->
             <!--></a-asset-item>-->
             <a-asset-item id="shop" src="../../common_models/shop_1.glb"></a-asset-item>
             
            <a-asset-item id="exit_door" src="../../common_models/exit_door.glb"></a-asset-item>
            
            
            <!--<a-asset-item id="Stand" src="../../common_models//Stand3.glb"></a-asset-item>-->
            <a-asset-item id="Stand" src="../../common_models/<?php echo $get_shop_data[0]['rack']?>"></a-asset-item>
            <a-asset-item id="banner1" src="../../common_models/banner1.glb"></a-asset-item>
            <a-asset-item id="banner2" src="../../common_models/banner2.glb"></a-asset-item>
            
             <!--<video id="video" autoplay loop="true" src="../../common_models/tropicana.mp4"></video>-->
             <!--<video id="video2" autoplay loop="true" src="../../common_models/wine.mp4"></video>-->
             
             <video id="video3" autoplay loop="true" src="../../common_models/videos/<?php echo $get_shop_data[0]['wall_video']; ?>"></video>
         
          
             <?php
            foreach($get_data as $key=> $value){ 
            ?>
                <a-asset-item id="<?php echo $value['tag']?>" src="models/<?php echo $value['glb_model']?>"></a-asset-item>
           <?php
                }
            ?>
             
             

      
         </a-assets>


            <!--<a-video src="#video" width="9" height="6" position="10.5 6.5 10" rotation="0 0 0"></a-video>-->
            <!--<a-video src="#video2" width="9" height="6" position="10.5 6.5 9.99" rotation="0 180 0"></a-video>-->
            <a-video src="#video3" width="14" height="8" position="16 5.7 -11.5" rotation="0 0 0"></a-video>
         <!--default-->
         <!--groundColor: #523c60; groundColor2:#523c60;  dressingColor:#196F3D, skyType: atmosphere-->
         <a-entity environment="fog:0; "  scale="0.3 0.3 0.3"></a-entity>
         

         
         
         
         <?php 
            for($i=0; $i < $get_shop_data[0]['stand_qty']; $i++){
                $stand_gap = $i * 10;
            ?>
                <a-entity gltf-model="#Stand" position="10.5 0 <?php echo $stand_gap;?>" scale="3 2 2"></a-entity>
            <?php }
         
         ?>
         <!--<a-entity gltf-model="#Stand" position="10.5 0 10" scale="3 2 2"></a-entity>-->
         <a-entity gltf-model="#shop" position="15 0.3 5" scale="15 15 30"></a-entity>
         <!--click-log="shopInside"-->
         
         <a-entity
             gltf-model="#exit_door" 
             position="21 0 29" 
             scale="15 15 30"  
             click-log="shopInside"
         ></a-entity>
         
         <a-text value="EXIT" color="red" position="23 6 24" scale="4 4 4"  rotation="0 180 0"></a-text>
         
         <a-link 
             href="#" 
             position="22 3 28" 
             on="collide"
             rotation="0 0 0"
             image="../../../assets/images/outside.png"
             peekMode="true"
             camera-listener
         ></a-link>
         
         
         
         <a-entity gltf-model="#banner1" position="28 3.5 11" scale="30 30 30" rotation="0 0 0" ></a-entity>
         <a-entity gltf-model="#banner2" position="2 4.5 4" scale="40 60 58" rotation="0 0 0" ></a-entity>
         
         
         
       <?php
            foreach($get_data as $key=> $value){ 
                for($i=1;$i<=$value['qty'];$i++){ 
                    
                        if($value['shop_meta_products_loocation']['position_x'] == null){
                            $x=$i+6;
                        }else{
                            $x = $value['shop_meta_products_loocation']['position_x']; 
                        }
                        if($value['shop_meta_products_loocation']['position_y'] == null){
                            $y=$i+6;
                        }else{
                            if($value['custom_position_vertical'] != NULL) {
                                 $y = $value['custom_position_vertical']; 
                            }else{
                                $y = $value['shop_meta_products_loocation']['position_y'];  
                            }
                        }   
                        if($value['shop_meta_products_loocation']['position_z'] == null){
                            $y=$i+6;
                        }else{
                            $z = $value['shop_meta_products_loocation']['position_z'];
                        }
                    
                  
                   
                $final_postion = $x." ".$y." ".$z;    
                        
                    ?>
         <a-entity 
            gltf-model="#<?php echo $value['tag']?>" 
            position="<?php echo $final_postion;?>" 
            scale="<?php echo $value['scale']?>" 
            rotation="<?php echo $value['rotation']?>" 
            click-log="<?php echo $value['id']?>"
            animation__mouseenter="property: position; to: <?php echo $x;?> <?php echo $value['shop_meta_products_loocation']['zoom_y'];?> <?php echo $value['shop_meta_products_loocation']['zoom_z'];?>; dur: 500;  startEvents: mouseenter; loop: false" 
            animation__mouseleave="property: position; to: <?php echo $x;?> <?php echo $y;?> <?php echo $z;?>; dur: 500;  startEvents: mouseleave; loop: false"
            ></a-entity>
         <?php  
            }  
            }
            ?>
            
            
        <a-entity id="rig">
            <a-camera  id="camera" position="24 3 18" look-controls="pointerLockEnabled: true" limit-my-distance>
                 <a-entity cursor="fuse: false; fuseTimeout: 500" position="0 0 -1"
               geometry="primitive: ring; radiusInner: 0.02; radiusOuter: 0.03" material="color: red; shader: flat">
            </a-entity>
            </a-camera>
            <a-entity oculus-touch-controls="hand: left" ></a-entity>
            <a-entity oculus-touch-controls="hand: right" oculus-thumbstick-controls></a-entity>
         </a-entity>


         </a-entity>
      </a-scene>
   </body>
   
   
   
   
      
</html>