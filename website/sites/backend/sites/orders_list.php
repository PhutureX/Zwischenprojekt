<h2>Orders</h2>
<!-- Filter Formular, es werden mit nur einem Filter Bestellnummer, Name & Email gefiltert -->
<form action="" method="post" enctype="multipart/form-data">
    <label for="filter">Filter</label>
    <input type="text" id="orderfilter" name="orderfilter" placeholder="Ordernumber or Name...">
    <input type="submit" name="dofilter" value="Filter">
</form>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
    <thead>
    <tr>
        <th width="200px">Order Number</th>
        <th>Customer</th>
        <th width="200px">Order Date</th>
        <th>Status</th>
        <th width="150px">Actions</th>
    </tr>
    </thead>
    <tbody>
    <?php
    if(!isset($_POST['dofilter']) ){
        $sql = "SELECT orders.*, users.first_name, users.last_name, users.email FROM orders LEFT JOIN users ON orders.user_id = users.id ORDER BY id DESC";
        $res = mysqli_query($dblink, $sql);

        while($row = mysqli_fetch_assoc($res)):
    ?>
        <tr>
            <td><?php echo $row['ordernumber'] ?></td>
            <td><?php echo $row['first_name'] . ' ' . $row['last_name'] . ' (' . $row['email'] . ')'; ?></td>
            <td><?php echo date('d.m.Y - h:i', $row['created_at']); ?></td>
            <td><?php
                if ($row['status'] === "0"){
                    echo "Processing";
                }elseif($row['status'] === "1"){
                    echo "Shipped";
                }elseif($row['status'] === "2"){
                    echo "Cancled";
                }elseif($row['status'] === "3"){
                    echo "Finished";
                }
                ?>
            </td>
            <td>
                <a href="index.php?page=orders&action=view&id=<?php echo $row['id']; ?>">Show</a> | <a href="index.php?page=orders&action=delete&id=<?php echo $row['id']; ?>">Delete</a>
            </td>
        </tr>
    <?php endwhile;
    }else{
        echo "<h3>Search Results for \"$search\"</h3>";
        $sql = "SELECT orders.*, users.first_name, users.last_name, users.email FROM orders LEFT JOIN users ON orders.user_id = users.id WHERE ordernumber LIKE '%".$_POST['orderfilter']."%' OR first_name LIKE '%".$_POST['orderfilter']."%' OR last_name LIKE '%".$_POST['orderfilter']."%' OR email LIKE '%".$_POST['orderfilter']."%' ORDER BY id DESC";
        $res = mysqli_query($dblink, $sql);

        while($row = mysqli_fetch_assoc($res)):
    ?>
    <tr>
        <td><?php echo $row['ordernumber'] ?></td>
        <td><?php echo $row['first_name'] . ' ' . $row['last_name'] . ' (' . $row['email'] . ')'; ?></td>
        <td><?php echo date('d.m.Y - h:i', $row['created_at']); ?></td>
        <td><?php
            if ($row['status'] === "0"){
                echo "Processing";
            }elseif($row['status'] === "1"){
                echo "Shipped";
            }elseif($row['status'] === "2"){
                echo "Cancled";
            }elseif($row['status'] === "3"){
                echo "Finished";
            }
            ?>
        </td>
        <td>
            <a href="index.php?page=orders&action=view&id=<?php echo $row['id']; ?>">Show</a> | <a href="index.php?page=orders&action=delete&id=<?php echo $row['id']; ?>">Delete</a>
        </td>
    </tr>
<?php endwhile;
    } ?>
    </tbody>
</table>
