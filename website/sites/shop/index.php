<?php

session_start();

if( ! isset($_SESSION['checkoutstep']) ){
    $_SESSION['checkoutstep'] = 1;
}

if ( ! isset($_SESSION['login']) ){
  $_SESSION['login'] = 0;
}

if( ! isset($_SESSION['logincount']) ){
    $_SESSION['logincount'] = 0;
}

if( isset($_SESSION['logintimeout']) && $_SESSION['logincount'] >= 3 ){

    if( time() >= ($_SESSION['logintimeout'] + 60) ){
        $_SESSION['logincount'] = 0;
        unset($_SESSION['logintimeout']);
    }
}

if( ! isset($_SESSION['login']) ){
    $_SESSION['login'] = 0;
}

require "includes/dbconnect.php";
require "includes/functions.php";


$page = ( isset($_GET['page'])) ? $_GET['page'] : "home";

if($page == "home"){
    $site = "sites/home.php";
}elseif($page == "cart"){
    $site = "sites/shop_cart.php";
}elseif($page == "productlist"){
    $site = "sites/shop_list.php";
}elseif($page == "productpage"){
    $site = "sites/shop_productpage.php";
}elseif($page == "checkout"){
      $site = "sites/checkout.php";
}else{
    $site = "sites/404.php";
}

require "header.php";
require $site;
require "footer.php";

?>
