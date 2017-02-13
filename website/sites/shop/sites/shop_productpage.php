<?php
  $sql = "SELECT products.*, product_categories.name AS category FROM products LEFT JOIN product_categories ON products.category_id = product_categories.id WHERE products.id = '{$_GET['id']}'";
  $res = mysqli_query($dblink, $sql);
  $row = mysqli_fetch_assoc($res);
 ?>
<div id="shop-product" class="shop-wrapper">
            <ol class="breadcrumbs">
                <li><a href="index.php?page=home">Shop</a></li>
                <li><a href="index.php?page=<?php echo lcfirst($row['category']); ?>"><?php echo $row['category']; ?></a></li>
                <li><a href="#"><?php echo $row['name']; ?></a></li>
            </ol>
            <?php
              if( $shop_errors === true){
                foreach( $shop_errorsMsg as $error){
                  echo "<p>$error</p>";
                }
              }
             ?>
            <div class="shop-product-page">
              <div class="shop-product-gallery">
                <?php
                  $sql2 = "SELECT * FROM product_imgs WHERE product_id = '{$row['id']}'";
                  $res2 = mysqli_query($dblink, $sql2);
                  $row2 = mysqli_fetch_assoc($res2);
                 ?>
                <img id="shop-product-mainimg" src="<?php echo $row2['path']; ?>" alt="<?php echo $row['name']; ?>">
                <div class="shop-product-gallery-thumbnails">
                  <div id="shop-product-thumbimg">
                    <?php
                      $sql3 = "SELECT * FROM product_imgs WHERE product_id = '{$row['id']}'";
                      $res3 = mysqli_query($dblink, $sql2);
                      while( $image = mysqli_fetch_assoc($res3)): ?>
                      <img src="<?php echo $image['path']; ?>" onclick='changeImage("<?php echo $image['path']; ?>");'>
                    <?php endwhile; ?>
                  </div>
                </div>
              </div>
              <div class="shop-product-info">
                <h2><?php echo $row['name']; ?></h2>
                <h3>
                  <?php
                    $price = number_format($row['price'], 2);

                    if( $row['sale'] == 1 ){
                      $priceSale = number_format($row['price_sale'], 2);
                      echo "<s>&euro; $price </s>&euro; $priceSale";
                    }else{
                      echo "&euro; " . $price;
                    }
                  ?>
                </h3>
                <?php
                  if( $row['product_type'] == 0){?>
                    <form id="cart-add" action="#" method="post">
                      <input type="hidden" name="pid" value="<?php echo $row['id']; ?>">
                      <div class="cart-add-size">
                        <h4>Size</h4>
                        <select class="shop-product-select" name="size">
                          <option <?php if( $row['stock_s'] == 0){ echo 'disabled';} ?> value="S">S<?php if( $row['stock_s'] == 0){ echo ' - Sold out';} ?></option>
                          <option <?php if( $row['stock_m'] == 0){ echo 'disabled';} ?> value="M">M<?php if( $row['stock_m'] == 0){ echo ' - Sold out';} ?></option>
                          <option <?php if( $row['stock_l'] == 0){ echo 'disabled';} ?> value="L">L<?php if( $row['stock_l'] == 0){ echo ' - Sold out';} ?></option>
                          <option <?php if( $row['stock_xl'] == 0){ echo 'disabled';} ?> value="XL">XL<?php if( $row['stock_xl'] == 0){ echo ' - Sold out';} ?></option>
                          <option <?php if( $row['stock_2xl'] == 0){ echo 'disabled';} ?> value="2XL">2XL<?php if( $row['stock_2xl'] == 0){ echo ' - Sold out';} ?></option>
                          <option <?php if( $row['stock_3xl'] == 0){ echo 'disabled';} ?> value="3XL">3XL<?php if( $row['stock_3xl'] == 0){ echo ' - Sold out';} ?></option>
                        </select>
                        <button name="insertwk" <?php if ($row['stock'] == 0){echo 'style="background-color:transparent"';} ?>type="submit" id="cart-add-button" <?php if ($row['stock'] == 0){echo 'disabled';} ?>><?php if ($row['stock'] == 0){echo 'Sold Out';}else{echo 'Add to Cart';} ?></button>
                      </div>
                      <div class="cart-add-quantity">
                        <h4>Quantity</h4>
                        <select class="shop-product-select" name="quantity">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select>
                      </div>
                    </form>
                <?php
                  }elseif( $row['product_type'] == 1){?>
                    <form id="cart-add" action="#" method="post">
                      <input type="hidden" name="pid" value="<?php echo $row['id']; ?>">
                      <div class="cart-add-size">
                        <h4>Type</h4>
                        <select class="shop-product-select" name="size">
                          <option value="<?php echo $row['name']; ?>" <?php if( $row['stock'] == 0){ echo 'disabled';} ?>><?php echo $row['name']; ?><?php if( $row['stock'] == 0){ echo ' - Sold out';} ?></option>
                        </select>
                        <button name="insertwk" <?php if ($row['stock'] == 0){echo 'style="background-color:transparent; cursor:not-allowed;"';} ?>type="submit" id="cart-add-button" <?php if ($row['stock'] == 0){echo 'disabled';} ?>><?php if ($row['stock'] == 0){echo 'Sold Out';}else{echo 'Add to Cart';} ?></button>
                      </div>
                      <div class="cart-add-quantity">
                        <h4>Quantity</h4>
                        <select class="shop-product-select" name="quantity">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                        </select>
                      </div>
                    </form>
                <?php
              }elseif( $row['product_type'] == 2){?>
                <form id="cart-add" action="#" method="post">
                  <input type="hidden" name="pid" value="<?php echo $row['id']; ?>">
                  <div class="cart-add-size">
                    <h4>Download on</h4>
                    <select class="shop-product-select" id="download-select">
                      <option value="https://apple.com">iTunes</option>
                      <option value="https://amazon.com">Amazon</option>
                      <option value="https://google.com">Google</option>
                    </select>
                    <a href="https://apple.com" id="shop-download-href"><i class="fa fa-cloud-download" aria-hidden="true"></i> Download</a>
                  </div>
                </form>
                <?php
                  }
                 ?>
                <p><?php echo $row['description']; ?></p>
              </div>
            </div>
        </div>
    <script type="text/javascript">
      function changeImage(a) {
      document.getElementById("shop-product-mainimg").src=a;
      }
      var sel = document.getElementById('download-select');
        sel.onchange = function () {
          document.getElementById("shop-download-href").href = this.value;
      }
    </script>
