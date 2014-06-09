
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
                
                <input type="hidden" id="hdnidpostulante" name="hdnidpostulante"  >
                <div class="form-group">
                    <input type="text" class="form-control"  placeholder="Correo" name="txtusuario" id="txtusuario">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control"  placeholder="Contraseña" name="txtclave" id="txtclave">
                </div>

                <div Id="lblmensaje" style="color:red" ></div>
                <br></br>
                <button class="btn btn-large btn-primary" type="button" id="btningresar">Ingresar</button>
                <br></br>
                <div>  <label> </label><a href="RegistrarPostulante.jsp" > Registrarse </a></div> 
            </form>

        </div>
        
        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/Login.js"></script>
    </body>
</html>
