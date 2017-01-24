<?php

$sql = "DELETE FROM news WHERE id = '{$_GET['id']}'";
mysqli_query($dblink, $sql);
header('Location: index.php?page=news');
exit();
?>
