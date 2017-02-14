<?php
session_start();

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


require "includes/dbconnect.php";
require "includes/functions.php";

$page = ( isset($_GET['page'])) ? $_GET['page'] : "home";

if( $page == "home" ){
  $site = "sites/home.php";
}elseif( $page == "news" ){
  $site = "sites/news.php";
}elseif( $page == "tours" ){
  $site = "sites/tours.php";
}elseif( $page == "contact_us" ){
  $site = "sites/contact_us.php";
}elseif( $page == "contact_us_complete" ){
  $site = "sites/contact_us_complete.php";
}elseif( $page == "register" ){
  $site = "sites/register.php";
}elseif( $page == "register_success" ){
  $site = "sites/register_success.php";
}elseif( $page == "login" ){
  $site = "sites/login.php";
}elseif( $page == "dashboard" ){
  $site = "sites/dashboard.php";
}else{
  $site = "sites/404.php";
}







require "header.php";
require $site;
require "footer.php";
