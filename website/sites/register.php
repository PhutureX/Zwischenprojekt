<div class="breadcrumbs">
        <a href="../index.html">Home</a><p>></p><a href="register.html">Register</a>
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
        <div class="register_left register">
          <input type="text" placeholder="Username*" class="register_full_form" name="uname" id="uname">
          <input type="password" placeholder="Password*" class="register_half_form" name="password" id="password">
          <input type="password" placeholder="Repeat password*" class="register_half_form" name="password_wh" id="password_wh">
          <input type="text" placeholder="First Name*" class="register_half_form split" name="fname" id="fname">
          <input type="text" placeholder="Last Name*" class="register_half_form" name="lname" id="lname">
          <input type="text" placeholder="Email*" class="register_full_form" name="email" id="email">
          <input type="text" placeholder="Address*" class="register_full_form" name="adress" id="adress">
          <input type="text" placeholder="City*" class="register_full_form" name="city" id="city">
          <select class="register_half_form" name="register_country" name="country" id="country">
            <option value="">Austria</option>
            <option value="">Germany</option>
            <option value="">Japan</option>
            <option value="">United Kingdom</option>
            <option value="">United States</option>
          </select>
          <input type="text" placeholder="Postal Code*" class="register_half_form register_postal_fix" name="zip" id="zip">
          <input type="tel" placeholder="Phone" class="register_full_form" name="phone" id="phone">
        </div>
      </div>




          <input type="submit" href="register_success.html" class="register_send" name="register" id="register" value="Register" >

      </form>
