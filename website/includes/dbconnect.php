<?php

$dblink = mysqli_connect("localhost", "root", "", "SAE_Zwischenprojekt");
mysqli_set_charset($dblink, 'utf8');

if( ! $dblink ){
    die('Keine Verbindung zum DB Server');
}

?>
