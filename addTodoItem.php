<?php
//con = connectie *mysqli*
//sql = wat we vragen aan database
    include('_database.php');
    $name = $_POST['name'];

    $sql = "SELECT * FROM login WHERE email = '$email'";
    // die($sql);
    $result = mysqli_query($mysqli, $sql);
    if ($result) { // If the query is
        if (mysqli_num_rows($result) > 0) { // and there are rows in the
            die("Email already exists");
        }
    };

    $userID = uniqid();
    $password = password_hash($password, PASSWORD_DEFAULT);

    $sql = "INSERT INTO `login` (`userID`, `username`, `email`, `password`) VALUES ('$userID', '$username','$email','$password')";
    $result = mysqli_query($mysqli, $sql);
    if (!$result) {
        die("oopsie, je operating system word verwijderd");
    } else {
        die("je hebt geluk!, je gaat niet dood");
    }