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
                    <input type="radio" id="payment-option-1" name="payment-option" checked>
                    <label for="payment-option-1">Credit Card
                      <p>
                        <i class="fa fa-cc-visa" aria-hidden="true"></i>
                        <i class="fa fa-cc-mastercard" aria-hidden="true"></i>
                        <i class="fa fa-cc-amex" aria-hidden="true"></i>
                      </p>
                    </label>
                      <input type="text" placeholder="Card number" class="shop-payment-form-1">
                      <input type="text" placeholder="Name on card" class="shop-payment-form-2">
                      <input type="text" placeholder="MM/YY" class="shop-payment-form-3">
                      <input type="text" placeholder="CVV" class="shop-payment-form-3">
                  </li>
                  <li class="checkout-options-element">
                    <input type="radio" id="payment-option-2" name="payment-option">
                    <label for="payment-option-2"><img src="img/shop-payment/PayPal.png" alt="PayPal"></label>
                  </li>
                  <li class="checkout-options-element">
                    <input type="radio" id="payment-option-3" name="payment-option">
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
