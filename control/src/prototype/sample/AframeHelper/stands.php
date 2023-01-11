<?php for ($i = 0; $i < $get_shop_data[0]['stand_qty']; $i++) {
    $stand_gap = $i * 10; ?>
                <a-entity gltf-model="#Stand" position="10.5 0 <?php echo $stand_gap; ?>" scale="3 2 2"></a-entity>
            <?php
} ?>
