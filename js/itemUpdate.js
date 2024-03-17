export function disahdsaihd() {

    let statusChecked = document.querySelectorAll('.statusChecked');
    console.log(statusChecked.length);
    statusChecked.forEach(statusBTN => {
        statusBTN.addEventlistener('change', function () {
            let statusWrapper = statusBTN.parentElement;
            const todoID = statusWrapper.getElementsByClassName('todoID')[0];
            const statusChecked = statusWrapper.getElementsByClassName('statusChecked')[0];
            const statusData = new FormData();
            statusData.append("ID", todoID);
            statusData.append("status", statusChecked);
    
            let xhr = new XMLHttpRequest();
            xhr.open("POST", "http://localhost:6969/itemUpdate.php");
    
            xhr.send(statusData);
            xhr.onload = function() {
                console.log(xhr.responseText);
            }
        })
    });
}
