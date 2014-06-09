

var varurlofertas = "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/buscarofertas";
var varurlpostulacionespostulantes = "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/consultarpostulacionespostulantes";

cargarOfertas();

function cargarOfertas() {

    var datos = null;
    


    if ($("#cmbcategoria").val() == 0 || $("#cmbcategoria").val() == null) {

        datos = {idoferta: "0"};

    } else {

        datos = {idoferta: "0", idcategoria: {idcategoria: $("#cmbcategoria").val()}};

    }

    $.ajax({
        url: varurlofertas,
        type: "POST",
        dataType: "json",
        data: JSON.stringify(datos),
        contentType: "application/json; charset=utf-8",
        success: function(ofertas) {

            if ($("#idpostulante").val() != "null" || $("#idpostulante").val() != null || $.trim($("#idpostulante").val()) != "") {

                var postulante = {idpostulante: $("#idpostulante").val()};

                $.ajax({
                    url: varurlpostulacionespostulantes,
                    type: "POST",
                    dataType: "json",
                    data: JSON.stringify(postulante),
                    contentType: "application/json; charset=utf-8",
                    success: function(postulaciones) {
                        cargardatos(ofertas, postulaciones);
                    }
                });



            } else {

                cargardatos(ofertas, null);
            }

        }
    });

}

function cargardatos(ofertas, postulaciones) {

    var html = "";
    for (i = 0; i < ofertas.length; i++) {
        var oferta = ofertas[i];
        var htmlOK = "<a class='btn btn-success' href='postularOferta.jsp?idoferta=" + oferta.idoferta + "&empresa=" + oferta.idempresa.nombre + "'> <i class='icon-zoom-in'>OK</i></a>";
        var sueldo = oferta.sueldo != null ? oferta.sueldo : "";
        var htmlLink = " <a  name='deta'  href= '#'  idoferta='" + oferta.idoferta + "' descripcion='" + oferta.descripcion + "' fechalimite='" + oferta.fechaLimite + "' sueldo ='" + sueldo + "'  > " + oferta.cargo + " </a> ";
        var htmlcheck="";
        if (postulaciones != null) {
            for (j = 0; j < postulaciones.length; j++) {
                var postulacion = postulaciones[j];
                if (oferta.idoferta == postulacion.oferta.idoferta) {
                    htmlLink = oferta.cargo;
                    htmlcheck = "<img  src='Scripts/img/icon_check.png'></img>   "
                }
            }
        }
        html = html + "<tr>" + "<td>" + oferta.idoferta + "</td>" + "<td> " + htmlLink + "</td>" + "<td>" + oferta.idempresa.nombre + "</td>" + "<td>"+htmlcheck +"</td>"+ " </tr>";
    }
    $("#tbodyofertas").html(html);
    $("a[name='deta']").bind("click", function() {
        $("#idoferta").val($(this).attr("idoferta"));
        $("#descripcion").val($(this).attr("descripcion"));
        $("#fechalimite").val($(this).attr("fechalimite"));
        $("#sueldo").val($(this).attr("sueldo"));
        $("#formlistarofertas").attr("action", "detalleoferta.jsp");
        $("#formlistarofertas").submit();
    });
    postulaciones =null;
}

$("#cmbcategoria").change(function() {
    cargarOfertas();
});


