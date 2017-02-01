<h2>Tours</h2>

<table cellspacing="0">
    <thead>
    <tr>
        <th width="20%">Title</th>
        <th width="16%">feat.</th>
        <th width="16%">Location</th>
        <th width="16%">Day</th>
        <th width="16%">Buy here</th>
        <th width="16%">Settings</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $sql = "SELECT * FROM tours ORDER BY id DESC";
    $res = mysqli_query($dblink, $sql);

    while($row = mysqli_fetch_assoc($res)){
        ?>
        <tr>
            <td class="table_center"><?php echo $row['title']; ?></td>
            <td class="table_center"><?php echo $row['feat']; ?></td>
            <td class="table_center"><?php echo $row['location'] . " in " . $row['city'] . ", " . $row['country']; ?></td>
            <td class="table_center"><?php echo $row['tourday']; ?></td>
            <td class="table_center"><a href="<?php echo $row['ticketlink']; ?>">Ticketlinks</a></td>

            <td class="table_center">
                <a href="index.php?page=tours&action=edit&id=<?php echo $row['id']; ?>">Edit</a> |
                <a href="index.php?page=tours&action=delete&id=<?php echo $row['id']; ?>">Delete</a>
            </td>
        </tr>
    <?php } ?>
    </tbody>
</table>
<div class="btn">
<a href="index.php?page=tours&action=new">Create Tourday</a>
</div>
