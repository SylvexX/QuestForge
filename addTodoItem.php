<?php
    include('_database.php');
    include('_root.php');

    $name = $_POST['name'];
    $userID = $_SESSION['userID'];
    $todoID = uniqid();


    $sql = "INSERT INTO `todo` (`naam`, `ID`, `userID`) VALUES ('$name', '$todoID', '$userID')";
    $result = mysqli_query($mysqli, $sql);
    if (!$result) {
        die("oopsie, je operating system word verwijderd");
    } else {
        die("je hebt geluk!, je gaat niet dood");
    } 