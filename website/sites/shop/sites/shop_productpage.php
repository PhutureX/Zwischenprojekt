<div id="shop-product" class="shop-wrapper">
            <ol class="breadcrumbs">
                <li><a href="../index.html">Shop</a></li>
                <li><a href="shop_list.html">Merch</a></li>
                <li><a href="#">Product Name</a></li>
            </ol>
            <div class="shop-product-page">
              <div class="shop-product-gallery">
                <img id="shop-product-mainimg" src="img/shop/shirt1.png" alt="">
                <div class="shop-product-gallery-thumbnails">
                  <div id="shop-product-thumbimg">
                    <img src="img/shop/shirt1.png" onclick='changeImage("img/shop/shirt1.png");'>
                    <img src="img/shop/shirt2.png" onclick='changeImage("img/shop/shirt2.png");'>
                    <img src="img/shop/shirt3.png" onclick='changeImage("img/shop/shirt3.png");'>
                  </div>
                </div>
              </div>
              <div class="shop-product-info">
                <h2>Product Name</h2>
                <h3>€ 12.99</h3>
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
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
              </div>
            </div>
        </div>
    <script type="text/javascript">
      function changeImage(a) {
      document.getElementById("shop-product-mainimg").src=a;
      }
    </script>
