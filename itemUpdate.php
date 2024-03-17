<?php
    include('_database.php');
    include('_root.php');

    $status = $_POST['status'];
    $todoID = $_POST['ID'];

    $sql = "UPDATE `todo` SET `status` = '$status' WHERE `ID` = '$todoID'";
    $result = mysqli_query($mysqli, $sql);
    if  ($result) {
        echo '1'; //success
    } else {
        echo '0'; //failure
    }