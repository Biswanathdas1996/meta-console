<script>
        const cameraPosition = "<?php echo $get_shop_data[0]['land_locations'][
            'on_exit_camers_position'
        ]; ?>";
        console.log("cameraPosition-----------",cameraPosition)
         AFRAME.registerComponent("click-log", {
           init: function () {
             this.myFunction = async function (i) {
                 console.log("hi", i?.detail?.distance);
                 const productId = i?.path[0]?.components['click-log']?.data;
                 console.log(productId);
                 const url = "<?php echo $url; ?>"
                 if (productId == "shopInside") {
                        if(cameraPosition){
                            window.location.href = `${url}meta-console/?camera_position=${cameraPosition}`
                        }else{
                            window.location.href = `${url}meta-console/`
                        }
                    
                 } else {
         
                   const addedProducts = sessionStorage.getItem("x-user-cart");
                   const toJsonCart = JSON.parse(addedProducts);
                   const checkCart = checkIfInCart(toJsonCart, productId)
                   const addToCartButton = document.getElementById("addToCartButton");
                   if (checkCart) {
                     addToCartButton.innerHTML = "Already in Cart";
                     addToCartButton.disabled = true
                   } else {
                     addToCartButton.innerHTML = "Add to cart";
                     addToCartButton.disabled = false
                   }
         
         
                    let clickedProduct
                    var requestOptions = {
                      method: 'GET',
                      redirect: 'follow'
                    };
                    
                   const tableName = "<?php echo $table_name; ?>";
                   await fetch(`${url}meta-console/control/api/GetAllProduct.php?table=${tableName}`, requestOptions)
                      .then(response => response.json())
                      .then(result => {
                          console.log(result)
                          
                         clickedProduct = result.find((data) => data.id == Number(productId))
                         
                      })
                      .catch(error => console.log('error', error));
         
                   
                   
                //   const productImag = document.getElementById('nftImg')
                //   productImag.src = clickedProduct?.image
                   const modalHeader = document.getElementById('modalHeader')
                   modalHeader.innerHTML = clickedProduct?.name
                   const priceElement = document.getElementById('priceElement')
                   priceElement.innerHTML = clickedProduct?.price
                   const description = document.getElementById('description')
                   description.innerHTML = `${clickedProduct?.desc}`
                   document.getElementById('buttonModal').click()
                   const buyNowButton = document.getElementById('buyNowButton')
                   buyNowButton.setAttribute('productId', Number(productId))
                   const camera = document.getElementById('camera');
                   camera.setAttribute('look-controls', { enabled: false })
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
                
               const url = "<?php echo $url; ?>"
                 if(i?.detail?.intersection?.distance < 1 ){
                      window.location.href = `${url}meta-console/?camera_position=${cameraPosition}`
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
    
         
         function closeModal (){
           const buyNowButton = document.getElementById('buyNowButton')
           buyNowButton.innerHTML = "Buy Now"
           camera.setAttribute('look-controls', { enabled: true })
         }
         
         function moveToLoocation (address){
             const camera = document.getElementById('camera');
            camera.setAttribute('position', address) 
         }
         
         
        window.addEventListener('click', function () { 
            // document.querySelector('#video').play();
            // document.querySelector('#video2').play();
            document.querySelector('#video3').play();
        });

      </script>