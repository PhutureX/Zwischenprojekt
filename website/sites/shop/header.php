<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Red July</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="../../css/font-awesome.min.css">
    <!-- Slider Libary -->
    <link rel="stylesheet" type="text/css" href="libaries/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="libaries/slick/slick-theme.css"/>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- -->
    <script language="JavaScript" type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
  </head>
  <body>
    <header>
      <div class="shop-header-logo">
        <a href="index.php?page=home"><h1>Red July <span>Shop</span></h1></a>
      </div>
      <nav class="shop-nav">
        <ul>
          <li><a href="index.php?page=merch">Merch &#9662;</a>
            <ul>
              <li><a href="index.php?page=shirts">Shirts<span>&#10143;</span></a></li>
              <li><a href="index.php?page=hoodies">Hoodies<span>&#10143;</span></a></li>
              <li><a href="index.php?page=hats">Hats<span>&#10143;</span></a></li>
              <li><a href="index.php?page=backpacks">Backpacks<span>&#10143;</span></a></li>
              <li><a href="index.php?page=tableware">Tableware<span>&#10143;</span></a></li>
              <li><a href="index.php?page=other">Other<span>&#10143;</span></a></li>
            </ul>
          </li>
          <li><a href="index.php?page=albums">Albums &#9662;</a>
            <ul>
              <li><a href="index.php?page=productpage&id=14">Album 1<span>&#10143;</span></a></li>
              <li><a href="index.php?page=productpage&id=15">Album 2<span>&#10143;</span></a></li>
            </ul>
          </li>
          <li><a href="index.php?page=downloads">Digital Downloads</a></li>
          <li><a href="index.php?page=new">New Products</a></li>
          <li><a href="index.php?page=offers">Special Offers</a></li>
        </ul>
      </nav>
      <nav class="shop-nav-list">
        <ul>
          <li><a href="index.php?page=cart"><i class="fa fa-shopping-cart" aria-hidden="true"><div class="cart-count"><?php echo count($_SESSION['wk']); ?></div></i></a></li>
          <li><a href="#"><i class="fa fa-eur" aria-hidden="true"></i></a>
            <ul>
              <li><a href="#"><i class="fa fa-usd" aria-hidden="true"></i> USD</a></li>
              <li><a href="#"><i class="fa fa-gbp" aria-hidden="true"></i> GBP</a></li>
              <li><a href="#"><i class="fa fa-jpy" aria-hidden="true"></i> YPN</a></li>
            </ul>
          </li>
          <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i></a>
            <ul>
              <?php

                if( $_SESSION['login'] == 1){
                  echo '<li><a href="index.php?page=settings.php">Settings<span>&#10143;</span></a></li>';
                  echo '<li><a href="logout.php">Logout<span>&#10143;</span></a></li>';
                }else{
                  echo '<li><a href="../../index.php?page=login">Login<span>&#10143;</span></a></li>';
                }

               ?>
            </ul>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-search" aria-hidden="true">
                <form action="#">
                  <input id="header-search" name="search" type="text" placeholder="Search...">
                  <input id="header-search-submit" type="submit">
                </form>
              </i>
            </a>
          </li>
        </ul>
      </nav>
    </header>
    <main>
