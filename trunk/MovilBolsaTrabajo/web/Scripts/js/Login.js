/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    //alert(" hola mundo");
    $("#btningresar").click(function(){
        //alert(" hola gaby");
        datos={
            usuario: $("#txtusuario").val(),
            clave: $("#txtclave").val(),
            idpostulante: "0"
        };
        alert(JSON.stringify(datos));
        $.ajax({
            url: "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/loginpostulante",
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(datos),
            success: function(data) {
                 alert(data.usuario); 
            }
        });
    });
});


