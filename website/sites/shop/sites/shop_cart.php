<div id="shop-cart" class="shop-wrapper">
            <ol class="breadcrumbs">
                <li><a href="index.php?page=home">Shop</a></li>
                <li><a href="#">Cart</a></li>
                <li>Customer Information</li>
                <li>Shipping</li>
                <li>Payment</li>
            </ol>
            <h2>Your Cart</h2>
            <table class="shop-cart-table">
                <thead>
                    <tr>
                        <th></th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                  <?php
                    $total = 0;
                    foreach( $_SESSION['wk'] as $key => $val ):
                      $sql = "SELECT * FROM products WHERE id = '{$val[0]}'";
                      $res = mysqli_query($dblink, $sql);
                      $row = mysqli_fetch_assoc($res);
                      $sql2 = "SELECT * FROM product_imgs WHERE product_id = '{$val[0]}'";
                      $res2 = mysqli_query($dblink, $sql2);
                      $row2 = mysqli_fetch_assoc($res2);
                   ?>
                    <tr>
                        <td>
                            <div class="cart-item">
                                <a href="index.php?page=productpage&id=<?php echo $val[0]; ?>" class="cart-item-img"><img src="<?php echo $row2['path']; ?>" alt="Product"></a>
                                <div class="cart-item-info">
                                    <a href="index.php?page=productpage&id=<?php echo $val[0]; ?>"><h3><?php echo $row['name']; ?></h3></a>
                                    <h4><?php echo $val[2]; ?></h4>
                                </div>
                            </div>
                        </td>
                        <td>
                            <input type="number" name="" value="<?php echo $val[1]; ?>">
                        </td>
                        <td>
                            <h4>&euro; <?php if($row['sale'] == 0){ echo $val[1] * $row['price']; }elseif($row['sale'] == 1){ echo $val[1] * $row['price_sale']; } ?></h4>
                        </td>
                        <td>
                            <a href="#" class="cart-item-del"><h4>X</h4></a>
                        </td>
                    </tr>
                    <?php
                      if($row['sale'] == 0){
                        $subtotal = $row['price'];
                      }elseif($row['sale'] == 1){
                        $subtotal = $row['price_sale'];
                      }
                      $total += $val[1] * $subtotal;
                    ?>
                    <?php endforeach; ?>

                </tbody>
            </table>
            <div class="shop-cart-checkout">
                <h2><span>Total:</span> &euro; <?php echo $total; ?></h2>
                <h3>Free Shipping when you spend €60.00 or more</h3>
                <a href="<?php if( empty($_SESSION['wk'])){echo '#';}else{echo 'index.php?page=checkout';} ?>" <?php if( empty($_SESSION['wk'])){echo 'style="background-color: transparent; cursor:not-allowed;"';}?>><?php if( empty($_SESSION['wk'])){echo 'Your Cart is empty';}else{echo 'Checkout';} ?></a>
            </div>
        </div>
