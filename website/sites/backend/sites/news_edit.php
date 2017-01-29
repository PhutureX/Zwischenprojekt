<h3>News editieren</h3>

<?php
$sql = "SELECT * FROM news WHERE id = '{$_GET['id']}' LIMIT 1";
$res = mysqli_query($dblink, $sql);

$row = mysqli_fetch_assoc($res);
?>

<div class="newsheader">
    <img src="../../<?php echo $row['headerimg']; ?>" alt="<?php echo $row['title']?>">
</div>

<form action="" method="post" enctype="multipart/form-data">

    <h4>Title</h4>
    <input type="text" name="title" id="title" value="<?php echo $row['title']; ?>" class="full_form">

    <h4>Preview</h4>
    <textarea name="preview" id="preview" class="form_text_preview"><?php echo $row['preview']; ?> </textarea>

    <h4>Content</h4>
    <textarea name="content" id="content" class="form_text"><?php echo $row['content']; ?></textarea>

    <h4>Header</h4>
    <input type="file" name="headerimg">

    <h4>Img1</h4>
    <input type="file" name="img1">

    <h4>Img2</h4>
    <input type="file" name="img2">

    <h4>Img3</h4>
    <input type="file" name="img3">

    <div class="btn">
    <input type="submit" name="updatenews" value="Update Now!">
    </div>

</form>
