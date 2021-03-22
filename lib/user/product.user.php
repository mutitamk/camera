<?php

session_start();
include('../components/connect.php');
include('../components/component.php');
include('../components/link.script.php');
include('card.php');
if(!isset($_SESSION['user_data'])){
    echo "
            <script>
                alert('please your login');
                window.location = '../index.php';
            </script>
        ";
}else{
  
    $sessionUser = $_SESSION['user_data']['name_last'];
    $sql = mysqli_query($conn,"SELECT * FROM camera");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../src/css/index.user.css">
    <link rel="stylesheet" href="../src/css/product.css">
    <title>Product Document</title>
</head>
<body>
  <div class="bs-example">
<?php
       if(isset($_SESSION['shopping_cart'])){
          $count  = count($_SESSION['shopping_cart']);
          navbarUsers($sessionUser,$count);
      }else{  
          navbarUsers($sessionUser,'0');
      }
?>
    <br><br>
    <div class="container mt-3">
       
       <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
          <div class="row mt-3">
<?php
  $x=1;
  while($x <= $row=mysqli_fetch_assoc($sql)){
    cardCameraUser($row['camera_name'],$row['images'],number_format($row['price']),$row['camera_id'],$row['detail']);
  }
?>
            
          </div>
        </div>
        
      </div>
       <form action="product.user.php" method="post">
        <user-modal></user-modal>
       </form>

    </div>
  </div>
  
  <script src="../src/js/card.modal.js"></script>
  <script src="text/javascript">
  </script>
</body>
</html>

<?php
}
?>