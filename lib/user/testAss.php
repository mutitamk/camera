<?php
session_start();
include('../components/connect.php');
$total = 0;
    if(!empty($_SESSION['shopping_cart'])){
         $c =count($_SESSION['shopping_cart']);
         foreach($c as $id => $Qty){
             echo $Qty;
         }
        
    }else{
        echo "null";
    }
?>