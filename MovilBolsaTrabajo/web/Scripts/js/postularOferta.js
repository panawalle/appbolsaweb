$("#btnpostular").click(function() {


    if ($("#hdnidpostulante").val() == null || $("#hdnidpostulante").val() == "null") {
        
        $("#formpostular").attr("action", "login.jsp")
        $("#formpostular").submit();

    } else {

        var varUrl = "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/registrarpostulacion";

        var datos = {
            postulante: {idpostulante: $("#hdnidpostulante").val()},
            oferta: {idoferta: $("#hdnoferta").val(), cantLimitePostulantes: null, idgrado: null, idempresa: null, idcategoria: null}
        };
       // alert(JSON.stringify(datos));
        $.ajax({
            url: varUrl,
            type: "POST",
            dataType: "json",
            data: JSON.stringify(datos),
            contentType: "application/json; charset=utf-8",
            success: function(data) {
                if (data != null) {
                    $("#formpostular").attr("action", "confirmacionPostulacion.jsp")
                    $("#formpostular").submit();
                }
            }
        });

    }

});