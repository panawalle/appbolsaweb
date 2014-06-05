//$(document).ready(function() {

var varUrl = "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/buscarofertas";
//esto solo es una dema de como consumir e web services a 
//partir de este ejemplo modificaremos los webservices

var datos = {idoferta: "1"};



$.ajax({
    url: varUrl,
    type: "POST",
    dataType: "json",
    data: JSON.stringify(datos),
    contentType: "application/json; charset=utf-8",
    success: function(data) {
        var html = "";

        for (i = 0; i < data.length; i++) {
            var oferta = data[i];
            var htmlOK = "<a class='btn btn-success' href='postularOferta.jsp?idoferta=" + oferta.idoferta + "&empresa=" + oferta.idempresa.nombre + "'> <i class='icon-zoom-in'>OK</i></a>";
            var sueldo = oferta.sueldo != null ? oferta.sueldo : "";
            html = html + "<tr>" + "<td>" + oferta.idoferta + "</td>" + "<td>  <a  name='deta'  href= '#'  idoferta='" + oferta.idoferta + "' descripcion='" + oferta.descripcion + "' fechalimite='" + oferta.fechaLimite + "' sueldo ='" + sueldo + "'  > " + oferta.cargo + " </a> </td>" + "<td>" + oferta.idempresa.nombre + "</td>" + "<td>" + htmlOK + "</td>" + "</tr>";
        }
        $("#tbodyofertas").html(html);

        $("a[name='deta']").bind("click", function() {
            $("#idoferta").val($(this).attr("idoferta"));
            $("#descripcion").val($(this).attr("descripcion"));
            $("#fechalimite").val($(this).attr("fechalimite"));
            $("#sueldo").val($(this).attr("sueldo"));
            $("#formlistarofertas").attr("action","detalleoferta.jsp");
            $("#formlistarofertas").submit();
        });

    }
});



//});