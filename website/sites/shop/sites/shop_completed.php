  <?php
    $_SESSION['checkoutstep'] = 1;
    unset($_SESSION['wk']);
   ?>
    <main>
      <div id="shop-checkout-completed">
        <h2>Thank you for your Order!</h2>
        <a href="index.php?page=home" class="shop-completed-btn">Continue Shopping</a>
      </div>
    </main>
