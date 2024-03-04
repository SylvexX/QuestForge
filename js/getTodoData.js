let xhr = new XMLHttpRequest();
xhr.open("POST", "http://localhost:3000/getTodoData.php");

xhr.send();
xhr.onload = function () {
    let todoData = JSON.parse(xhr.responseText);

    let output = '';
    todoData.forEach(todoItem => {
        console.log(todoItem);
        output += `<li>${todoItem}</li>`;
    });
    document.getElementById('outpyut').innerHTML = output;

}