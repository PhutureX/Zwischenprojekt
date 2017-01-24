<h2>News editieren</h2>

<?php
$sql = "SELECT * FROM news WHERE id = '{$_GET['id']}' LIMIT 1";
$res = mysqli_query($dblink, $sql);

$row = mysqli_fetch_assoc($res);
?>

<div class="newsimg" style="float: right;">
    <img src="../<?php echo $row['headerimg']; ?>" alt="">
</div>
<form action="" method="post" enctype="multipart/form-data">

    <label for="title">Titel der News</label>
    <input type="text" name="title" id="title" value="<?php echo $row['title']; ?>">

    <label for="preview">Preview der News</label>
    <textarea name="preview" id="preview"><?php echo $row['preview']; ?></textarea>

    <label for="content">Content der News</label>
    <textarea name="content" id="content"><?php echo $row['content']; ?></textarea>

    <input type="file" name="newsimg">
    <br><br>
    <input type="submit" name="updatenews" value="News updaten">

</form>
