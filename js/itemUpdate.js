export function disahdsaihd() {

    let statusChecked = document.querySelectorAll('.statusChecked');
    console.log(statusChecked.length);
    statusChecked.forEach(statusBTN => {
        statusBTN.addEventListener('change', function () {
            let statusWrapper = statusBTN.parentElement;
            const todoID = statusWrapper.getElementsByClassName('todoID')[0].value;
            let statusChecked = statusWrapper.getElementsByClassName('statusChecked')[0].value;
            const statusData = new FormData();
            if (statusChecked == "on") {
                statusChecked = 1;
            } else {
                statusChecked = 0; 
            }
            console.log(statusChecked)
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
