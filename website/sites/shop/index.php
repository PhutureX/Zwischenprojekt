<?php

session_start();

if( ! isset($_SESSION['checkoutstep']) ){
    $_SESSION['checkoutstep'] = 1;
}

if( ! isset($_SESSION['currency']) ){
    $_SESSION['currency'] = 1;
}

if ( ! isset($_SESSION['login']) ){
  $_SESSION['login'] = 0;
}

if( ! isset($_SESSION['wk']) ){
    $_SESSION['wk'] = array();
}




require "includes/dbconnect.php";
require "includes/functions.php";


$page = ( isset($_GET['page'])) ? $_GET['page'] : "home";

if($page == "home"){
    $site = "sites/home.php";
}elseif($page == "cart"){
    $site = "sites/shop_cart.php";
}elseif($page == "merch"){
    $site = "sites/shop_list.php";
}elseif($page == "shirts"){
    $site = "sites/shop_list_shirts.php";
}elseif($page == "hoodies"){
    $site = "sites/shop_list_hoodies.php";
}elseif($page == "hats"){
    $site = "sites/shop_list_hats.php";
}elseif($page == "backpacks"){
    $site = "sites/shop_list_backpacks.php";
}elseif($page == "tableware"){
    $site = "sites/shop_list_tableware.php";
}elseif($page == "other"){
    $site = "sites/shop_list_other.php";
}elseif($page == "albums"){
    $site = "sites/shop_list_albums.php";
}elseif($page == "downloads"){
    $site = "sites/shop_list_downloads.php";
}elseif($page == "new"){
    $site = "sites/shop_list_newproducts.php";
}elseif($page == "offers"){
    $site = "sites/shop_list_special.php";
}elseif($page == "productpage"){
    $site = "sites/shop_productpage.php";
}elseif($page == "checkout"){
    $site = "sites/checkout.php";
}elseif( $page == "search"){
    $site = "sites/shop_list_search.php";
}else{
    $site = "sites/404.php";
}

require "header.php";
require $site;
require "footer.php";

?>
