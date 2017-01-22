<div class="breadcrumbs">
        <a href="../index.html">Home</a><p>></p><a href="contact_us.html">Contact Us</a>
      </div>

    <div class="login_site">
    <h2>Login</h2>

    <div>
      <p>Don't have an account yet? Register <a href="index.php?page=register">here</a> now!</p>
    </div>

  </div>

  <?php if($_SESSION['logincount'] < 3){

                    if($errors === true){
                        echo '<div class="errors">';

                        foreach( $errorsMsg as $error ){
                            echo "<p>$error</p>";
                        }

                        echo '</div>';
                    }

                ?>

    <form action ="" method="post">
      <div class="login_box">
          <input type="text" placeholder="Enter Username" class="login_name" name="uname" id="uname">
          <input type="password" placeholder="Password" class="login_password" name="password" id="password">

          <input type="submit" class="login_button" name="login" id="login" value="Login" >
      </div>

    </form>
    <?php
                }else{
                    $timeleft = ($_SESSION['logintimeout'] + 5) - time();
                    echo "<div class=\"errors\"><p>Ooops! Your login was invalid too many times.Try again in $timeleft Seconds.</p></div>";
                }
                ?>
