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
      
      ?>
   </head>
   <body>
       <?php include './components/helpers/modals.php'; ?>
      <a-scene physics="gravity: 0">
         <?php include './components/AframeHelper/assetLoader.php'; ?>
         <?php include './components/AframeHelper/environment.php'; ?>
         <?php include './components/AframeHelper/plotMarker.php'; ?>
         <?php include './components/AframeHelper/shops.php'; ?>
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