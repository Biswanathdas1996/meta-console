<button id="buttonModal" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"
         style="display: none;">Open Modal</button>
      <div class="modal fade" id="myModal" role="dialog">
         <div class="modal-dialog modal-lg">
            <!-- Modal content-->
            <div class="modal-content" style="background-color: #555555d4;color: white;">
               <div class="modal-body">
                  <center>
                     <div class="row">
                        <div class="col-md-6 col-sm-6 col-lg-6" style="margin-top: 5rem;">
                           <div id="desc_model"></div> 
                        </div>
                        <div class="col-md-6 col-sm-6 col-lg-6">
                        <h4 class="modal-title" id="modalHeader" style=" font-weight: bold;margin-top: 15px;">Product Title</h4>
                     <h4 style=" margin-bottom: 25px;">
                        Price: 
                        <b style="color:#EB984E" id="priceElement">
                           <div class="loader"></div>
                        </b>
                        INR
                     </h4>
                     <h4 style=" margin-bottom: 25px; font-size: 12px;"><b style="color:#f9f7f5" id="description">
                        </b>
                     </h4>
                     <table class="table table-bordered" style="color: white;">
                        <tbody>
                           <tr>
                              <td>Quantity</td>
                              <td>1.5 L</td>
                           </tr>
                           <tr>
                              <td>Type</td>
                              <td>Herbs</td>
                           </tr>
                           <tr>
                              <td>Maximum Shelf Life</td>
                              <td>24 Months</td>
                           </tr>
                           <tr>
                              <td>Caloric Value</td>
                              <td>240 Cal/Kcal</td>
                           </tr>
                           <tr>
                              <td>Nutrient Content</td>
                              <td>
                                 Energy 402 kcal, Protein 8.3 g, Carbohydrate 68.7 g, Fat 10.5 g, Dietary Fibre 7.0 g
                              </td>
                           </tr>
                           <tr>
                              <td>Storage Instructions</td>
                              <td>
                                 Ambient Temperature. Store in a cool, hygienic & dry place. Do not Freeze. Do not expose product to sunlight.
                              </td>
                           </tr>
                        </tbody>
                     </table>
                        </div>
                     </div>
                  
                     
                     <a id="redirectLink" target="_blank" style="cursor: pointer;">
                     <button id="addToCartButton" type="button" class="btn btn-primary" style="padding: 12px;margin-right: 10px;" onclick="addToCart('<?php echo $table_name; ?>')">Add to cart</button>
                     </a>
                     <button type="button" class="btn btn-warning" id="buyNowButton" style="padding: 12px;" onclick="buyNow('<?php echo $table_name; ?>')">Buy Now </button>
                  </center>
               </div>
               <div class="modal-footer" id="modalFooter">
                  <button type="button" class="btn btn-default" data-dismiss="modal" onclick="closeModal()">Close</button>
               </div>
            </div>
         </div>
      </div>