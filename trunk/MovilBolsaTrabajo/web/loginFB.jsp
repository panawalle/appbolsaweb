
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
    
<script>
    
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);

    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }

 
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '1441103716137580', //INGRESAR EL APP ID
    cookie     : true,  
    xfbml      : true,  
    version    : 'v2.0' 
  });


  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };

  // Load the SDK asynchronously
  (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));


  function testAPI() {
    console.log('Bienvenido Web Bolsa de Trabajo!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: '); 
      console.log('Nombre    : ' + response.name);
      console.log('Cumpleano : ' + response.birthday);
      console.log('Email     : ' + response.email);
      console.log('Genero    : ' + response.gender);
      console.log('Direccion : ' + response.hometown.name);
      
      for(ed in response.education) {
            var schoolName = response.education[ed].school.name;
            var schoolType = response.education[ed].type;
            console.log('Centro Estudios : ' + schoolName);
            console.log('Grado : ' + schoolType);
      }
      
      for(ed in response.work) {
            var employerName = response.work[ed].employer.name;
            var positionName = response.work[ed].position.name;
            console.log('Trabajos : ' + employerName);
            console.log('Puesto : ' + positionName);
      }

      document.getElementById('status').innerHTML =
        'Gracias por registrarte, ' + response.name + '!';
    });
  }
</script>


      
         <%@include file="pages/general/navegacion.jsp" %>
         
        <div class="container">
             
        <h2>Iniciar Sesion con Facebook</h2> 
        <h4>Tus amigos ya se registran con facebook</h4>

        <fb:login-button max_rows="3" size="medium" show_faces="true" auto_logout_link="false" scope="public_profile,email,user_birthday,user_hometown,user_education_history,user_work_history"
                         onlogin="checkLoginState();">

        </fb:login-button>
        
        <div id="status"></div>
        
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
        
        <%@include file="pages/general/footer.html" %>
        <script src="Scripts/js/Login.js"></script>
    </body>
</html>
