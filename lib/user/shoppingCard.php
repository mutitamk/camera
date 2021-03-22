
<!-- References: https://github.com/fancyapps/fancyBox -->

<?php 

session_start();
include('../components/connect.php');
include('../components/component.php');
include('../components/shoppingCard.php');
include('../components/link.script.php');

if(!isset($_SESSION['user_data'])){
    echo "
            <script>
                alert('please your login');
                window.location = '../index.php';
            </script>
        ";
}else{
    $sessionUser = $_SESSION['user_data']['name_last'];
    $userId = $_SESSION['user_data']['user_id'];
    $sql = mysqli_query($conn,"SELECT * FROM camera");
    $sqli = mysqli_query($conn,"SELECT * FROM camera");
    $or_detil = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM order_detil"));

        if (isset($_POST['remove'])){
          if ($_GET['action'] == 'remove'){
              foreach ($_SESSION['shopping_cart'] as $key => $value){
                  if($value["C_id"] == $_GET['camera_id']){
                      unset($_SESSION['shopping_cart'][$key]);
                      echo "<script>alert('ลบสินค้าเรียบร้อยแล้ว')</script>";
                      echo "<script>window.location = 'shoppingCard.php'</script>";
                  }
              }
          }
        }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../src/css/index.user.css">
  <link rel="stylesheet" href="../src/css/card.css">

  <title>CARD</title>
</head>
<body>
  <div class="bs-example">
  <?php
    if(isset($_SESSION['shopping_cart'])){
      $count  = count($_SESSION['shopping_cart']);
        navbarUsers($sessionUser,$count);
    } else{
        navbarUsers($sessionUser,'0');
    }
  ?>
    <br><br>
    <div class="col-md-11 ml-4 mt-3">
      <section>
        <div class="row">
          <div class="col-md-8">
            <div class="card wish-list mb-3">
              <div class="card-body">
<?php
    $total = 0;
    $Quatity = 0;
    if(isset($_SESSION['shopping_cart'])){
      $count  = count($_SESSION['shopping_cart']);
                echo "<h5 class=\"mb-4\">Cart (<span>$count</span> items)</h5>" ;
      $qty = array_column($_SESSION['shopping_cart'], 'Qty');
      $product_id = array_column($_SESSION['shopping_cart'], 'C_id');
      while ($rows = mysqli_fetch_assoc($sql)){
          foreach ($_SESSION['shopping_cart'] as $key => $value){
            
              if ($rows['camera_id'] == $value['C_id']){
                     $total = $total + $rows['price']* $value['Qty'];
                     $Quatity = $Quatity +(int)$value['Qty'];
                     shoppingCard($rows['camera_id'],$rows['images'],$rows['camera_name'],$rows['price'],$rows['detail'],$value['Qty']);
              }
          }
      }
    }    
?>
              
              </div>
            </div>
          </div>
<?php 
        
        cardBuy($total,$Quatity);
        
     
?>
        </div>
      </section>


    </div>
   
  </div>
  <script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script src="../src/js/card.modal.js"></script>
  <script src="../src/js/realTime.js"></script>
  <script src="../lib/script.js"></script>
</body>
</html>




<div id="myModalBuy" class="modal fade bd-example-modal-lg" tabindex="-1"  role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
              <div class="modal-header text-center">
                <div class="panel-heading">
                    <div class="col col-xs-6">
                          <h3 class="panel-title">Panel Heading</h3>
                        </div>
                    </div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                       <span aria-hidden="true">&times;</span>
                    </button>
              </div>
            <div class="modal-body">
<form action="chk_orderSystem.php" method="POST" enctype="multipart/form-data">
                <div class="container-fluid">
                    <div class="panel panel-default panel-table">
                        <main-shoppinform></main-shoppinform>
                        
                        <div class="panel-body">
                            <table class="table table-striped table-bordered table-list">
                                
                                <tbody>
                                  <tr>
                                      <th class="text-center">Img</th>
                                      <th class="text-center">สินค้า</th>
                                      <th class="text-center">ราคาเดิม</th>
                                      <th class="text-center">จำนวน</th>
                                      <th class="text-center">ราคารวม</th>
                                      <th class="text-center"><em class="fa fa-cog"></em></th>
                                  </tr> 
<?php
  while ($arr = mysqli_fetch_assoc($sqli)){
    foreach($_SESSION['shopping_cart'] as  $newValue){
      if($arr['camera_id'] == $newValue['C_id']){
                     modalBuy($newValue['C_id'],$arr['images'],$arr['camera_name'],$arr['price'],$newValue['Qty']);
      }              
    }
    
  }
  echo "<input type=\"hidden\" name=\"UserId\" value=".$_SESSION['user_data']['user_id']." />";
  echo "<input type=\"hidden\" name=\"QtyAll\" value=\"$Quatity\" />";//จำนวน สินค้าทั้งหมด
  echo "<input type=\"hidden\" name=\"PriceAll\" value=\" $total\" />";//ราคารวมสินค้าทั้งหมดที่อยู่ในCard
?>
                                  <tr>
                                    <td colspan="3">รวมราคาสินค้าทั้งหมด (<?php echo number_format($total); ?>) บาท</td>
                                    <td colspan="3">จำนวนสินค้าทั้งหมด (<?php echo number_format($Quatity); ?>) รายการ</td>
                                  </tr>
                                </tbody>
                            </table>
                            
                        </div>

                        <div class="form-group"> 
				                  <label class="control-label col-sm-6" for="email">Payment:(การจ่ายเงิน)</label> 
				                  <div class="row d-flex justify-content-center">
				                  	<div class="form-check mb-3 ml-4">
				                  	    <input class="form-check-input" type="radio" id="radio1" name="r2" onchange="show(this.value)" checked="checked">
				                  	    <label class="form-check-label" for="radio1"><i class="fa fa-exchange" aria-hidden="true"></i> โอนเงิน</label>
				                  	</div>
				                  	<div class="form-check mb-3 ml-4">
				                  	    <input class="form-check-input" type="radio" id="radio2" name="r2" onchange="show2()">
				                  	    <label class="form-check-label" for="radio2"><i class="fa fa-truck" aria-hidden="true"></i> จ่ายปลายทาง</label>
				                  	</div>
				                  </div>
				                	<div id="sh1" style="">
				                	 <div class="">
				                	   <div class="col-md-12 row">
				                		    <p class="col-md-6 ml-auto">AccountNamber: 763-055-106-1</p> &nbsp;||&nbsp; <p class="col-md-5">branch: KrungThai</p>
				                	   </div> 
				                		  <div class="col-8 justify-content-center align-items-center">
                                <main-upimg></main-upimg>
                              </div>
				                	 </div>
				                	</div>
				                	<div id="sh2" style="display:none;">
				                		<div class="">
                              <p class="text-center">เก็บค่าปลายทาง 30 บาท</p>
				                		</div>
				                	</div>
				                </div>
                          
                        <div class="container">
                          <button type="submit" class="btn btn-block btn-info">
                            <i class="fa fa-check-square-o" aria-hidden="true"></i> ยืนยัน การสั่งซื่อ
                          </button>
                        </div>
                    </div>
                </div>
</form>
            </div>
                
        </div>
    </div>
</div>


<?php
}
?>