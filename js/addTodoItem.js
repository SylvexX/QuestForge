let voegToe = document.getElementById('add-item-btn');

voegToe.addEventListener("click", addItemSubmit);

var input = document.getElementById("add-item-input");
input.addEventListener("keypress", function(event) {
  if (event.key === "Enter") {
    event.preventDefault();
    document.getElementById("add-item-btn").click();
  }
});

function addItemSubmit() {
    let voegToeData = document.getElementById('add-item-input').value;
    console.log(voegToeData);
    if (voegToeData == "") {
        alert("Cheese Pizza");
        //die fancy alert toevoegen (ERROR NIETS INGEVULD)
        Swal.fire({
            icon: "error",
            title: "Kan niets adden",
            text: "er is niets ingevuld"
        })
        return;
        
    }

    document.getElementById('add-item-input').value = "";
    const todoData = new FormData();
    todoData.append("name", voegToeData);

    let xhr = new  XMLHttpRequest();
    xhr.open("POST","http://localhost:6969/addTodoItem.php");

    xhr.send(todoData);
    xhr.onload = function () {
        if (xhr.responseText == "je hebt geluk!, je gaat niet dood") {
            // alert("Welcome");
            //die fancy alert toevoegen (SUCCESS GEUPLOAD!)
            Swal.fire({
                position: "top-end",
                icon: "success",
                title: "aangemaakt",
                showConfirmButton: false,
                timer: 1500
            });
        } else {
            alert("failed to login");
                    //die fancy alert toevoegen (NIET GELUTK!)

        }
        showTodoItems();
    }
}
