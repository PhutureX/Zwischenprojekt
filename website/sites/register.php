<div class="breadcrumbs">
        <a href="index.php">Home</a><p>></p><a href="register.php">Register</a>
      </div>


    <div class="register">


    <h2>Register</h2>

    <div class="register_description">
      <p>Please fill every required field marked with * .</p>
    </div>
    <?php

                if($errors === true){
                    echo '<div class="errors">';
                    foreach($errorsMsg as $error){
                        echo "<p>$error</p>";
                    }
                    echo '</div>';
                }
                ?>


    <form action="" method="post" enctype="multipart/form-data" class="register_form">

      <div class="register_box">
          <input type="text" placeholder="Username*" class="register_full_form" name="uname" id="uname">
          <input type="password" placeholder="Password*" class="register_half_form" name="password" id="password">
          <input type="password" placeholder="Repeat password*" class="register_half_form" name="password_wh" id="password_wh">
          <input type="text" placeholder="First Name*" class="register_half_form" name="fname" id="fname">
          <input type="text" placeholder="Last Name*" class="register_half_form" name="lname" id="lname">
          <input type="text" placeholder="Email*" class="register_full_form split" name="email" id="email">
          <input type="text" placeholder="Address*" class="register_full_form" name="address" id="address">
          <input type="text" placeholder="City*" class="register_full_form" name="city" id="city">
          <select class="register_half_form" name="register_country" name="country" id="country">
            <option value="Austria" selected>Austria</option>
            <option value="Germany">Germany</option>
            <option value="Japan">Japan</option>
            <option value="United Kingdom">United Kingdom</option>
            <option value="United Stated">United States</option>
            <option value="Canada">Canada</option>
          </select>
          <input type="text" placeholder="Postal Code*" class="register_half_form" name="zip" id="zip">
          <input type="tel" placeholder="Phone" class="register_full_form" name="phone" id="phone">

      </div>



        <div class="btn">
          <input type="submit" href="register_success.html" name="register" id="register" value="Register" >
        </div>

      </form>
