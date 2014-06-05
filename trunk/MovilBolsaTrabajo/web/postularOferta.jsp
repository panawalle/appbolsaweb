<%-- 
    Document   : postularOferta
    Created on : 04/06/2014, 01:22:57 PM
    Author     : ROGER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Bolsa de Trabajo</title>       
        <%@include file="pages/general/head.html" %>
        <%            
        
            String empresa = request.getParameter("empresa");
            // redireccionando según logueo
            String idoferta = request.getParameter("idoferta");
            String  idpostulante = (String)session.getAttribute("idpostulante");
            
            if (idoferta != null) {
                System.out.println("userlogin!!!! : " + session.getAttribute("userlogin"));
                if (session.getAttribute("userlogin") == null) {
                    response.sendRedirect("login.jsp");
                }
            }

        %>
    </head>
    <body>
        <%@include file="pages/general/navegacion.jsp" %>
        <h2>Postular Oferta </h2>
        <br>
        <h3><div align="center">¿Está seguro que dese postulara la oferta? </div></h3>
        <h3><div align="center"><%=empresa%></div></h3>
        <div class="container">""
            
            <div align="center" >
                <form id="formpostular" method="POST">
                <input id="hdnoferta"  value ="<%=idoferta%>" type="hidden" >
                <input id="hdnidpostulante" value ="<%=idpostulante%>" type="hidden" />
                
             <button type="button"  id= "btnpostular"class="btn btn-primary">Postular</button>
            </form>
            </div>
        </div>
        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/postularOferta.js"></script>
        
    </body>
</html>
