<?php

$sql = "DELETE FROM tours WHERE id = '{$_GET['id']}'";
mysqli_query($dblink, $sql);
header('Location: index.php?page=tours');
exit();
?>
