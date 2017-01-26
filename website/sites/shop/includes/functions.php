<?php
$shop_errors = false;
$shop_errorsMsg = array();

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
    array_push($shop_errorsMsg, "Please select a Shipping Method!");
}

  if( $shop_errors === false ){
    $_SESSION['checkoutstep'] = 3;
    $_SESSION['guest_shipping'] = $_POST['shipping-option'];
  }
}

if( isset($_POST['checkout_step3']) ){
  if( ! isset($_POST['payment-option']) ){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please select a Payment Method!");
}

  if( $shop_errors === false ){
    $_SESSION['checkoutstep'] = 4;
    $_SESSION['guest_payment'] = $_POST['payment-option'];
  }
}



function cleanString( $dblink, $string ){
  $string = str_replace("<!--", "", $string);
  $string = str_replace("-->", "", $string);
  $string = mysqli_real_escape_string($dblink, $string);

  return $string;
}
 ?>
