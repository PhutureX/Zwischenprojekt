<?php

if( ! isset($_GET['action']) ){
    $_GET['action'] = "list";
}

if( $_GET['action'] == "edit" ){
    require 'sites/news_edit.php';
}elseif( $_GET['action'] == "delete" ){
    require 'sites/news_delete.php';
}elseif( $_GET['action'] == "new"){
    require 'sites/news_new.php';
}else{
    require 'sites/news_list.php';
}
