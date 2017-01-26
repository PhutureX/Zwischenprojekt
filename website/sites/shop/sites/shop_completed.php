  <?php
    $_SESSION['checkoutstep'] = 1;
    echo $_SESSION['guest_email'];
    echo "<br>";
    echo $_SESSION['guest_fname'];
    echo "<br>";
    echo $_SESSION['guest_lname'];
    echo "<br>";
    echo $_SESSION['guest_address'];
    echo "<br>";
    echo $_SESSION['guest_zip'];
    echo "<br>";
    echo $_SESSION['guest_city'];
    echo "<br>";
    echo $_SESSION['guest_country'];
    echo "<br>";
    echo $_SESSION['guest_tel'];
    echo "<br>";
    echo $_SESSION['guest_shipping'];
    echo "<br>";
    echo $_SESSION['guest_payment'];
   ?>
    <main>
      <div id="shop-checkout-completed">
        <h2>Thank you for your Order!</h2>
        <a href="index.php?page=home" class="shop-completed-btn">Continue Shopping</a>
      </div>
    </main>
