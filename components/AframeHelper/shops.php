<?php foreach ($get_shops_data as $key => $value) { ?>
  
  <a-entity 
      id="shop_obj"
      gltf-model="#<?php echo $value['name']; ?>" 
      title="<?php echo $value['name']; ?>"
      position="<?php echo $value['land_locations']['position']; ?>" 
      scale="<?php echo $value['thumb_model_scale']; ?>" 
      rotation="<?php echo $value['thumb_model_rotation']; ?>"
      click-log="<?php echo $value['id']; ?>"
  ></a-entity>


<?php if ($value['direct_entry'] == 1) { ?>

  <a-link 
   href="#" 
   position="<?php echo $value['land_locations']['link_door_position']; ?>" 
   on="collide"
   rotation="<?php echo $value['land_locations']['link_door_rotation']; ?>"
   image="control/common_models/link_thumb/<?php echo $value['land_locations'][
       'link_door_thumb'
   ]; ?>"
   peekMode="true"
   
   camera-listener="<?php echo $value['link']; ?>"
></a-link>
<?php } ?>   


<a-text 
value="<?php echo $value['name']; ?>" 
color="<?php echo $value['land_locations']['shop_name_color']; ?>" 
position="<?php echo $value['land_locations']['shop_name_position']; ?>" 
scale="<?php echo $value['land_locations']['shop_name_scale']; ?>" 
rotation="<?php echo $value['land_locations']['shop_name_rotation']; ?>"
id="text_data"></a-text>

<?php } ?> 