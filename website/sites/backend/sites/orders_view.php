<?php
$orderSQL = "SELECT * FROM orders WHERE id = '{$_GET['id']}'";
$orderRES = mysqli_query($dblink, $orderSQL);

$order = mysqli_fetch_assoc($orderRES);
?>
<h2>View Order: <?php echo $order['ordernumber']; ?></h2>
<p>Bought at: <?php echo date('d.m.Y - h:i', $order['created_at']); ?></p>

<form action="" method="post" enctype="multipart/form-data">
    <label for="status">Status</label>
    <select name="status" id="status">
        <option value="0" <?php if($order['status'] == 0) echo 'selected'; ?>>Processing</option>
        <option value="1" <?php if($order['status'] == 1) echo 'selected'; ?>>Shipped</option>
        <option value="2" <?php if($order['status'] == 2) echo 'selected'; ?>>Cancled</option>
        <option value="3" <?php if($order['status'] == 3) echo 'selected'; ?>>Finished</option>
    </select>
    <br>
    <br>
    <input type="submit" value="Status ändern" name="editstatus">
</form>

<hr>

<h3>Customer Data</h3>

<?php
$userSQL = "SELECT * FROM users WHERE id = '{$order['user_id']}'";
$userRES = mysqli_query($dblink, $userSQL);

$user = mysqli_fetch_assoc($userRES);
?>
<p>Name: <?php echo $user['first_name']; echo " "; echo $user['last_name'];  ?></p>
<p>E-Mail: <?php echo $user['email']; ?></p>
<p>Adresse: <?php echo $user['address'] . ', ' . $user['zip'] . ' ' . $user['city'] . ', ' . $user['country']; ?></p>

<hr>

<h3>Orders</h3>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <thead>
    <tr>
        <th>Product</th>
        <th width="100px">Quantity</th>
        <th width="150px" style="text-align: right;">Price/piece</th>
        <th width="150px" style="text-align: right;">Total</th>
    </tr>
    </thead>
    <tbody>

    <?php
    $gesamtpreis = 0;

    $productsSQL = "SELECT * FROM order_products WHERE order_id = '{$order['id']}'";
    $productsRES = mysqli_query($dblink, $productsSQL);
    $total = 0;

    while($products = mysqli_fetch_assoc($productsRES)):
        $productsSubSQL = "SELECT * FROM products WHERE id = '{$products['product_id']}'";
        $productsSubRES = mysqli_query($dblink, $productsSubSQL);

        $productInfo = mysqli_fetch_assoc($productsSubRES);

        $total += $productInfo['price'] * $products['quantity'];

        $shipping = 0;
        if($total > 60){
          $shipping = 0;
        }else{
          $shipping = 4.99;
        }
    ?>
        <tr>
            <td><?php echo $productInfo['name'] ?></td>
            <td><?php echo $products['quantity']; ?></td>
            <td style="text-align: right;">&euro; <?php echo $productInfo['price'] ?></td>
            <td style="text-align: right;">&euro; <?php echo $productInfo['price'] * $products['quantity']; ?></td>
        </tr>
    <?php endwhile; ?>


    <tr>
        <td>Shipping</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td style="text-align: right;"><?php if($total > 60){ echo "Free"; }else{ echo "&euro; ".$shipping; } ?></td>
    </tr>
    <tr>
        <td><strong>Total</strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td style="text-align: right;">&euro; <?php echo $total + $shipping; ?></td>
    </tr>
    </tbody>
</table>

<hr>

<h3>Payment Method</h3>
<?php
$paymentSQL = "SELECT * FROM payments WHERE id = '{$order['payment']}'";
$paymentRES = mysqli_query($dblink, $paymentSQL);

$payment = mysqli_fetch_assoc($paymentRES);
?>
<p><?php echo $payment['name']; ?></p>
