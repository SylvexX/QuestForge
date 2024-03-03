let voegToe = document.getElementById('add-item-btn');

voegToe.addEventListener("click", addItemSubmit);

function addItemSubmit() {
    let voegToeData = document.getElementById('add-item-input').value;
    console.log(voegToeData);

    const todoData = new FormData();
    todoData.append("name", voegToeData);

    let xhr = new  XMLHttpRequest();
    xhr.open("POST","http://localhost:3000/addTodoItem.php");

    xhr.send(todoData);
    xhr.onload = function () {
        if (xhr.responseText == "TEST") {
            alert("Welcome");
        } else {
            alert("failed to login");
        }
    }
}
