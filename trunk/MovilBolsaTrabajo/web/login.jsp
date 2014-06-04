
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Bolsa de Trabajo</title>
 
        
        <%@include file="pages/general/head.html"   %>
        
        
    </head>
    <body>
  
         <%@include file="pages/general/navegacion.jsp" %>
        <h2>Iniciar Session </h2>
        <br>
        <div class="container">

            <form class="form-signin"  method="POST" id="formlogin">
                <div class="form-group">
                    <input type="text" class="input-block-level" placeholder="Correo" name="txtusuario" id="txtusuario">
                </div>
                <div class="form-group">
                    <input type="password" class="input-block-level" placeholder="Contraseña" name="txtclave" id="txtclave">
                </div>

                <label class="checkbox">
                    <input type="checkbox" value="remember-me"> Recordar Contraseña
                </label>

                <div Id="lblmensaje" style="color:red" ></div>
                <button class="btn btn-large btn-primary" type="button" id="btningresar">Ingresar</button>
            </form>

        </div>
        
        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/Login.js"></script>
    </body>
</html>
