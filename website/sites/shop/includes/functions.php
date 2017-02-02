<?php
$shop_errors = false;
$shop_errorsMsg = array();

if( isset($_POST['insertwk']) ){
    $product = array($_POST['pid'], $_POST['quantity'], $_POST['size']);
    array_push($_SESSION['wk'], $product);
}

if( isset($_POST['checkout_step1']) ){
  $email = cleanString($dblink, $_POST['email']);
  $first_name = cleanString($dblink, $_POST['fname']);
  $last_name = cleanString($dblink, $_POST['lname']);
  $address = cleanString($dblink, $_POST['address']);
  $city = cleanString($dblink, $_POST['city']);
  $country = cleanString($dblink, $_POST['country']);
  $zip = cleanString($dblink, $_POST['zip']);
  $phone = cleanString($dblink, $_POST['tel']);

  if( strpos($_POST['email'], "@") === false){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please enter a valid E-Mail!");
  }else{
    $emailSplit = explode("@", $_POST['email']);
    if( strpos($emailSplit[1], ".") === false){
      $shop_errors = true;
      array_push($shop_errorsMsg, "Please enter a valid E-Mail!");
    }
  }

  if( strlen($_POST['fname']) < 3){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please enter a valid first name!");
  }

  if( strlen($_POST['lname']) < 3){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please enter a valid last name!");
  }

  if( strlen($_POST['address']) < 3){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please enter a valid address!");
  }

  if( strlen($_POST['city']) < 3){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please enter a valid city!");
  }

  if( strlen($_POST['zip']) < 4 && ! is_numeric($_POST['zip']) ){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please enter a valid zip number!");
  }

  if( strlen($_POST['tel']) != is_numeric($_POST['tel']) ){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please enter a valid phone number!");
  }

  if( $shop_errors === false ){
    $_SESSION['checkoutstep'] = 2;
    $_SESSION['guest_email'] = $email;
    $_SESSION['guest_fname'] = $first_name;
    $_SESSION['guest_lname'] = $last_name;
    $_SESSION['guest_address'] = $address;
    $_SESSION['guest_city'] = $city;
    $_SESSION['guest_country'] = $country;
    $_SESSION['guest_zip'] = $zip;
    $_SESSION['guest_tel'] = $phone;
  }
}

if( isset($_POST['checkout_step2']) ){
  if( ! isset($_POST['shipping-option']) ){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please select a shipping method!");
}

  if( $shop_errors === false ){
    $_SESSION['checkoutstep'] = 3;
    $_SESSION['guest_shipping'] = $_POST['shipping-option'];
  }
}

if( isset($_POST['checkout_step3']) ){
  if( ! isset($_POST['payment-option']) ){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please select a payment method!");
}
  if( $_POST['payment-option'] == "Credit Card"){
    if( ! is_numeric($_POST['CC_number']) ){
      $shop_errors = true;
      array_push($shop_errorsMsg, "Please enter a valid credit card number!");
    }
    if( strlen($_POST['CC_number']) < 16){
      $shop_errors = true;
      array_push($shop_errorsMsg, "The credit card number is too short!");
    }
    if( strlen($_POST['CC_number']) > 16){
      $shop_errors = true;
      array_push($shop_errorsMsg, "The credit card number is too long!");
    }
    if( strlen($_POST['CC_name']) < 5){
      $shop_errors = true;
      array_push($shop_errorsMsg, "Please enter a valid credit card holder name!");
    }
    if( strlen($_POST['CC_date']) < 5 or strlen($_POST['CC_date']) > 5){
      $shop_errors = true;
      array_push($shop_errorsMsg, "Please enter a valid credit card expiration date!");
    }
    if( strlen($_POST['CC_CVV']) < 3 or strlen($_POST['CC_CVV']) > 3){
      $shop_errors = true;
      array_push($shop_errorsMsg, "Please enter a valid CVV number!");
    }

  }

  if( $shop_errors === false ){

    $_SESSION['guest_payment'] = $_POST['payment-option'];

    $sql = "SELECT id FROM orders ORDER BY id DESC LIMIT 1";
    $res = mysqli_query($dblink, $sql);

    if( mysqli_num_rows($res) > 0){
      $lastOrder = mysqli_fetch_assoc($res);
      $num = $lastOrder['id'] + 1;
      $orderNumber = "2017" . $num;
      $status = "0";
    }else{
      $orderNumber = "20171";
    }

    $createdAt = time();

    if( $_SESSION['login'] == 1){
      mysqli_query($dblink, "INSERT INTO orders (ordernumber, user_id, created_at, payment_id, status) VALUES ('$orderNumber', '{$_SESSION['uid']}', '$createdAt', '{$_SESSION['guest_payment']}', '$status')");
    }else{
      mysqli_query($dblink, "INSERT INTO orders (ordernumber, user_id, created_at, payment_id, status) VALUES ('$orderNumber', '0', '$createdAt', '{$_SESSION['guest_payment']}', '$status')");
    }

    $lastID = mysqli_insert_id($dblink);

    foreach($_SESSION['wk'] as $product){
      $productId = $product[0];
      $productQuantity = $product[1];
      mysqli_query($dblink, "INSERT INTO order_products (order_id, product_id, quantity) VALUES ('$lastID', '$productId', '$productQuantity')");
    }

  }

  unset($_SESSION['wk']);
  unset($_SESSION['guest_email']);
  unset($_SESSION['guest_fname']);
  unset($_SESSION['guest_lname']);
  unset($_SESSION['guest_address']);
  unset($_SESSION['guest_city']);
  unset($_SESSION['guest_country']);
  unset($_SESSION['guest_zip']);
  unset($_SESSION['guest_tel']);
  unset($_SESSION['guest_shipping']);
  unset($_SESSION['guest_payment']);

  $_SESSION['checkoutstep'] = 4;
}


function cleanString( $dblink, $string ){
  $string = str_replace("<!--", "", $string);
  $string = str_replace("-->", "", $string);
  $string = mysqli_real_escape_string($dblink, $string);

  return $string;
}
 ?>
