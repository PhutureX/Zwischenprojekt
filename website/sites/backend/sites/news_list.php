<h2>News</h2>

<table cellspacing="0">
    <thead>
    <tr>
        <th>Title</th>
        <th width="30%">created at</th>
        <th width="25%">Settings</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $sql = "SELECT * FROM news ORDER BY id DESC";
    $res = mysqli_query($dblink, $sql);

    while($row = mysqli_fetch_assoc($res)){
        ?>
        <tr>
            <td class="table_text"><?php echo $row['title']; ?></td>
            <td class="table_center"><?php echo date('d.m.Y', $row['created_at']); ?></td>
            <td class="table_center">
                <a href="index.php?page=news&action=edit&id=<?php echo $row['id']; ?>">Edit</a> |
                <a href="index.php?page=news&action=delete&id=<?php echo $row['id']; ?>">Delete</a>
            </td>
        </tr>
    <?php } ?>
    </tbody>
</table>
<div class="btn">
<a href="index.php?page=news&action=new">Create News</a>
</div>
