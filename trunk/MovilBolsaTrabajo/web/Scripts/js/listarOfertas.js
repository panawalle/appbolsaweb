//$(document).ready(function() {

    var varUrl =  "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/buscarofertas";
    //esto solo es una dema de como consumir e web services a 
    //partir de este ejemplo modificaremos los webservices
    
    var datos = {idoferta :"1" };
    
    
    
    $.ajax({
        url:varUrl,
        type: "POST",
        dataType: "json",
        data: JSON.stringify(datos),
        contentType: "application/json; charset=utf-8",
        success: function(data) {
            var html = "";
            
            for (i = 0; i < data.length; i++) {
                var oferta = data[i];
                //alert(JSON.stringify(oferta));
                var htmlOK = "<a class='btn btn-success' href='listarOfertas.jsp?idoferta="+oferta.idoferta+"'> <i class='icon-zoom-in'>OK</i></a>";
                html = html + "<tr>"+"<td>"+oferta.idoferta+"</td>"+"<td>"+ oferta.descripcion+"</td>" +"<td>"+oferta.idempresa.nombre+"</td>"+"<td>"+htmlOK+"</td>" + "</tr>";
            }
            $("#tbodyofertas").html(html);
            /*$(".btn-success").bind("click",function(){
               
                
            });*/
            
        }
    });
    
    
    
//});