<%-- 
    Document   : listarOfertas
    Created on : 02/06/2014, 10:06:50 PM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Bolsa de Trabajo</title>       
        <%@include file="pages/general/head.html" %>
        <%            
            String idoferta = request.getParameter("idoferta");
            if(idoferta!=null ){
                if( session.getAttribute("userlogin")==null){
                    response.sendRedirect("login.jsp");
                }
            }

        %>

    </head>
    <body>
        <%@include file="pages/general/navegacion.jsp" %>
        <h2>Listar Ofertas</h2>
        <br>
        <div class="table-responsive">

            <table class="table">

                <thead>

                    <tr>
                        <th>#</th>
                        <th>Oferta</th>
                        <th>Empresa</th>
                        <th>Postular</th>
                    </tr>


                </thead>
                <tbody  id="tbodyofertas">

                </tbody>
            </table>
        </div>



        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/listarOfertas.js"></script>
    </body>
</html>
