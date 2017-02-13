<?php

mysqli_query($dblink, "DELETE FROM orders WHERE id = '{$_GET['id']}'");
mysqli_query($dblink, "DELETE FROM order_products WHERE order_id = '{$_GET['id']}'");

header('Location: index.php?page=orders');
exit();

?>
