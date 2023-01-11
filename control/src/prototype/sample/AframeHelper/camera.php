<a-entity id="rig">
    <a-camera  id="camera" position="24 3 18" look-controls="pointerLockEnabled: true" limit-my-distance>
        <a-entity cursor="fuse: false; fuseTimeout: 500" position="0 0 -1"
        geometry="primitive: ring; radiusInner: 0.02; radiusOuter: 0.03" material="color: red; shader: flat">
        </a-entity>
    </a-camera>
    <a-entity oculus-touch-controls="hand: left" ></a-entity>
    <a-entity oculus-touch-controls="hand: right" oculus-thumbstick-controls></a-entity>
</a-entity>
