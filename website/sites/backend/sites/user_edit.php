
<?php
$sql = "SELECT * FROM users WHERE id = '{$_GET['id']}' LIMIT 1";
$res = mysqli_query($dblink, $sql);

$row = mysqli_fetch_assoc($res);
?>

<h2>Edit <?php echo $row['uname']; ?></h2>

<form action="" method="post" enctype="multipart/form-data" class="register_form">

  <div class="register_box">
      <input type="text" value="<?php echo $row['uname']; ?>" class="register_full_form" name="uname" id="uname">
      <input type="password" placeholder="Password" class="register_full_form" name="password" id="password">
      <input type="text" value="<?php echo $row['first_name']; ?>" class="register_half_form" name="fname" id="fname">
      <input type="text" value="<?php echo $row['last_name']; ?>" class="register_half_form" name="lname" id="lname">
      <input type="text" value="<?php echo $row['email']; ?>" class="register_full_form split" name="email" id="email">
      <input type="text" value="<?php echo $row['address']; ?>" class="register_full_form" name="address" id="address">
      <input type="text" value="<?php echo $row['city']; ?>" class="register_full_form" name="city" id="city">
      <select class="register_half_form" name="country" id="country">
        <option value="Austria" <?php if($row['country'] == "Austria"){echo "selected";} ?>>Austria</option>
        <option value="Germany" <?php if($row['country'] == "Germany"){echo "selected";} ?>>Germany</option>
        <option value="Japan" <?php if($row['country'] == "Japan"){echo "selected";} ?>>Japan</option>
        <option value="United Kingdom" <?php if($row['country'] == "United Kingdom"){echo "selected";} ?>>United Kingdom</option>
        <option value="United States" <?php if($row['country'] == "United States"){echo "selected";} ?>>United States</option>
        <option value="Canada" <?php if($row['country'] == "Canada"){echo "selected";} ?>>Canada</option>
      </select>
      <select class="register_half_form" name="is_admin" id="bepermission">
        <option value="0" <?php if($row['is_admin'] == 0){echo "selected";} ?>>User</option>
        <option value="1" <?php if($row['is_admin'] == 1){echo "selected";} ?>>Admin</option>
      </select>
      <input type="text" value="<?php echo $row['zip']; ?>" class="register_full_form" name="zip" id="zip">
      <input type="tel" value="<?php echo $row['phone']; ?>" class="register_full_form" name="phone" id="phone">


  </div>



    <div class="btn">
      <input type="submit" href="register_success.html" name="updateuser" id="register" value="Update Now!" >
    </div>

  </form>
