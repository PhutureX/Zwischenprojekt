<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Red July</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="libaries/flexslider/flexslider.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script src="libaries/flexslider/jquery.flexslider.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
      $('.flexslider').flexslider({
      animation: "slide"
      });
    });
</script>

<!-- Header -->

  </head>
  <body>
    <?php
    $sql = "SELECT * FROM nav ORDER BY position";
    $res = mysqli_query($dblink, $sql);
    ?>
    <header>

          <nav>
            <a href="index.html"><img src="img/logos/headerlogo.png" alt="Logo"/></a>
              <ul>
                <?php


                while($row = mysqli_fetch_assoc($res)){
                  ?>

                <li><a href="index.php?page=<?php echo $row['link']; ?>"><?php echo $row['name']; ?></a></li>
              <?php } ?>
              <li><a href="sites/shop/index.php">Shop</a></li>
              <?php
              if( $_SESSION['login'] == 1){
                    echo '<li><a href="logout.php">Logout</a></li>';
                    echo '<li><a href="index.php?page=dashboard">Dashboard</a></li>';
                    if($_SESSION['is_admin'] == 1){
                    echo '<li><a href="sites/backend/index.php">Backend</a></li>';}
                }else{
                    echo '<li><a href="index.php?page=register">Register</a></li>';
                    echo '<li><a href="index.php?page=login">Login</a></li>';

                } ?>
              </ul>
          </nav>
          <?php
          if($page === "home"){?>
            <script>
            $('header').addClass("home-header");
            $('header nav').addClass("transform-bg");
            $('header nav img').addClass("showimg");
            $('header nav ul li a').addClass("transform-menu");

            $(window).scroll(function() {
            if ($(this).scrollTop() > 1){
                $('header nav').removeClass("transform-bg");
                $('header nav img').removeClass("showimg");
                $('header nav ul li a').removeClass("transform-menu");
              }
              else{
                $('header nav').addClass("transform-bg");
                $('header nav img').addClass("showimg");
                $('header nav ul li a').addClass("transform-menu");
              }
            });
            </script>
        <div class="headerimg">
          <div class="headercontent">
            <h2>Red July</h2>
            <p>
              Welcome to the official Red July homepage where you can find the latest news, tourdates and the bands history. Make sure to check out our music and merchandise in our store!
            </p>
            <div>
              <a class="headerbtn1" href="#">About Us</a>
              <a class="headerbtn2" href="sites/shop/index.php">Shop</a>
            </div>
          </div>
        </div>
        <?php } ?>
    </header>
    <main class="wrapper">
