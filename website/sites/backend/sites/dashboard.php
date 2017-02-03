<div class="dash_site">
<h2>Backend</h2>



<table cellspacing="0" class="dashboard">
    <tbody>
      <?php
      $sql = "SELECT * FROM users WHERE id = '{$_SESSION['uid']}'";
      $res = mysqli_query($dblink, $sql);

      $row = mysqli_fetch_assoc($res);
          ?>
      <tr>
        <td class="dash_table_center">Username</td>
        <td class="dash_table_text"><?php echo $row['uname']; ?></td>
      </tr>
      <tr>
        <td class="dash_table_center">Name</td>
        <td class="dash_table_text"><?php echo $row['first_name'] . $row['last_name']; ?></td>
      </tr>
      <tr>
        <td class="dash_table_center">E-Mail</td>
        <td class="dash_table_text"><?php echo $row['email']; ?></td>
      </tr>
      <tr>
        <td class="dash_table_center">Address</td>
        <td class="dash_table_text"><?php echo $row['address'] . "<br>" . $row['zip'] . " " . $row['city'] . ", " . $row['country'];?></td>
      </tr>
      <tr>
        <td class="dash_table_center">Phone</td>
        <td class="dash_table_text"><?php echo $row['phone']; ?></td>
      </tr>
    <?php
    if($row['is_admin'] == 1){
      echo "<tr>
        <td class='dash_table_center'>Status</td>
        <td class='dash_table_text'>Admin</td>
      </tr>";
    }?>
    </tbody>
</table>
</div>
