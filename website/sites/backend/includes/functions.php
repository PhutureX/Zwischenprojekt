<?php 

if( isset($_POST['insertnews']) ){

    $time = time();

    $newsimg = "newsimg/". $_FILES['newsimg']['name'];
    move_uploaded_file($_FILES['newsimg']['tmp_name'], '../' . $newsimg);

    $sql = "INSERT INTO news
        (title, preview, content, created_at, author_id, headerimg)
        VALUES
        ('{$_POST['title']}', '{$_POST['preview']}', '{$_POST['content']}', '$time', '{$_SESSION['uid']}', '$newsimg')";

    mysqli_query($dblink, $sql);

    header('Location:index.php?page=news');
}

if( isset($_POST['updatenews']) ){

    if( ! empty($_FILES['newsimg']['tmp_name']) ){
        $newsimg = "newsimg/". $_FILES['newsimg']['name'];
        move_uploaded_file($_FILES['newsimg']['tmp_name'], '../' . $newsimg);

        $sql = "UPDATE news SET title = '{$_POST['title']}', preview = '{$_POST['preview']}', content = '{$_POST['content']}', headerimg = '$newsimg' WHERE id = '{$_GET['id']}'";
    }else{
        $sql = "UPDATE news SET title = '{$_POST['title']}', preview = '{$_POST['preview']}', content = '{$_POST['content']}' WHERE id = '{$_GET['id']}'";

    }
    mysqli_query($dblink, $sql);
}
