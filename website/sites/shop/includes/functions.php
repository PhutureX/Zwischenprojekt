<?php
$shop_errors = false;
$shop_errorsMsg = array();


if( isset($_POST['insertwk']) ){
  $sql = "SELECT products.*, product_categories.name AS category FROM products LEFT JOIN product_categories ON products.category_id = product_categories.id WHERE products.id = '{$_GET['id']}'";
  $res = mysqli_query($dblink, $sql);
  $row = mysqli_fetch_assoc($res);


  if($row['stock'] == 0){
    $shop_errors = true;
    array_push($shop_errorsMsg, '<script>alert("Sold Out!");</script>');
  }elseif($_POST['quantity'] > $row['stock']){
    $shop_errors = true;
    array_push($shop_errorsMsg, '<script>alert("We dont have enough left!");</script>');
  }elseif($_POST['size'] === "S" && $_POST['quantity'] > $row['stock_s']){
    $shop_errors = true;
    array_push($shop_errorsMsg, '<script>alert("We dont have enough left of that size!");</script>');
  }elseif($_POST['size'] === "M" && $_POST['quantity'] > $row['stock_m']){
    $shop_errors = true;
    array_push($shop_errorsMsg, '<script>alert("We dont have enough left of that size!");</script>');
  }elseif($_POST['size'] === "L" && $_POST['quantity'] > $row['stock_l']){
    $shop_errors = true;
    array_push($shop_errorsMsg, '<script>alert("We dont have enough left of that size!");</script>');
  }elseif($_POST['size'] === "XL" && $_POST['quantity'] > $row['stock_xl']){
    $shop_errors = true;
    array_push($shop_errorsMsg, '<script>alert("We dont have enough left of that size!");</script>');
  }elseif($_POST['size'] === "2XL" && $_POST['quantity'] > $row['stock_2xl']){
    $shop_errors = true;
    array_push($shop_errorsMsg, '<script>alert("We dont have enough left of that size!");</script>');
  }elseif($_POST['size'] === "3XL" && $_POST['quantity'] > $row['stock_3xl']){
    $shop_errors = true;
    array_push($shop_errorsMsg, '<script>alert("We dont have enough left of that size!");</script>');
  }else{
    $product = array($_POST['pid'], $_POST['quantity'], $_POST['size']);
    array_push($_SESSION['wk'], $product);
  }
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

    $_SESSION['guest_fname'] = $first_name;
    $_SESSION['guest_lname'] = $last_name;
    $_SESSION['guest_address'] = $address;
    $_SESSION['guest_zip'] = $zip;
    $_SESSION['guest_city'] = $city;
    $_SESSION['guest_country'] = $country;

    if($_SESSION['login'] === 0){
      $sql = "INSERT INTO users (uname, first_name, last_name, password, email, address, zip, city, country, phone) VALUES ('Guest', '{$_POST['fname']}', '{$_POST['lname']}', '', '{$_POST['email']}', '{$_POST['address']}', '{$_POST['zip']}', '{$_POST['city']}', '{$_POST['country']}', '{$_POST['tel']}' )";
      mysqli_query($dblink, $sql);

      $sql2 = "SELECT * FROM users ORDER BY id DESC LIMIT 1";
      $res = mysqli_query($dblink, $sql2);
      $row = mysqli_fetch_assoc($res);

      $_SESSION['uid'] = $row['id'];

      $_SESSION['checkoutstep'] = 2;
    }else{
      $_SESSION['checkoutstep'] = 2;
    }
  }
}

