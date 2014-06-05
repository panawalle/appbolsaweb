<%-- 
    Document   : detalleoferta
    Created on : 03/06/2014, 09:43:25 PM
    Author     : ROGER
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Bolsa de Trabajo</title>       
        <%@include file="pages/general/head.html" %>
        <%            request.setCharacterEncoding("UTF-8");
        
            String idoferta = request.getParameter("idoferta");
            String  idpostulante = (String)session.getAttribute("idpostulante");
            
            String descripcion = request.getParameter("descripcion");
            String fechalimite = "";

            try {
                SimpleDateFormat parse = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
                fechalimite = request.getParameter("fechalimite");
                Date date = parse.parse(fechalimite);
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                fechalimite = sdf.format(date);

            } catch (Exception e) {

            }

            String sueldo = request.getParameter("sueldo") != null ? request.getParameter("sueldo") : "";

        %>
    </head>
    <body>
        <%@include file="pages/general/navegacion.jsp" %>
        <h2>Detalle de oferta </h2>
        <form id="formpostular" method="POST"  >
            
            <input id="hdnoferta"  value ="<%=idoferta%>" type="hidden" >
            <input id="hdnidpostulante" value ="<%=idpostulante%>" type="hidden" />
            
            <div  class="form-group">
                <label>Descripción </label>

                <textarea disabled="disabled" class="form-control"  rows="4" cols="50">
                    <%=descripcion%>
                </textarea>
            </div>

            <br>

            <label> Sueldo </label>    
            <div  class="form-group">
                <input disabled="disabled" class="form-control"  value="<%=sueldo%>" >
            </div>  

            <br>
            <label>Fecha Limite </label>    
            <div  class="form-group">
                <input disabled="disabled" class="form-control"  value="<%=fechalimite%>" >
            </div>

            <br>
            <div  align="center" class="form-group">

                <button type="button"  id= "btnpostular"class="btn btn-primary">Postular</button>

            </div>
        </form>
        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/postularOferta.js"></script>

    </body>
</html>
