<?php
    include('_database.php');

    $name = $_POST['name'];
    $todoID = uniqid();


    $sql = "INSERT INTO `todo` (`naam`, `ID`) VALUES ('$name', '$todoID')";
    $result = mysqli_query($mysqli, $sql);
    if (!$result) {
        die("oopsie, je operating system word verwijderd");
    } else {
        die("je hebt geluk!, je gaat niet dood");
    } 