<?php
    $_SESSION['checkoutstep'] = 2;
    $total = 0;
    foreach( $_SESSION['wk'] as $key => $val ):
      $sql2 = "SELECT * FROM products WHERE id = '{$val[0]}'";
      $res2 = mysqli_query($dblink, $sql2);
      $row2 = mysqli_fetch_assoc($res2);
      $total += $val[1] * $row2['price'];
    endforeach;

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
              <li><a href="shop_shipping.html">Shipping</a></li>
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
              <form class="shop-checkout-form" action="#" method="post">
                <h2>Shipping Address</h2>
                <p><?php if( $_SESSION['login'] == 1){ echo $row['first_name']; }else{ echo $_SESSION['guest_fname'];}?> <?php if( $_SESSION['login'] == 1){ echo $row['last_name']; }else{ echo $_SESSION['guest_lname'];}?></p>
                <p><?php if( $_SESSION['login'] == 1){ echo $row['address']; }else{ echo $_SESSION['guest_address'];}?></p>
                <p><?php if( $_SESSION['login'] == 1){ echo $row['zip']; }else{ echo $_SESSION['guest_zip'];}?> <?php if( $_SESSION['login'] == 1){ echo $row['city']; }else{ echo $_SESSION['guest_city'];}?></p>
                <p><?php if( $_SESSION['login'] == 1){ echo $row['country']; }else{ echo $_SESSION['guest_country'];}?></p>
                <p><a href="#">Edit Shipping Address</a></p>
                <h2>Shipping Method</h2>
                <ul class="checkout-options" id="shipping-option">
                  <li class="checkout-options-element">
                    <input type="radio" id="shipping-option-1" value="Post" name="shipping-option" checked>
                    <label for="shipping-option-1">Post
                      <p><?php if ( $total >= 60 ){echo 'Free';}else{echo '€ 4.99';};?></p>
                    </label>
                  </li>
                  <li class="checkout-options-element">
                    <input type="radio" id="shipping-option-2" value="DHL" name="shipping-option">
                    <label for="shipping-option-2">DHL
                      <p>€ 9.99</p>
                    </label>
                  </li>
                  <li class="checkout-options-element">
                    <input type="radio" id="shipping-option-3" value="UPS" name="shipping-option">
                    <label for="shipping-option-3">UPS
                      <p>€ 12.99</p>
                    </label>
                  </li>
                </ul>
                <div class="shop-checkout-continue">
                  <a href="index.php?page=information" class="shop-checkout-return"><span>&larr;</span> Return</a>
                  <input type="submit" class="shop-checkout-btn" name="checkout_step2" value="Continue to Payment">
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
                      <h3>&euro; <?php echo $val[1] * $row['price']; ?></h3>
                    </td>
                  </tr>
                  <?php $total += $val[1] * $row['price']; ?>
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
                  <h3><?php if ( $total >= 60){ echo 'Free';}else{echo '-';} ?></h3>
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
