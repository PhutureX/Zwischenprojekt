<?php

if( $_SESSION['checkoutstep'] == 1 ){
  require 'sites/shop_checkout.php';
}elseif( $_SESSION['checkoutstep'] == 2 ){
  require 'sites/shop_shipping.php';
}elseif( $_SESSION['checkoutstep'] == 3 ){
  require 'sites/shop_payment.php';
}elseif ($_SESSION['checkoutstep'] == 4) {
  require 'sites/shop_completed.php';
}elseif ($_SESSION['checkoutstep'] == 5) {
  require 'sites/shop_error.php';
}

 ?>
