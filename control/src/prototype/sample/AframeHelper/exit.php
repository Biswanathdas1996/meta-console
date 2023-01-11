<a-entity
             gltf-model="#exit_door" 
             position="21 0 29" 
             scale="15 15 30"  
             click-log="shopInside"
         >
         </a-entity>
         <a-text value="EXIT" color="red" position="23 6 24" scale="4 4 4"  rotation="0 180 0"></a-text>
         <a-link 
             href="#" 
             position="22 3 28" 
             on="collide"
             rotation="0 0 0"
             image="../../../assets/images/outside.png"
             peekMode="true"
             camera-listener
         ></a-link>