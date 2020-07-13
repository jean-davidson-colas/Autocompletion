$(document).ready(function () {
    $("#sch").keyup(function () {
        let text = $("#sch").val()
        console.log(text);
if(text == ""){
    
    alert("veuillez entrez un nom");
    $("#data").empty();
}
else{ 
        $.ajax({
            url: "recherche.php",
            data: { "recherche": text },
            method: "GET",
            success: (data) => {
                $("#data").empty();
                $("#data").append(data);
            }
        })
    }
    });

})