<?php    
error_reporting(E_ALL);
ini_set('display_errors', 1);

    $db_hostname = 'localhost';  
    $db_username = file_get_contents('username.txt');  
    $db_password = file_get_contents('password.txt');  
    $db_database = 'QuestKeeper';  
    
    
    $mysqli = mysqli_connect($db_hostname, $db_username, $db_password, $db_database);  

    if(!$mysqli) {
        echo "Fout";
        echo "Error: " . mysqli_connect_error();
    }  