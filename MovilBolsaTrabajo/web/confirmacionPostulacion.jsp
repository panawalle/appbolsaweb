<%-- 
    Document   : confirmacionPostulacion
    Created on : 08/06/2014, 01:59:13 PM
    Author     : ROGER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bolsa de Trabajo</title>       
        <%@include file="pages/general/head.html" %>
    </head>
    <body>
        <%@include file="pages/general/navegacion.jsp" %>
        <h2>Postular a Oferta </h2>
        <br>
        <div align="center" >
            <form id="formconfig"  action="listarOfertas.jsp" method="POST">
                <h3><div align="center">La postulación fue exitosa </div></h3>
                <br></br>
                <button type="submit"  id= "btnaceptar"class="btn btn-primary">Aceptar</button>
            </form>
        </div>
    </body>
</html>
