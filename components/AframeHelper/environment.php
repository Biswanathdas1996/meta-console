        
        <a-entity light="type: ambient; color: #BBB"></a-entity>
         <!-- <a-entity light="type: directional; color: #FFF; intensity: 0.6" position="-0.5 1 1"></a-entity> -->
        <!-- <a-entity gltf-model="#town" position="0 1 150" scale="50 50 50" ></a-entity> -->
         <!--default-->
         <!--groundColor: #523c60; groundColor2:#523c60;  dressingColor:#196F3D, skyType: atmosphere-->
         <a-entity environment="preset: forest; fog:0; " src="#skyTexture"  scale="10 10 10" ></a-entity>

         <!-- <a-entity environment=" fog:0; " scale="10 10 10"></a-entity> -->
         <!-- <a-entity environment="preset: default; fog:0; groundColor: #d4c63d; groundColor2:#c7b437; dressingColor:#d4c63d"  scale="10 10 10"></a-entity> -->
         <a-sky src="#skyTexture" position="0 250 0"></a-sky>