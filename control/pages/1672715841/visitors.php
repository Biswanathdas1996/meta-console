<?php $table_name='1672715841_meta_product_table';?><?php
 include("../../src/config/includes.php"); echo Layout::APILayout();
 $shop_name = str_replace("_meta_product_table", "", $table_name);
 $get_data = select('meta_shop_lists',[
        "conditions"=>[
                "link"=>$shop_name
            ]    
     ]);

$get_all_lead = select('visitors_lead',[
        "conditions"=>[
                "shop"=>$get_data[0]['id']
            ],
            'order'=>array(
                'id'=>'desc'
            ),
    ])  ;
    // pr($get_all_lead);
    //  return;
?>

<?php include "../../header.php"; ?>
<style>
.back-g {
  background-image: url('../../../assets/gifs/metaverse-shopping-1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
  height: 400px;
}
.Rectangle-242 {
    /*position: absolute;*/
    top: 300px;
    /*left: 80px;*/
     /*bottom:180px;*/
    padding: 50px;
    border-radius: 30px;
    box-shadow: 0 3px 6px 0 rgb(0 0 0 / 16%);
    background-color: #fff;
}
</style>

<div class="main-content">
   <div class="container-fluid content-top-gap back-g">
       
      
      <br/>
      
      <section class="people Rectangle-242 mb-5">
         <section class="w3l-team-block">
            <!-- //people cards style 1 -->
            <div class="card card_border">
               <div class="cards__heading" style="margin-bottom: 0px;">
                  <h3>Visitors lead</h3>
               </div>
            
                  <table class="table table-striped">
                     <thead style="background: #d85604;color: white;">
                        <tr>
                           <th>Name</th>
                           <th>Contact No</th>
                           <th>Email</th>
                           <th>Date & Time</th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php
                           foreach($get_all_lead as $key=> $value){
                               if($value['name']){
                           ?>
                        <tr>
                           <td style="width:200px;">
                               <center>
                                    
                                    <b> <?php $value['name']; ?></b> 
                               </center>
                            </td>
                           <td style="width:150px;"><?php $value['contact_no']; ?> </td>
                           <td><?php $value['email']; ?></td>
                           <td><b><?php $value['date']; ?></b></td>
                           
                        </tr>
                        <?php 
                               }
                        } ?>
                     </tbody>
                  </table>
              
            </div>
         </section>
      </section>
   </div>
</div>
</body>
</html>