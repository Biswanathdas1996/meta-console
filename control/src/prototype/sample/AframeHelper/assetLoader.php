<a-assets>
             <!--src="<?php echo $get_shop_data[0]['shop_env_model']; ?>"-->
             <a-asset-item id="shop" src="../../common_models/shop_1.glb"></a-asset-item>
            <!-- <a-asset-item id="exit_door" src="../../common_models/exit_door.glb"></a-asset-item> -->
            <a-asset-item id="Stand" src="../../common_models/<?php echo $get_shop_data[0][
                'rack'
            ]; ?>"></a-asset-item>

            <img id="banner1" src="../../common_models/banners/<?php echo $get_shop_data[0][
                'right_wall_banner'
            ]; ?>">

            <img id="banner2" src="../../common_models/banners/<?php echo $get_shop_data[0][
                'left_wall_banner'
            ]; ?>">

            <!-- <a-asset-item id="banner2" src="../../common_models/banner2.glb"></a-asset-item> -->
            
             <!--<video id="video" autoplay loop="true" src="../../common_models/tropicana.mp4"></video>-->
             <!--<video id="video2" autoplay loop="true" src="../../common_models/wine.mp4"></video>-->
             <video id="video3" autoplay loop="true" src="../../common_models/videos/<?php echo $get_shop_data[0][
                 'wall_video'
             ]; ?>"></video>
            <?php foreach ($get_data as $key => $value) { ?>
               <a-asset-item id="<?php echo $value[
                   'tag'
               ]; ?>" src="models/<?php echo $value['glb_model']; ?>">
               </a-asset-item>
           <?php } ?>
           
         </a-assets>