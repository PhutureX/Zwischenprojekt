<?php

    $_SESSION['checkoutstep'] = 3;

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
              <li><a href="shop_payment.html">Payment</a></li>
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
                <h2>Payment Method</h2>
                <ul class="checkout-options" id="payment-option">
                  <li class="checkout-options-element">
                    <input type="radio" id="payment-option-1" value="Credit Card" name="payment-option" checked>
                    <label for="payment-option-1">Credit Card
                      <p>
                        <i class="fa fa-cc-visa" aria-hidden="true"></i>
                        <i class="fa fa-cc-mastercard" aria-hidden="true"></i>
                        <i class="fa fa-cc-amex" aria-hidden="true"></i>
                      </p>
                    </label>
                      <input type="text" placeholder="Card number" class="shop-payment-form-1" name="CC_number">
                      <input type="text" placeholder="Name on card" class="shop-payment-form-2" name="CC_name">
                      <input type="text" placeholder="MM/YY" class="shop-payment-form-3" name="CC_date">
                      <input type="text" placeholder="CVV" class="shop-payment-form-3" name="CC_CVV">
                  </li>
                  <li class="checkout-options-element">
                    <input type="radio" id="payment-option-2" value="PayPal" name="payment-option">
                    <label for="payment-option-2"><img src="img/shop-payment/PayPal.png" alt="PayPal"></label>
                  </li>
                  <li class="checkout-options-element">
                    <input type="radio" id="payment-option-3" value="Sofort" name="payment-option">
                    <label for="payment-option-3"><img src="img/shop-payment/sofort.png" alt="Sofort"></label>
                  </li>
                </ul>
                <div class="shop-checkout-continue">
                  <a href="shop_shipping.html" class="shop-checkout-return"><span>&larr;</span> Return</a>
                  <input type="submit" class="shop-checkout-btn" name="checkout_step3" value="Complete Order">
                </div>
              </form>
            </div>
            <div class="shop-checkout-box-right">
              <h2>Order Overview</h2>
              <table class="shop-checkout-cart">
                <tbody>
                  <?php
                    $total = 0;
                    $shipping = 0;
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
                  <h3><?php if( $_SESSION['shipping'] == "shipping1" && $total >= 60){echo 'Free'; $shipping = 0; }elseif( $_SESSION['shipping'] == "Post"){echo '€ 4.99'; $shipping = 4.99;}elseif( $_SESSION['shipping'] == "DHL"){echo '€ 9.99'; $shipping = 9.99;}elseif( $_SESSION['shipping'] == "UPS"){echo '€ 12.99'; $shipping = 12.99; } ?></h3>
                </div>
              </div>
              <div class="shop-checkout-total">
                <?php $total = $total + $shipping; ?>
                <h4>Total</h4>
                <h4>&euro; <?php echo $total ?></h4>
              </div>
            </div>
          </div>
        </div>
      </main>
