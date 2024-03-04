let xhr = new XMLHttpRequest();
xhr.open("POST", "http://localhost:3000/getTodoData.php");

xhr.send();
xhr.onload = function () {
    let todoData = JSON.parse(xhr.responseText);

    todoData.forEach(todoItem => {
        console.log(todoItem);
        // create li element for each item in the array
        document.getElementById('outpyut').innerHTML += `<li>${todoItem}`;
    });

}