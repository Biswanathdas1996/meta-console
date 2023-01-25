<a-assets>
            <!--<a-asset-item id="shop" src="<?php echo $get_shop_data[0][
                'shop_env_model'
            ]; ?>"></a-asset-item>-->
            <a-asset-item id="town" src="control/common_models/town.glb"></a-asset-item>
            <a-asset-item id="rent_model" src="control/common_models/rent_model.glb"></a-asset-item>
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

         