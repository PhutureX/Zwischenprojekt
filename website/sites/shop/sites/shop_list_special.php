<div id="shop-list" class="shop-wrapper">
            <ol class="breadcrumbs">
                <li><a href="index.php?page=home">Shop</a></li>
                <li><a href="#">Special Offers</a></li>
            </ol>
            <h2>Special Offers</h2>
            <div class="shop-list-box">
              <?php
                $sql = "SELECT products.id,category_id, name, price, sale, price_sale, min(product_imgs.path) AS path FROM products LEFT JOIN product_imgs ON products.id = product_imgs.product_id WHERE sale = 1 GROUP BY products.id";
                $res = mysqli_query($dblink, $sql);

                while($row = mysqli_fetch_assoc($res)){
              ?>
                <div class="shop-list-element">
                  <a href="index.php?page=productpage&id=<?php echo $row['id']; ?>">
                    <img src="<?php echo $row['path']; ?>" alt="<?php echo $row['name']; ?>">
                    <span>View Product</span>
                    <h3><?php echo $row['name']; ?></h3>
                    <p>
                      <?php
                      $price = number_format($row['price'], 2);
                      if( $row['sale'] == 1){
                        $priceSale = number_format($row['price_sale'], 2);
                        echo "<s>&euro; $price </s>&euro; $priceSale";
                      }else{
                        echo "&euro; " . $price;
                      }
                      ?>
                   </p>
                  </a>
                </div>
              <?php
                }
              ?>
            </div>
          </div>
