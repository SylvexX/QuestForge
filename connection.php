<?php      
    $db_host = "localhost";  
    $db_user = file_get_contents("username.txt");  
    $db_password = file_get_contents("password.txt");  
    $db_name = "QuestKeeper";  
    
    $con = mysqli_connect($db_host, $db_user, $db_password, $db_name);  
    if(mysqli_connect_errno()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }  