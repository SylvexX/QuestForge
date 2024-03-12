function showTodoItems() {
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "http://localhost:6969/getTodoData.php");

    xhr.send();
    xhr.onload = function () {
        let todoData = JSON.parse(xhr.responseText);

        document.getElementById('outpyut').innerHTML = "";
        todoData.forEach(todoItem => {
            // console.log(todoItem);
            document.getElementById('outpyut').innerHTML += `<li>${todoItem.naam}</li>`;
        });
    }
}

showTodoItems();