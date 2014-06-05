<%-- 
    Document   : RegistrarPostulante
    Created on : 03/06/2014, 07:53:43 PM
    Author     : ROGER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Bolsa de Trabajo</title>       
        <%@include file="pages/general/head.html" %>
    </head>
    <body>
        
        
         <%@include file="pages/general/navegacion.jsp" %>
        <h2>Registrar Postulante</h2>
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
                <input  class="form-control" id="edad" placeholder="Edad">
            </div>
            <div class="form-group">
                <label>Sexo:</label>
                <!--input  class="form-control" id="sexo" placeholder="Sexo"-->
                <select class="form-control"  id="sexo" >
                    <option value ="M">Masculino</option>
                    <option value="F">Femenino</option>
                </select>
                
            </div>
            <!--div class="form-group">
                <label>Foto:</label>
                <input  class="form-control" id="foto" placeholder="Foto">
            </div-->
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
                <input  class="form-control" id="correo" placeholder="Correo">
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
                <input  class="form-control" id="usuario" placeholder="Usuario">
            </div>
            <div class="form-group">
                <label>Clave:</label>
                <input  class="form-control" type="password" id="clave" placeholder="Clave">
            </div>
            <br>

            <button type="button"  id= "btnregistrar"class="btn btn-primary">Registrar</button>
            <button type="button"  id= "btncancelar"  class="btn btn-danger">Cancelar</button>  

        </form>
        
        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/RegistrarPostulante.js  "></script>
         
    </body>
</html>
