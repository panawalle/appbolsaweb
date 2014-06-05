

$("#btnregistrar").bind("click",function(){
        
    alert("mostrar");
    datos={
            idpostulante :"0",
            nombres:$("#nombres").val(),
            fechaNacimiento :$("#fechaNacimiento").val(),
            edad : $("#edad").val(),
            sexo : $("#sexo").val(),
            lugarNacimiento: $("#lugarNacimiento").val(),
            descripcionPersonal : $("#descripcionPersonal").val(),
            telefono : $("#telefono").val(),
             correo : $("#correo").val(),
            documentoIdentidad : $("#documentoIdentidad").val(),
            estudiosSuperiores :$("#estudiosSuperiores").val(),
            idiomas :  $("#idiomas").val(),
            experienciaLaboral:$("#experienciaLaboral").val(),
            certificaciones : $("#certificaciones").val(),
            usuario :$("#usuario").val(),
            clave :$("#clave").val()
        };
       // alert(JSON.stringify(datos));
   
        $.ajax({
            url: "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/registrarpostulante",
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(datos),
            success: function(data) {
                if(data ==null){
                    alert("Error al momento de registrarse");
                }else{
                   //alert(data);
                   $("#formpostulante").attr("action","listarOfertas.jsp")
                   $("#formpostulante").submit();
                }
            }
        });
    });