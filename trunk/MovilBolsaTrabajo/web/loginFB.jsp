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
         
        <div class="container">
             
        <h2  id="titu">Iniciar Sesion con Facebook</h2>
        <h4>Tus amigos ya se registraron con facebook</h4>

        <fb:login-button scope="user_education_history,user_work_history,public_profile,email,user_birthday,user_hometown"
                         max_rows="3" size="medium" show_faces="true" onlogin="checkLoginState();">
        </fb:login-button>
        
        <div id="status"></div>
        
        <div id="cuenta">
            <h2>Iniciar Sesion con una Cuenta</h2> 
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
        
        <div id="registrar">
        <form role="form" id="formpostulante" method="POST">
            <br>
            <div class="form-group">
                <label>Nombres:</label>
                <input class="form-control" id="nombres" placeholder="Nombres">
            </div>
            <div class="form-group">
                <label>Fecha de Nacimiento:</label>
                <input  class="form-control" id="fechaNacimiento" placeholder="Fecha de Nacimiento">
            </div>
            <div class="form-group">
                <label>Edad:</label>
                <input class="form-control" id="edad" placeholder="Edad">
            </div>
            <div class="form-group">
                <label>Sexo:</label>
                <input  class="form-control" id="sexo" placeholder="Sexo">
            </div>
            <div class="form-group">
                <label>Lugar de Nacimiento:</label>
                <input  class="form-control" id="lugarNacimiento" placeholder="Lugar de Nacimiento">
            </div>
            <div class="form-group">
                <label>Descripcion Personal:</label>
                <input  class="form-control" id="descripcionPersonal" placeholder="Descripcion Personal">
            </div>
            <div class="form-group">
                <label>Telefono:</label>
                <input  class="form-control" id="telefono" placeholder="Telefono">
            </div>
            <div class="form-group">
                <label>Correo:</label>
                <input  class="form-control" id="correo" placeholder="Correo" disabled>
            </div>
            <div class="form-group">
                <label>Documento de Identidad:</label>
                <input  class="form-control" id="documentoIdentidad" placeholder="Documento de Identidad">
            </div>
            <div class="form-group">
                <label>Estudios Superiores:</label>
                <input  class="form-control" id="estudiosSuperiores" placeholder="Estudios Superiores">
            </div>
            <div class="form-group">
                <label>Idiomas:</label>
                <input  class="form-control" id="idiomas" placeholder="Idiomas">
            </div>
            <div class="form-group">
                <label>Experiencia Laboral:</label>
                <input  class="form-control" id="experienciaLaboral" placeholder="Experiencia Laboral">
            </div>
            <div class="form-group">
                <label>Certificaciones:</label>
                <input  class="form-control" id="certificaciones" placeholder="Certificaciones">
            </div>
            <div class="form-group">
                <label>Usuario:</label>
                <input  class="form-control" id="usuario" placeholder="Usuario" disabled>
            </div>
            <div class="form-group">
                <label>Clave:</label>
                <input  class="form-control" type="password" id="clave" placeholder="Clave" disabled>
            </div>
            <br>
            
            <button type="button" id= "btnregistrar" class="btn btn-primary">Registrar</button>
            <button type="button" id= "btncancelar"  class="btn btn-danger">Cancelar</button>  

        </form>
         
        </div>
        
        </div>
        
        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/LoginFB.js"></script>
    </body>
</html>