if( isset($_POST['checkout_step2']) ){
  if( ! isset($_POST['shipping-option']) ){
    $shop_errors = true;
    array_push($shop_errorsMsg, "Please select a shipping method!");
}

  if( $shop_errors === false ){
    $_SESSION['checkoutstep'] = 3;
    $_SESSION['shipping'] = $_POST['shipping-option'];
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
    if( strlen($_POST['CC_date']) < 5){
      $shop_errors = true;
      array_push($shop_errorsMsg, "Please enter a valid credit card expiration date!");
    }
    if( strlen($_POST['CC_CVV']) < 3){
      $shop_errors = true;
      array_push($shop_errorsMsg, "Please enter a valid CVV number!");
    }

  }

  if( $shop_errors === false ){

    $_SESSION['payment'] = $_POST['payment-option'];

    $sql = "SELECT id FROM orders ORDER BY id DESC LIMIT 1";
    $res = mysqli_query($dblink, $sql);

    if( mysqli_num_rows($res) > 0 ){
        $lastOrder = mysqli_fetch_assoc($res);
        $num = $lastOrder['id'] + 1;
        $orderNumber = "2017" . $num;
        $status = 0;
    }else{
        $orderNumber = "20171";
    }

    $createdAt = time();
    mysqli_query($dblink, "INSERT INTO orders (ordernumber, user_id, created_at, payment, shipping, status) VALUES ('$orderNumber', '{$_SESSION['uid']}', '$createdAt', '{$_SESSION['payment']}', '{$_SESSION['shipping']}', '$status')");

    $lastId = mysqli_insert_id($dblink);

    foreach($_SESSION['wk'] as $product){
        $productId = $product[0];
        $productQuantity = $product[1];
        $productSize = $product[2];
        $sql2 = "SELECT * FROM products WHERE id = $productId";
        $res2 = mysqli_query($dblink, $sql2);
        $row = mysqli_fetch_assoc($res2);

        if($productSize == "S"){
          $newStockS = $row['stock_s'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock_s= '$newStockS'  WHERE id = $productId");
          $newStock = $row['stock'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock= '$newStock'  WHERE id = $productId");
        }elseif($productSize == "M"){
          $newStockM = $row['stock_m'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock_m= '$newStockM'  WHERE id = $productId");
          $newStock = $row['stock'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock= '$newStock'  WHERE id = $productId");
        }elseif($productSize == "L"){
          $newStockL = $row['stock_l'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock_l= '$newStockL'  WHERE id = $productId");
          $newStock = $row['stock'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock= '$newStock'  WHERE id = $productId");
        }elseif($productSize == "XL"){
          $newStockXL = $row['stock_xl'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock_xl= '$newStockXL'  WHERE id = $productId");
          $newStock = $row['stock'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock= '$newStock'  WHERE id = $productId");
        }elseif($productSize == "2XL"){
          $newStock2XL = $row['stock_2xl'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock_2xl= '$newStock2XL'  WHERE id = $productId");
          $newStock = $row['stock'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock= '$newStock'  WHERE id = $productId");
        }elseif($productSize == "3XL"){
          $newStock3XL = $row['stock_3xl'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock_3xl= '$newStock3XL'  WHERE id = $productId");
          $newStock = $row['stock'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock= '$newStock'  WHERE id = $productId");
        }else{
          $newStock = $row['stock'] - $productQuantity;
          mysqli_query($dblink, "UPDATE products SET stock= '$newStock'  WHERE id = $productId");
        }

        mysqli_query($dblink, "INSERT INTO order_products (order_id, product_id, size, quantity) VALUES ('$lastId', '$productId', '$productSize', '$productQuantity')");
    }
      unset($_SESSION['guest_email']);
      unset($_SESSION['guest_fname']);
      unset($_SESSION['guest_lname']);
      unset($_SESSION['guest_address']);
      unset($_SESSION['guest_city']);
      unset($_SESSION['guest_country']);
      unset($_SESSION['guest_zip']);
      unset($_SESSION['guest_tel']);

      $_SESSION['checkoutstep'] = 4;
  }
}


if( isset($_POST['header-search-submit']) ){
  $search = $_POST['header-search'];
  $site = "sites/shop_list_search.php";
}


function cleanString( $dblink, $string ){
  $string = str_replace("<!--", "", $string);
  $string = str_replace("-->", "", $string);
  $string = mysqli_real_escape_string($dblink, $string);

  return $string;
}
 ?>
