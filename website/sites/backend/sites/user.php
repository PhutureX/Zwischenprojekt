<?php

if( ! isset($_GET['action']) ){
    $_GET['action'] = "list";
}

if( $_GET['action'] == "edit" ){
    require 'sites/user_edit.php';
}elseif( $_GET['action'] == "delete" ){
    require 'sites/user_delete.php';
}elseif( $_GET['action'] == "new"){
    require 'sites/user_new.php';
}else{
    require 'sites/user_list.php';
}
