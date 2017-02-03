<div class="breadcrumbs">
        <a href="index.php">Home</a><p>></p><a href="index.php?page=tours">Tours</a>
      </div>

    <div class="contact_us">
    <h2>Tours</h2>

    <div>
      <p>All our current Tourdates are listed here.</p>
    </div>

<table cellspacing="0">
    <thead>
    <tr>
        <th width="20%">Title</th>
        <th width="16%">feat.</th>
        <th width="16%">Location</th>
        <th width="16%">Day</th>
        <th width="16%">Ticketlinks</th>
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
            <td class="table_center"><a href="<?php echo $row['ticketlink']; ?>">Buy here</a></td>
        </tr>
    <?php } ?>
    </tbody>
</table>
