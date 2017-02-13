<?php

    $_SESSION['checkoutstep'] = 1;

  if( $_SESSION['login'] == 1){
    $sql = "SELECT * FROM users WHERE id = '{$_SESSION['uid']}'";
    $res = mysqli_query($dblink, $sql);

    $row = mysqli_fetch_assoc($res);
  }

   ?>
    <main>
        <div id="shop-checkout" class="shop-wrapper">
            <ol class="breadcrumbs">
                <li><a href="../index.html">Shop</a></li>
                <li><a href="shop_cart.html">Cart</a></li>
                <li><a href="shop_checkout.html">Customer Information</a></li>
                <li>Shipping</li>
                <li>Payment</li>
            </ol>
            <?php
              if( $shop_errors === true){
                foreach( $shop_errorsMsg as $error){
                  echo "<p>$error</p>";
                }
              }
             ?>
            <div class="shop-checkout-box">
              <div class="shop-checkout-box-left">
                <form class="shop-checkout-form" action="" method="post">
                  <h2>Customer Information</h2>
                  <input type="email" placeholder="Email..." class="shop-checkout-form-email" name="email" value="<?php if( $_SESSION['login'] == 1){ echo $row['email']; }?>">
                  <?php
                  if( $_SESSION['login'] == 0){
                    echo '<p>Already have an Account?<a href="../../index.php?page=login"> Log In</a></p>';
                  }
                   ?>
                  <h2>Shipping Address</h2>
                  <input type="text" placeholder="First Name" class="shop-checkout-form-50" name="fname" value="<?php if( $_SESSION['login'] == 1){ echo $row['first_name']; }?>">
                  <input type="text" placeholder="Last Name" class="shop-checkout-form-50" name="lname" value="<?php if( $_SESSION['login'] == 1){ echo $row['last_name']; }?>">
                  <input type="text" placeholder="Address" class="shop-checkout-form-100" name="address" value="<?php if( $_SESSION['login'] == 1){ echo $row['address']; }?>">
                  <input type="text" placeholder="City" class="shop-checkout-form-100" name="city" value="<?php if( $_SESSION['login'] == 1){ echo $row['city']; }?>">
                  <select class="shop-checkout-form-50" name="country">
                    <option value="Austria">Austria</option>
                    <option value="Germany">Germany</option>
                    <option value="Japan">Japan</option>
                    <option value="United Kingdom">United Kingdom</option>
                    <option value="United States">United States</option>
                    <option value="Canada">Canada</option>
                  </select>
                  <input type="text" placeholder="Postal Code" class="shop-checkout-form-50 shop-checkout-form-postal" name="zip" value="<?php if( $_SESSION['login'] == 1){ echo $row['zip']; }?>">
                  <input type="tel" placeholder="Phone (optional)" class="shop-checkout-form-100" name="tel" value="<?php if( $_SESSION['login'] == 1){ echo $row['phone']; }?>">
                  <div class="shop-checkout-continue">
                    <a href="index.php?page=cart" class="shop-checkout-return"><span>&larr;</span> Return</a>
                    <input type="submit" class="shop-checkout-btn" name="checkout_step1" value="Continue to Shipping">
                  </div>
                </form>
              </div>
              <div class="shop-checkout-box-right">
                <h2>Order Overview</h2>
                <table class="shop-checkout-cart">
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
                        <img src="<?php echo $row2['path']; ?>" alt="Product">
                      </td>
                      <td>
                        <h3><?php echo $row['name']; ?> x<?php echo $val[1]; ?></h3>
                        <p><?php echo $val[2]; ?></p>
                      </td>
                      <td>
                        <h3>&euro; <?php if($row['sale'] == 0){ echo $val[1] * $row['price']; }elseif($row['sale'] == 1){ echo $val[1] * $row['price_sale']; } ?></h3>
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
                <div class="shop-checkout-code">
                  <input type="text" name="" placeholder="Discount Code">
                  <a href="#">Apply</a>
                </div>
                <div class="shop-checkout-price">
                  <div class="shop-checkout-price-txt">
                    <h3>Subtotal</h3>
                    <h3>Shipping</h3>
                  </div>
                  <div class="shop-checkout-price-val">
                    <h3>&euro; <?php echo $total ?></h3>
                    <h3>-</h3>
                  </div>
                </div>
                <div class="shop-checkout-total">
                  <h4>Total</h4>
                  <h4>&euro; <?php echo $total ?></h4>
                </div>
              </div>
            </div>
        </div>
    </main>
