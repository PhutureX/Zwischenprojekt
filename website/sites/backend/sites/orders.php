<?php

  if( isset($_GET['action']) && $_GET['action'] == "view" ){
      require 'sites/orders_view.php';
  }elseif( isset($_GET['action']) && $_GET['action'] == "delete" ){
      require 'sites/orders_delete.php';
  }else{
      require 'sites/orders_list.php';
  }
 ?>
