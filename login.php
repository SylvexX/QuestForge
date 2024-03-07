<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🌿 QuestKeeper 🌿</title>
    <link  rel="stylesheet" href="style.css">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
    <script src="js/login.js" defer></script>
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous" defer></script>
</head>
<body id="background-image">
    <main class="main-login-wrapper">
        <div class="login-wrapper">
            <div class="form-title">
            <h1>Login</h1>
            </div>
            <form class="login-form">

                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" id="login-user" placeholder="Username" required/>
                </div>

                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="login-pass" placeholder="password" required/>
                </div>
                <div class="login-btn-container">
                    <button type="button" id="login-btn">login</button>
                </div>
                <a class="toggle-login">Sign up</a>
            </form> 
        </div>

        <div class="signup-wrapper hidden">
            <div class="form-title">
                <h1>Sign Up</h1>
            </div>
            <form class="signup-form">

                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" id="signup-user" placeholder="Username" required/>
                </div>

                <div class="input-field">
                    <i class="fas fa-envelope"></i>
                    <input type="email" id="signup-email" placeholder="email" required/>
                </div>

                <div class="input-field">
                    <i  class="fas fa-lock"></i>
                    <input type="password" id="signup-pass" placeholder="password" required/>
                </div>

                <div class="login-btn-container">
                    <button type="button" id="signup-btn">Sign up</button>
                </div>
                <a class="toggle-login">Login</a>
            </form> 
        </div>
    </main>

</body>
</html>