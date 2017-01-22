<?php
$errors = false;
$errorsMsg = array();


// ###################### REGISTER ########################### //

if( isset($_POST['register']) ){


    if( strlen($_POST['uname']) < 2 ){
        $errors = true;
        array_push($errorsMsg, "Your username must at least be 2 characters long.");
    }

    if( strlen($_POST['fname']) < 2 ){
        $errors = true;
        array_push($errorsMsg, "Your first name must at least be 2 characters long.");
    }

    if( strlen($_POST['lname']) < 2 ){
        $errors = true;
        array_push($errorsMsg, "Your last name must at least be 2 characters long.");
    }

    if( strpos($_POST['email'], "@") === false ){
        $errors = true;
        array_push($errorsMsg, "Please enter a valid E-mail.");
    }else{
        $emailSplit = explode("@", $_POST['email']);

        if(strpos($emailSplit[1], ".") === false){
            $errors = true;
            array_push($errorsMsg, "Please enter a valid E-mail.");
        }
    }

    if( strlen($_POST['password']) < 4 ){
        $errors = true;
        array_push($errorsMsg, "Your password must be at least 4 characters long.");
    }

   if( $_POST['password'] != $_POST['password_wh'] ){
       $errors = true;
       array_push($errorsMsg, "Your passwords do not match.");
    }

    if( strlen($_POST['adress']) < 5 ){
        $errors = true;
        array_push($errorsMsg, "Please enter a valid adress.");
    }

    if( strlen($_POST['zip']) < 4 && ! is_numeric($_POST['zip']) ){
        $errors = true;
        array_push($errorsMsg, "Please enter a valid ZIP.");
    }

    if( strlen($_POST['city']) < 5 ){
        $errors = true;
        array_push($errorsMsg, "Please enter a valid city.");
    }

    if( strlen($_POST['phone']) < 11 && ! is_numeric($_POST['phone']) ){
        $errors = true;
        array_push($errorsMsg, "Please enter a valid Phonenumber.");
    }


    if( $errors === false ){
        $uname = cleanString($dblink, $_POST['uname']);
        $fname = cleanString($dblink, $_POST['fname']);
        $lname = cleanString($dblink, $_POST['lname']);
        $email = cleanString($dblink, $_POST['email']);
        $adress = cleanString($dblink, $_POST['adress']);
        $zip = cleanString($dblink, $_POST['zip']);
        $city = cleanString($dblink, $_POST['city']);
        $phone = cleanString($dblink, $_POST['phone']);



        $salt = rand(10000, 99999);
        $password = sha1($_POST['password'] . $salt) . ':' . $salt;

        $sql = "INSERT INTO users (uname, first_name, last_name, password, email, adress, zip, city, phone) VALUES ('$uname', '$fname', '$lname', '$password', '$email', '$adress', '$zip', '$city', '$phone')";
        mysqli_query($dblink, $sql);

        header('Location: index.php?page=register_success');
    }
}

// ###################### LOGIN ########################### //

if( isset($_POST['login']) ){

    $sql = "SELECT * FROM users WHERE uname = '{$_POST['uname']}' LIMIT 1";
    $res = mysqli_query($dblink, $sql);

    if( mysqli_num_rows($res) == 1 ){

        $row = mysqli_fetch_assoc($res);

        $pwHash = explode(":", $row['password']);

        if( sha1($_POST['password'] . $pwHash[1]) == $pwHash[0] ){

            $_SESSION['login'] = 1;
            $_SESSION['uname'] = $_POST['uname'];
            $_SESSION['email'] = $row['email'];
            $_SESSION['isadmin'] = $row['is_admin'];

            header('Location: index.php?page=dashboard');

        }else{
            $errors = true;
            array_push($errorsMsg, "Benutzerdaten sind nicht korrekt");

            $_SESSION['logincount']++;
        }

    }else{
        $errors = true;
        array_push($errorsMsg, "Benutzerdaten sind nicht korrekt");

        $_SESSION['logincount']++;
    }

    if( $_SESSION['logincount'] >= 3 ){
        $_SESSION['logintimeout'] = time();
    }
}

// ###################### HELP ########################### //


function cleanString( $dblink, $string ){
    $string = str_replace("<!--", "", $string);
    $string = str_replace("-->", "", $string);
    $string = mysqli_real_escape_string($dblink, $string);

    return $string;
}
