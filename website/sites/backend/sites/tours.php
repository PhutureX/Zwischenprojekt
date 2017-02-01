<?php

if( ! isset($_GET['action']) ){
    $_GET['action'] = "list";
}

if( $_GET['action'] == "edit" ){
    require 'sites/tours_edit.php';
}elseif( $_GET['action'] == "delete" ){
    require 'sites/tours_delete.php';
}elseif( $_GET['action'] == "new"){
    require 'sites/tours_new.php';
}else{
    require 'sites/tours_list.php';
}
