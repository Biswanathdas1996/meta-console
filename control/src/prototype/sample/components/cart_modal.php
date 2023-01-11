<!-- --------------------------------cart modal --------------------- -->
<div class="hidden-xs" style='position: fixed; top: 10px; width:100%; text-align: right; z-index: 1;'>
         <button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myCartModal" style="margin-right:20px;" onclick = "constructTable('#table')">
         <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;Cart
         </button>
      </div>
      <div class="modal " id="myCartModal" role="dialog">
         <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content" >
               <div class="modal-body">
                  <center>
                     <div id="list-puntate">
                     </div>
                  </center>
                  <p style="text-align: end;margin: 15px;">Item Total: <b id="totalAmount"></b></p>
                  <p style="text-align: end;margin: 15px;">Tax: <b>0 INR</b></p>
                  <p style="text-align: end;margin: 15px;">Todays Total amount: <b id="totalAmount2"></b></p>
               </div>
               <div class="modal-footer" id="modalFooter">
                  <button type="button" class="btn btn-warning" id="cartCheckoutButton"
                     onclick="cartCheckout('<?php echo $table_name; ?>')">Checkout
                  </button>
                  <button type="button" class="btn btn-default" data-dismiss="modal" onclick="closeModal()">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- --------------------------------cart modal --------------------- -->