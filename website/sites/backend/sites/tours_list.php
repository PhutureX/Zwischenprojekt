<h2>Tours</h2>

<table cellspacing="0">
    <thead>
    <tr>
        <th width="20%" class="table_text">Title</th>
        <th width="16%" class="table_center">feat.</th>
        <th width="16%" class="table_center">Location</th>
        <th width="16%" class="table_center">Day</th>
        <th width="16%" class="table_center">Buy here</th>
        <th width="16%" class="table_center">Settings</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $sql = "SELECT * FROM tours ORDER BY id DESC";
    $res = mysqli_query($dblink, $sql);

    while($row = mysqli_fetch_assoc($res)){
        ?>
        <tr>
            <td class="table_text"><?php echo $row['title']; ?></td>
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
<div class="btn space">
<a href="index.php?page=tours&action=new">Create Tourday</a>
</div>
