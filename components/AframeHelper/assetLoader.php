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

            <?php if ($_GET['view'] === 'HD') { ?>
                <!-- <a-asset-item id="land_grass" src="assets/high_quality_glb/grass.glb"></a-asset-item> -->
                <a-asset-item id="grass_patches" src="assets/high_quality_glb/grass_patches.glb"></a-asset-item>
                <a-asset-item id="grass_variations" src="assets/high_quality_glb/low_poly_grass.glb"></a-asset-item>
                <a-asset-item id="maple_tree" src="assets/high_quality_glb/maple_tree.glb"></a-asset-item>
                <!-- <a-asset-item id="pine_tree" src="assets/high_quality_glb/pine_tree.glb"></a-asset-item> -->
                <a-asset-item id="huaranhuay" src="assets/high_quality_glb/tropical_plant_2.glb"></a-asset-item>
                <a-asset-item id="tropical_plants_pack_m02p" src="assets/high_quality_glb/tropical_plants_pack_m02p.glb"></a-asset-item>
                <a-asset-item id="redwood_trees" src="assets/high_quality_glb/redwood_trees.glb"></a-asset-item>
                <a-asset-item id="african_plain_trees" src="assets/high_quality_glb/african_plain_trees.glb"></a-asset-item>
                <a-asset-item id="tropical_plant" src="assets/high_quality_glb/tropical_plant.glb"></a-asset-item>
            <?php } ?>
</a-assets>

         