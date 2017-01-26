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
                    <h3>-</h3>
                  </div>
                </div>
                <div class="shop-checkout-total">
                  <h4>Total</h4>
                  <h4>€11.99</h4>
                </div>
              </div>
            </div>
        </div>
    </main>
