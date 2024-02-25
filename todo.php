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
    <title>🌿 QuestKeeper 🌿</title>
</head>
<body>
    <form class="add-item-form">
        <input type="text" id="add-item-input" placeholder="maak dit ....." required/>
        <button type="button" id="add-item-btn">Voeg Toe</button>
    </form>
</body>
</html>