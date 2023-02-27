<?php
include './db/query.php';
include './components/utils/dataSource.php';
?>
<html>
   <head>
      <?php
      include './components/helpers/cdn.php';
      include './components/helpers/css.php';
      include './components/utils/events.php';
      include './config/api_endpoint.php';
      ?>
         <script>
            window.API_URL = "<?php echo $api_base_url; ?>"; 
         </script>
   </head>
   <body>
       <?php include './components/helpers/modals.php'; ?>
      <a-scene joystick vr-mode-ui="enabled: false">
         <?php
         include './components/AframeHelper/assetLoader.php';
         include './components/AframeHelper/environment.php';
         include './components/AframeHelper/plotMarker.php';
         include './components/AframeHelper/shops.php';
         ?>

         <?php if ($_GET && $_GET['view'] === 'HD') {
             include './components/AframeHelper/HD_ENV.php';
         } ?>

         <a-entity id="rig" movement-controls="constrainToNavMesh: true;" >
            <a-camera
               id="camera" 
               position="<?php if ($camera_position) {
                   echo $camera_position;
               } ?>" 
               look-controls="pointerLockEnabled: true" 
               ammo-body="type: dynamic;"
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
      
      <script type="text/javascript" src="./components/AframeHelper/VirtualJoyStick.js"></script>
   </body>
</html>