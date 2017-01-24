<h2>Newsverwaltung</h2>
<p>Hier kannst du alle News verwalten.</p>

<table border="0" cellspacing="0" cellpadding="0" width="100%">
    <thead>
    <tr>
        <th>Titel der News</th>
        <th width="200px">Erstellungsdatum</th>
        <th width="100px">Aktionen</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $sql = "SELECT * FROM news ORDER BY id DESC";
    $res = mysqli_query($dblink, $sql);

    while($row = mysqli_fetch_assoc($res)){
        ?>
        <tr>
            <td><?php echo $row['title']; ?></td>
            <td><?php echo date('d.m.Y', $row['created_at']); ?></td>
            <td>
                <a href="index.php?page=news&action=edit&id=<?php echo $row['id']; ?>">Edit</a> |
                <a href="index.php?page=news&action=delete&id=<?php echo $row['id']; ?>">Delete</a>
            </td>
        </tr>
    <?php } ?>
    </tbody>
</table>

<a href="index.php?page=news&action=new" class="btn">Neue News verfassen</a>
