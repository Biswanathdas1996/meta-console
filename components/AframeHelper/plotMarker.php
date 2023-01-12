<?php foreach ($get_all_land_locations as $key => $land_val) { ?>
    <a-entity gltf-model="#rent_model" position="<?php echo $land_val[
        'position'
    ]; ?>" scale="60 120 60" ></a-entity>
    
<a-text 
         value="<?php echo $land_val['name']; ?>" 
         color="red" 
         position="<?php echo $land_val['marker_position']; ?>" 
         scale="7 7 7" 
         ></a-text>


 <?php } ?>
