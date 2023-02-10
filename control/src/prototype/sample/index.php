<?php
include '../../src/config/includes.php';
echo Layout::APILayout();
include 'utils/dataSource.php';
?>
<html>
   <head>
        <?php include 'utils/cdn.php'; ?>
        <?php include 'utils/css.php'; ?>
        <script src="../../functions/buyNow.js"></script>
        <script src="../../functions/addToCart.js"></script>
        <script src="../../functions/cartModal.js"></script>
        <?php
        include 'utils/events.php';
        include '../../../config/api_endpoint.php';
        ?>
        <script>
            window.API_URL = "<?php echo $api_base_url; ?>"; 
        </script>

   </head>
   <body>
      <?php include 'components/cart_modal.php'; ?>
      <?php include 'components/description_modal.php'; ?>
      <a-scene>
            <?php
            include 'AframeHelper/assetLoader.php';
            include 'AframeHelper/environment.php';
            include 'AframeHelper/video.php';
            include 'AframeHelper/exit.php';
            include 'AframeHelper/stands.php';
            include 'AframeHelper/banners.php';
            include 'AframeHelper/products.php';
            include 'AframeHelper/camera.php';
            ?>
      </a-scene>
   </body>
</html>