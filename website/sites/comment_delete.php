<?php

$sql = "DELETE FROM comments WHERE id = '{$_GET['id']}'";
mysqli_query($dblink, $sql);
header('Location: index.php?page=news');
exit();
?>
