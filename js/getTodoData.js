import {disahdsaihd} from "./itemUpdate.js"
function showTodoItems() {
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "http://localhost:6969/getTodoData.php");

    xhr.send();
    xhr.onload = function () {
        let todoData = JSON.parse(xhr.responseText);

        document.getElementById('outpyut').innerHTML = "";
        todoData.forEach(todoItem => {
            // console.log(todoItem);
            document.getElementById('outpyut').innerHTML += `
            <div class="todo-item-wrapper">
                ${todoItem.naam}
                <input class="statusChecked" type="checkbox">
                <input class="todoID" type="hidden" value="${todoItem.ID}"> 
            </div>`;
        });
        disahdsaihd();
    }
}

await showTodoItems();