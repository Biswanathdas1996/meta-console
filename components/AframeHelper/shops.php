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

<script>
        
        sessionStorage.clear();
      
       

      
         AFRAME.registerComponent("click-log", {
           init: function () {
             this.myFunction = async function (i) {
                
                 console.log("hi", i);
                 console.log("distance", i?.detail?.intersection?.distance);

                
                const visitor_data = localStorage.getItem('visitor_data');
                console.log("--visitor_data--",visitor_data)
                if(visitor_data){
                    const raw_visitor_data = JSON.parse(visitor_data);
                    console.log("--raw_visitor_data--",raw_visitor_data)
                    document.getElementById('name').value = raw_visitor_data?.name;
                    document.getElementById('email').value = raw_visitor_data?.email;
                    document.getElementById('contact').value = raw_visitor_data?.contact_no;
                  
                }
                
                
                
                 if(i?.detail?.intersection?.distance < 10 ){
                     console.log("path", i);
                    const productId = i?.srcElement?.components['click-log']?.data;
                    console.log(productId);
                    camera.setAttribute('look-controls', { enabled: false })
                    document.getElementById('buttonModal').click()
                    document.getElementById('productid').value = productId;
                 }else{
                     
                     document.getElementById('camera_text').setAttribute('visible', true);
                     document.getElementById('camera_ring').setAttribute('visible', false);
                     setTimeout(()=>{
                         document.getElementById('camera_text').setAttribute('visible', false);
                         document.getElementById('camera_ring').setAttribute('visible', true);
                     },2000)
                    //  alert("come closer")
                 }
                 
                  
                  
             };
             this.el.addEventListener("click", this.myFunction);
           
           },
           remove: function () {
             this.el.removeEventListener("click", this.myFunction);
             camera.setAttribute('look-controls', { enabled: true })
           }
         });
         
         
         AFRAME.registerComponent("camera-listener", {
           init: function () {
             this.myFunction = async function (i) {
                
                 console.log("hi", i);
                 console.log("distance", i?.detail?.intersection?.distance);
                 console.log("srcElement", i?.srcElement?.parentEl?.components['camera-listener']?.data);
                 
                const linkData = i?.srcElement?.parentEl?.components['camera-listener']?.data;
                console.log("-----linkData------>",linkData);
                    
                    
                 if(linkData && i?.detail?.intersection?.distance < 5 ){
                      window.location.href = `control/pages/${linkData}`
                 }

             };
             this.el.addEventListener("mouseenter", this.myFunction);
             this.el.addEventListener("mouseleave", this.myFunction);
           },
           remove: function () {
             this.el.removeEventListener("click", this.myFunction);
             camera.setAttribute('look-controls', { enabled: true })
           }
         });
         

         function submitForm(){
                  const productid = document.getElementById('productid').value;
                  const name = document.getElementById('name').value;
                  const email = document.getElementById('email').value;
                  const contact = document.getElementById('contact').value;
                    console.log("---->",name)
                    var formdata = new FormData();
                    formdata.append("name", name);
                    formdata.append("contact_no", contact);
                    formdata.append("email", email);
                    
                    var requestOptions = {
                      method: 'POST',
                      body: formdata,
                      redirect: 'follow'
                    }; 

                    fetch(`${window.API_URL}/visitor_lead.php?shop=${productid}`, requestOptions)
                      .then(response => response.json())
                      .then(result => {
                          console.log(result)
                          localStorage.setItem("visitor_data", JSON.stringify(result[0]));
                          window.location.href = `control/pages/${result?.link}`
                          
                      })
                      .catch(error => console.log('error', error));    
         }
         
         function closeModal (){
           camera.setAttribute('look-controls', { enabled: true })
         }
         
         function moveToLoocation (address){
             const camera = document.getElementById('camera');
            camera.setAttribute('position', address) 
         }
         
      </script>