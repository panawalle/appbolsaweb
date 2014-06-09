<%-- 
    Document   : listarOfertas
    Created on : 02/06/2014, 10:06:50 PM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Bolsa de Trabajo</title>       
        <%@include file="pages/general/head.html" %>
        <%            //iniciando session  
            String userlogin = request.getParameter("txtusuario");
            System.out.println(" userlogin : " + userlogin);
            if (userlogin != null) {
                session.setAttribute("idpostulante", request.getParameter("hdnidpostulante"));
                session.setAttribute("userlogin", userlogin);
            }


        %>

    </head>
    <body>
        <%@include file="pages/general/navegacion.jsp" %>
        <h2>Listar Ofertas</h2>
        <br>
        <div class="table-responsive">

            <form id="formlistarofertas" method="POST">

                <div  class="form-group">
                    <label>Seleccione categoria </label>
                    <select id="cmbcategoria"  class="form-control" placeholder="seleccione categoria"   >
                        <option value ="0">Todos </option>
                        <option value ="1">Programación </option>
                        <option value ="2">Diseño</option>
                    </select>
                </div>

                <table class="table">

                    <thead>

                        <tr>
                            <th>#</th>
                            <th>Oferta</th>
                            <th>Empresa</th>
                            <th></th>
                        </tr>


                    </thead>
                    <tbody  id="tbodyofertas">

                    </tbody>
                </table>

                <input type="hidden" id="idpostulante" name="idpostulante" value="<%=session.getAttribute("idpostulante")%>" >
                <input type="hidden" id="idoferta" name="idoferta" >
                <input type="hidden" id="descripcion" name="descripcion" >    
                <input type="hidden" id="sueldo" name="sueldo" > 
                <input type="hidden" id="fechalimite" name="fechalimite" >        
            </form>

        </div>

        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/listarOfertas.js"></script>
    </body>
</html>
