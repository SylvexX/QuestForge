//select alle query's met de naam "toggle-login"
let toggleLoginBTN = document.querySelectorAll('.toggle-login');

toggleLoginBTN.forEach((btn) => {
    btn.addEventListener('click', () => {
        //Toggle de "hidden" class bij login/signup wrapper
        document.querySelector('.login-wrapper').classList.toggle('hidden');
        document.querySelector('.signup-wrapper').classList.toggle('hidden');
    });
});


//Login
let loginBtn = document.getElementById('login-btn');
loginBtn.addEventListener('click', loginSubmit);
function loginSubmit() {
    const userName = document.getElementById('login-user').value;
    const password = document.getElementById('login-pass').value;
    const loginData = new FormData();
    loginData.append("username", userName);
    loginData.append("password", password);

    let xhr = new  XMLHttpRequest();
    xhr.open("POST","http://localhost:3000/loginSubmit.php");

    xhr.send(loginData);
    xhr.onload = function () {
        if (xhr.responseText == "TEST") {
            alert("Welcome");
            window.location.href="todo.php";
        } else {
            alert("failed to login");
        }
    }
};

//signup
let signBtn = document.getElementById('signup-btn');
signBtn.addEventListener('click', signupSubmit);
function signupSubmit() {
    const userName = document.getElementById('signup-user').value;
    const userEmail = document.getElementById('signup-email').value;
    const password = document.getElementById('signup-pass').value;
    const signupData = new FormData();
    signupData.append("username", userName);
    signupData.append("email", userEmail);
    signupData.append("password", password);

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "http://localhost:3000/signupSubmit.php");

    xhr.send(signupData);
    xhr.onload = function () {
        alert(xhr.responseText);
    }
}