<h2>User</h2>

<table cellspacing="0">
    <thead>
    <tr>
        <th width="12.5%" class="table_text">Username</th>
        <th width="12.5%" class="table_text">First Name</th>
        <th width="12.5%" class="table_text">Last Name</th>
        <th width="12.5%" class="table_text">E-Mail</th>
        <th width="17.5%" class="table_text">Address</th>
        <th width="12.5%" class="table_center">Phone</th>
        <th width="7.5%" class="table_center">Admin</th>
        <th width="12.5%" class="table_center">Settings</th>
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
            <td class="table_text"><?php echo $row['address'] . "<br>" . $row['zip'] . " " . $row['city'] . ", " . $row['country'];?></td>
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
<div class="btn space">
<a href="index.php?page=user&action=new">Create User</a>
</div>
