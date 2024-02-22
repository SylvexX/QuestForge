<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🌿 QuestKeeper 🌿</title>
    <style><?php include 'style.css';?></style>
    <script src="js/login.js" defer></script>
</head>
<body>
    <main class="main-login-wrapper">
        <div class="login-wrapper">
            <h1>Login</h1>
            <form class="login-form">
                <input type="text" id="login-user" placeholder="Username" required/>
                <input type="password" id="login-pass" placeholder="password" required/>
                <button type="button" id="login-btn">login</button>
                <a class="toggle-login">Sign up</a>
            </form> 
        </div>

        <div class="signup-wrapper hidden">
            <h1>Sign Up</h1>
            <form class="signup-form">
                <input type="text" id="signup-user" placeholder="Username" required/>
                <input type="email" id="signup-email" placeholder="email" required/>
                <input type="password" id="signup-pass" placeholder="password" required/>
                <button type="button" id="signup-btn">Sign up</button>
                <a class="toggle-login">Login</a>
            </form> 
        </div>
    </main>

</body>
</html>