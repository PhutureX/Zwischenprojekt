<h3>Create Tour</h3>

<?php
$sql = "SELECT * FROM tours WHERE id = '{$_GET['id']}' LIMIT 1";
$res = mysqli_query($dblink, $sql);

$row = mysqli_fetch_assoc($res);
?>


<form action="" method="post" enctype="multipart/form-data" class="tour_form">

  <div class="tour_box">
      <input type="text" value="<?php echo $row['title']; ?>" class="tour_full_form" name="tourtitle">
      <input type="text" value="<?php echo $row['feat']; ?>" class="tour_full_form" name="tourfeat">
      <input type="text" value="<?php echo $row['location']; ?>" class="tour_full_form split" name="tourlocation">
      <input type="text" value="<?php echo $row['city']; ?>" class="tour_full_form" name="tourcity">
      <input type="text" value="<?php echo $row['country']; ?>" class="tour_full_form" name="tourcountry">
      <input type="text" value="<?php echo $row['tourday']; ?>" class="tour_full_form split" name="tourday">
  </div>




  <div class="btn">
  <input type="submit" name="updatetour" value="Update Now!">

</div>

  </form>
