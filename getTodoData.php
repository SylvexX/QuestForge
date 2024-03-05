<?php
    include('_database.php');
    include('_root.php');

    $userID = $_SESSION['userID'];


    $sql = "SELECT * FROM `todo` WHERE `userID` = '$userID'";

    $result = mysqli_query($mysqli, $sql);

    $array = [];

    while ($row = $result -> fetch_assoc()) {
        array_push($array, $row);
    }
    die(json_encode($array));