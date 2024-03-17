<?php
    include('_root.php');
    if (false == $_SESSION['login']) {
        header("Location: login.php");//zet link naar login.php
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script type="module" src="js/addTodoItem.js" defer></script>
    <script type="module" src="js/getTodoData.js" defer></script>
    <script type="module" src="js/itemUpdate.js" defer></script>
    
    <link rel="stylesheet" href="style.css">
    <title>🌿 QuestKeeper 🌿</title>
</head>
<body>
    <form class="add-item-form">
        <input type="text" id="add-item-input" placeholder="maak dit ....." required/>
        <input type="button" id="add-item-btn" value="Voeg Toe"/>
    </form>
    <div id="outpyut">
        
    </div>
</body>
</html>