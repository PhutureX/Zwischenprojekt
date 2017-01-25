<?php

    $_SESSION['checkoutstep'] = 2;

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
                <p><?php echo $row['first_name']; ?> <?php echo $row['last_name']; ?></p>
                <p><?php echo $row['address']; ?></p>
                <p><?php echo $row['zip']; ?> <?php echo $row['city']; ?></p>
                <p><?php echo $row['country']; ?></p>
                <p><a href="#">Edit Shipping Address</a></p>
                <h2>Shipping Method</h2>
                <ul class="checkout-options" id="shipping-option">
                  <li class="checkout-options-element">
                    <input type="radio" id="shipping-option-1" name="shipping-option" checked>
                    <label for="shipping-option-1">Shipping Method 1
                      <p>€ 4.99</p>
                    </label>
                  </li>
                  <li class="checkout-options-element">
                    <input type="radio" id="shipping-option-2" name="shipping-option">
                    <label for="shipping-option-2">Shipping Method 2
                      <p>€ 9.99</p>
                    </label>
                  </li>
                  <li class="checkout-options-element">
                    <input type="radio" id="shipping-option-3" name="shipping-option">
                    <label for="shipping-option-3">Shipping Method 3
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
                  <tr>
                    <td>
                      <img src="img/shop/shirt1.png" alt="Product 1">
                    </td>
                    <td>
                      <h3>Shirt 1</h3>
                      <p>Additional Information</p>
                    </td>
                    <td>
                      <h3>€11.99</h3>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <img src="img/shop/bag1.png" alt="Product 1">
                    </td>
                    <td>
                      <h3>Bag 1</h3>
                      <p>Additional Information</p>
                    </td>
                    <td>
                      <h3>€11.99</h3>
                    </td>
                  </tr>
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
                  <h3>€11.99</h3>
                  <h3>€4.99</h3>
                </div>
              </div>
              <div class="shop-checkout-total">
                <h4>Total</h4>
                <h4>€16.98</h4>
              </div>
            </div>
        </div>
      </div>
    </main>
