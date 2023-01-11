<?php foreach ($get_data as $key => $value) {
    for ($i = 1; $i <= $value['qty']; $i++) {

        if ($value['shop_meta_products_loocation']['position_x'] == null) {
            $x = $i + 6;
        } else {
            $x = $value['shop_meta_products_loocation']['position_x'];
        }
        if ($value['shop_meta_products_loocation']['position_y'] == null) {
            $y = $i + 6;
        } else {
            if ($value['custom_position_vertical'] != null) {
                $y = $value['custom_position_vertical'];
            } else {
                $y = $value['shop_meta_products_loocation']['position_y'];
            }
        }
        if ($value['shop_meta_products_loocation']['position_z'] == null) {
            $y = $i + 6;
        } else {
            $z = $value['shop_meta_products_loocation']['position_z'];
        }

        $final_postion = $x . ' ' . $y . ' ' . $z;
        ?>
               <a-entity 
                  gltf-model="#<?php echo $value['tag']; ?>" 
                  position="<?php echo $final_postion; ?>" 
                  scale="<?php echo $value['scale']; ?>" 
                  rotation="<?php echo $value['rotation']; ?>" 
                  click-log="<?php echo $value['id']; ?>"
                  animation__mouseenter="property: position; to: <?php echo $x; ?> <?php echo $value[
     'shop_meta_products_loocation'
 ]['zoom_y']; ?> <?php echo $value['shop_meta_products_loocation'][
     'zoom_z'
 ]; ?>; dur: 500;  startEvents: mouseenter; loop: false" 
                  animation__mouseleave="property: position; to: <?php echo $x; ?> <?php echo $y; ?> <?php echo $z; ?>; dur: 500;  startEvents: mouseleave; loop: false"
               >
               </a-entity>
               <?php
    }
} ?>
