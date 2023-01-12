            <!-- --------------------------------taleport modal --------------------- -->
            <div class="hidden-xs" style='position: fixed; top: 10px; width:100%; text-align: right; z-index: 1;'>
          <!--<a href="../../../dashboard.php">-->
          <!--   <button type="button" class="btn btn-primary btn-lg" style="margin-right:20px;" >-->
          <!--      <span class="glyphicon glyphicon-user"></span>&nbsp;-->
          <!--  </button>-->
          <!--</a>-->
          <!--<a href="list.php">-->
          <!--   <button type="button" class="btn btn-info btn-lg" style="margin-right:20px;" >-->
          <!--      <span class="glyphicon glyphicon-cog"></span>&nbsp;-->
          <!--  </button>-->
          <!--</a>-->
         <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#taleportModal" style="margin-right:20px;" >
         <span class="glyphicon glyphicon-screenshot"></span>&nbsp;
         </button>
      </div>
      <div class="modal " id="taleportModal" role="dialog">
         <div class="modal-dialog">
 
            <div class="modal-content" style="background-color: #555555d4;">
               <div class="modal-body">
                
                <div class="row">
                    
                    <?php foreach ($get_shops_data as $key => $value) { ?>
                    
                    <div class="col-sm-4 col-md-4 col-lg-4" style="cursor: pointer;" > 
                        <div class="well"  onclick="moveToLoocation('<?php echo $value[
                            'land_locations'
                        ][
                            'on_exit_camers_position'
                        ]; ?>')" style="font-weight:bold;">
                            <div class="card-body"><?php echo $value[
                                'name'
                            ]; ?></div>
                          </div>
                    </div>
         <?php } ?>            
                    
                </div>
               </div>
               <div class="modal-footer" id="modalFooter">
                  
                  <button type="button" class="btn btn-default" data-dismiss="modal" onclick="closeModal()">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- --------------------------------taleport modal --------------------- -->
<button id="buttonModal" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"
         style="display: none;">Open Modal</button>
      <div class="modal fade" id="myModal" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content" style="background-color: #555555d4;color: white;">
               <div class="modal-body back-g">
                  <center>
                      <h2 id="shop_name">Want to get inside the shop?</h2>
                      <small>Please provide the details</small>
                     <h4 style=" margin-bottom: 25px; font-size: 12px;"><b style="color:#f9f7f5" id="description">
                        </b>
                     </h4>
                     <input type="hidden" class="form-control" name="productid" id="productid">
                      <div class="form-group" style="text-align: left;">
                        <!--<label for="name">Name:</label>-->
                        <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                      </div>
                      <div class="form-group" style="text-align: left;">
                        <!--<label for="email">Email address:</label>-->
                        <input type="email" class="form-control" id="email" placeholder="Email address">
                      </div>
                      <div class="form-group" style="text-align: left;">
                        <!--<label for="pwd">Contact no:</label>-->
                        <input type="number" class="form-control" id="contact" placeholder="Contact no">
                      </div>
                      <button type="button" onclick="submitForm()" class="btn btn-warning btn-lg" style="width:100%;">Enter Now</button>
                  </center>
               </div>
               <div class="modal-footer" id="modalFooter">
                  <button type="button" class="btn btn-warning btn-lg" data-dismiss="modal" onclick="closeModal()">Close</button>
               </div>
            </div>
         </div>
      </div>
      
      