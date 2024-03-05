<?php      
    include('_database.php');
    include('_root.php');
    $username = $_POST['username'];  
    $password = $_POST['password'];  
        
    //to prevent from mysqli injection  
    $username = stripcslashes($username);  
    $password = stripcslashes($password);  
    $username = mysqli_real_escape_string($mysqli, $username);  
    $password = mysqli_real_escape_string($mysqli, $password);  
          
    $sql = "SELECT * FROM login WHERE username = '$username'";  
    $result = mysqli_query($mysqli, $sql);  
        if ($result) { // If the query is
        if (mysqli_num_rows($result) == 0) { // and there are rows in the
            die("username doesn't exists");
        }
    };

    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    if(password_verify($password, $row['password'])) {
        $_SESSION['login'] = true;
        $_SESSION['userID'] = $row['userID'];
        die("TEST");
    }
    die ("jPO");