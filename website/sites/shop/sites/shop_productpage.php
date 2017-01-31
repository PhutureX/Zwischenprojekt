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
                <form id="cart-add" action="#" method="post">
                  <div class="cart-add-size">
                    <h4>Size</h4>
                    <select class="shop-product-select">
                      <option value="S">S</option>
                      <option value="M">M</option>
                      <option disabled="disabled" value="L">L - sold out</option>
                      <option value="XL">XL</option>
                      <option value="2XL">2XL</option>
                      <option value="3XL">3XL</option>
                    </select>
                    <button type="submit" id="cart-add-button">Add To Cart</button>
                  </div>
                  <div class="cart-add-quantity">
                    <h4>Quantity</h4>
                    <select class="shop-product-select">
                      <option value="">1</option>
                      <option value="">2</option>
                      <option value="">3</option>
                      <option value="">4</option>
                      <option value="">5</option>
                      <option value="">6</option>
                      <option value="">7</option>
                      <option value="">8</option>
                      <option value="">9</option>
                      <option value="">10</option>
                    </select>
                  </div>
                </form>
                <p><?php echo $row['description']; ?></p>
              </div>
            </div>
        </div>
    <script type="text/javascript">
      function changeImage(a) {
      document.getElementById("shop-product-mainimg").src=a;
      }
    </script>
