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
        alert(xhr.responseText);
        if (xhr.responseText == "TEST") {
            alert("success login");
        } else {
            alert("failed to login");
        }
    }
};