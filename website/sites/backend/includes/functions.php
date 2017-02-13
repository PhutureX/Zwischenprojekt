<?php

if( isset($_POST['insertnews']) ){

    $time = time();

    $newsimg = "img/news/" . $_FILES['headerimg']['name'];
    move_uploaded_file($_FILES['headerimg']['tmp_name'], '../../' . $newsimg);

    $img1 = "img/news/" . $_FILES['img1']['name'];
    move_uploaded_file($_FILES['img1']['tmp_name'], '../../' . $img1);

    $img2 = "img/news/" . $_FILES['img2']['name'];
    move_uploaded_file($_FILES['img2']['tmp_name'], '../../' . $img2);

    $img3 = "img/news/" . $_FILES['img3']['name'];
    move_uploaded_file($_FILES['img3']['tmp_name'], '../../' . $img3);

    $sql = "INSERT INTO news
        (title, preview, content, created_at, author_id, headerimg, img1, img2, img3)
        VALUES
        ('{$_POST['title']}', '{$_POST['preview']}', '{$_POST['content']}', '$time', '{$_SESSION['uid']}', '$newsimg', '$img1', '$img2', '$img3' )";

    mysqli_query($dblink, $sql);

    header('Location:index.php?page=news');
}

if( isset($_POST['updatenews']) ){

    if( ! empty($_FILES['headerimg']['tmp_name']) ){
      $newsimg = "img/news/" . $_FILES['headerimg']['name'];
      move_uploaded_file($_FILES['headerimg']['tmp_name'], '../../' . $newsimg);

        $sql = "UPDATE news SET title = '{$_POST['title']}', preview = '{$_POST['preview']}', content = '{$_POST['content']}', headerimg = '$newsimg' WHERE id = '{$_GET['id']}'";

    }elseif( ! empty($_FILES['img1']['tmp_name']) ){
        $img1 = "img/news/" . $_FILES['img1']['name'];
        move_uploaded_file($_FILES['img1']['tmp_name'], '../../' . $img1);

        $sql = "UPDATE news SET title = '{$_POST['title']}', preview = '{$_POST['preview']}', content = '{$_POST['content']}', img1 = '$img1' WHERE id = '{$_GET['id']}'";
    }elseif( ! empty($_FILES['img2']['tmp_name']) ){
        $img2 = "img/news/" . $_FILES['img2']['name'];
        move_uploaded_file($_FILES['img2']['tmp_name'], '../../' . $img2);

        $sql = "UPDATE news SET title = '{$_POST['title']}', preview = '{$_POST['preview']}', content = '{$_POST['content']}', img2 = '$img2' WHERE id = '{$_GET['id']}'";
    }elseif( ! empty($_FILES['img3']['tmp_name']) ){
        $img3 = "img/news/" . $_FILES['img3']['name'];
        move_uploaded_file($_FILES['img3']['tmp_name'], '../../' . $img3);

        $sql = "UPDATE news SET title = '{$_POST['title']}', preview = '{$_POST['preview']}', content = '{$_POST['content']}', img3 = '$img3' WHERE id = '{$_GET['id']}'";
    }else{
        $sql = "UPDATE news SET title = '{$_POST['title']}', preview = '{$_POST['preview']}', content = '{$_POST['content']}' WHERE id = '{$_GET['id']}'";

    }
    mysqli_query($dblink, $sql);
}

if( isset($_POST['insertuser']) ){

    $salt = rand(10000, 99999);
    $password = sha1($_POST['password'] . $salt) . ':' . $salt;

    $sql = "INSERT INTO users (uname, first_name, last_name, password, email, address, zip, city, country, phone) VALUES
    ('{$_POST['uname']}', '{$_POST['fname']}', '{$_POST['lname']}', '$password', '{$_POST['email']}', '{$_POST['address']}', '{$_POST['zip']}',
      '{$_POST['city']}', '{$_POST['country']}', '{$_POST['phone']}' )";

    mysqli_query($dblink, $sql);

    header('Location: index.php?page=user');
    }



if( isset($_POST['updateuser']) ){

  if( ! empty($_POST['password']) ){

    $salt = rand(10000, 99999);
    $password = sha1($_POST['password'] . $salt) . ':' . $salt;

    $sql = "UPDATE users SET uname = '{$_POST['uname']}', first_name = '{$_POST['fname']}', last_name = '{$_POST['lname']}',
    password = '$password', email = '{$_POST['email']}', address = '{$_POST['address']}', zip = '{$_POST['zip']}', city ='{$_POST['city']}', country = '{$_POST['country']}', phone = '{$_POST['phone']}',
    is_admin = '{$_POST['is_admin']}' WHERE id = '{$_GET['id']}'";
    mysqli_query($dblink, $sql);
  }else{
    $sql = "UPDATE users SET uname = '{$_POST['uname']}', first_name = '{$_POST['fname']}', last_name = '{$_POST['lname']}', email = '{$_POST['email']}', address = '{$_POST['address']}', zip = '{$_POST['zip']}',
    city = '{$_POST['city']}', country = '{$_POST['country']}', phone = '{$_POST['phone']}', is_admin = '{$_POST['is_admin']}' WHERE id = '{$_GET['id']}'";
    mysqli_query($dblink, $sql);
  }
    }

if( isset($_POST['inserttour']) ){

    $sql = "INSERT INTO tours (title, feat, location, city, country, tourday, ticketlink) VALUES ( '{$_POST['tourtitle']}', '{$_POST['tourfeat']}', '{$_POST['tourlocation']}', '{$_POST['tourcity']}', '{$_POST['tourcountry']}', '{$_POST['tourday']}')";

    mysqli_query($dblink, $sql);

    header('Location: index.php?page=tours');
    }

if( isset($_POST['updatetour']) ){
    $sql = "UPDATE tours
    SET title = '{$_POST['tourtitle']}', feat = '{$_POST['tourfeat']}', location = '{$_POST['tourlocation']}', city = '{$_POST['tourcity']}', country = '{$_POST['tourcountry']}', tourday = '{$_POST['tourday']}'
    WHERE id = '{$_GET['id']}'";
    mysqli_query($dblink, $sql);
}

if( isset($_POST['editstatus']) ){

    $sql = "UPDATE orders SET status = '{$_POST['status']}' WHERE id = '{$_GET['id']}'";
    mysqli_query($dblink, $sql);

    header('Location: index.php?page=orders');
    exit();
}

if( isset($_POST['dofilter']) ){
    $search = $_POST['orderfilter'];
}

?>
