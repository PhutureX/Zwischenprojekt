<?php

$sql = "DELETE FROM users WHERE id = '{$_GET['id']}'";
mysqli_query($dblink, $sql);
header('Location: index.php?page=user');
exit();
?>
