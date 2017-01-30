<h2>User</h2>

<table cellspacing="0">
    <thead>
    <tr>
        <th width="12.5%">Username</th>
        <th width="12.5%">First Name</th>
        <th width="12.5%">Last Name</th>
        <th width="12.5%">E-Mail</th>
        <th width="12.5%">Address</th>
        <th width="12.5%">Phone</th>
        <th width="12.5%">Admin</th>
        <th width="12.5%">Settings</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $sql = "SELECT * FROM users ORDER BY id DESC";
    $res = mysqli_query($dblink, $sql);

    while($row = mysqli_fetch_assoc($res)){
        ?>
        <tr>
            <td class="table_text"><?php echo $row['uname']; ?></td>
            <td class="table_text"><?php echo $row['first_name']; ?></td>
            <td class="table_text"><?php echo $row['last_name']; ?></td>
            <td class="table_text"><?php echo $row['email']; ?></td>
            <td class="table_text"><?php echo $row['address'] . " " . $row['zip'] . " " . $row['city'] . ", ";
            if( $row['country'] == 0){echo "Austria";}elseif( $row['country'] == 1){echo "Germany";}elseif( $row['country'] == 2){echo "Japan";}elseif( $row['country'] == 3){echo "United Kingdom";}elseif
            ( $row['country'] == 4){echo "United States";} ?></td>
            <td class="table_center"><?php echo $row['phone']; ?></td>
            <td class="table_center"><?php if($row['is_admin'] == 1){echo "X";} ?></td>
            <td class="table_center">
                <a href="index.php?page=user&action=edit&id=<?php echo $row['id']; ?>">Edit</a> |
                <a href="index.php?page=user&action=delete&id=<?php echo $row['id']; ?>">Delete</a>
            </td>
        </tr>
    <?php } ?>
    </tbody>
</table>
<div class="btn">
<a href="index.php?page=user&action=new">Create User</a>
</div>