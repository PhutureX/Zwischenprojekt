<?php
session_start();



require "../../includes/dbconnect.php";
require "includes/functions.php";


if( $_SESSION['login'] != 1 || $_SESSION['is_admin'] != 1 ){
  header('Location: ../../index.php');
  exit();
}else{
  $page = ( isset($_GET['page'])) ? $_GET['page'] : "home";

  if ( $page == "home"){
    $site = "sites/dashboard.php";
  }elseif( $page == "news"){
    $site = "sites/news.php";
  }elseif( $page == "user"){
    $site = "sites/user.php";
  }elseif( $page == "tours"){
    $site = "sites/tours.php";
  }elseif( $page == "shop"){
    $site = "sites/shop.php";
  }else{
    $site = "sites/404.php";
  }








  require "header.php";
  require $site;
  require "footer.php";}
