<?php
    include('_database.php');

    $sql = "SELECT * FROM `todo`";

    $result = mysqli_query($mysqli, $sql);

    $array = [];

    while ($row = $result -> fetch_assoc()) {
        array_push($array, $row);
    }
    die(json_encode($array));