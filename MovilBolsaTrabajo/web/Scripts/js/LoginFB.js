 $(document).ready(function(){
         $("#registrar" ).hide();
    });
      
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
      
    console.log('statusChangeCallback');
    console.log(response);

    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
      $("#cuenta").hide();
      $("#titu").text("Modifica tus datos de Facebook");
      
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
      $("#registrar" ).show();
      console.log('Nombre    : ' + response.name);
      console.log('Cumpleano : ' + response.birthday);
      console.log('Email     : ' + response.email);
      console.log('Genero    : ' + response.gender);
      console.log('Direccion : ' + response.hometown.name);
      
      $("#nombres").val(response.name);
      $("#fechaNacimiento").val(response.birthday);
      $("#correo").val(response.email); 
      $("#sexo").val(response.gender); 
      $("#lugarNacimiento").val(response.hometown.name);
              
      var educationName = "";
      var educationType = "";
      for(ed in response.education) {
            var schoolName = response.education[ed].school.name;
            var schoolType = response.education[ed].type;
            console.log('Centro Estudios : ' + schoolName);
            console.log('Grado : ' + schoolType);
            educationName = response.education[ed].school.name + ' ; '+ educationName;
            educationType = response.education[ed].type + ' ;' + educationType;
      }
      $("#estudiosSuperiores").val(educationName);
      $("#certificaciones").val(educationType);
      
      var workName = "";
      var workType = "";
      for(ed in response.work) {
            var employerName = response.work[ed].employer.name;
            var positionName = response.work[ed].position.name;
            console.log('Trabajos : ' + employerName);
            console.log('Puesto : ' + positionName);
            workName = response.work[ed].employer.name + ' ; '+ workName;
            workType = response.work[ed].position.name + ' ; '+ workType;
      }
      $("#experienciaLaboral").val(workName+ '('+ workType + ')');
      
      $("#edad").val((2014 - parseInt(response.birthday.substring(6, 10))));
      
      
      document.getElementById('status').innerHTML =
        'Gracias por registrarte, ' + response.name + '!';
            
    });

}

////   BTNREGISTRAR
$("#btnregistrar").bind("click",function(){
        
    alert("mostrar");
    datos={
            idpostulante :"0",
            nombres:$("#nombres").val(),
            fechaNacimiento :$("#fechaNacimiento").val(),
            edad : $("#edad").val(),
            sexo : $("#sexo").val(),
            lugarNacimiento: $("#lugarNacimiento").val(),
            descripcionPersonal : $("#descripcionPersonal").val(),
            telefono : $("#telefono").val(),
            correo : $("#correo").val(),
            documentoIdentidad : $("#documentoIdentidad").val(),
            estudiosSuperiores :$("#estudiosSuperiores").val(),
            idiomas :  $("#idiomas").val(),
            experienciaLaboral:$("#experienciaLaboral").val(),
            certificaciones : $("#certificaciones").val(),
            usuario :$("#usuario").val(),
            clave :$("#clave").val()
        };
       // alert(JSON.stringify(datos));
   
        $.ajax({
            url: "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/registrarpostulante",
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(datos),
            success: function(data) {
                if(data ==null){
                    alert("Error al momento de registrarse");
                }else{
                   //alert(data);
                   $("#formpostulante").attr("action","listarOfertas.jsp")
                   $("#formpostulante").submit();
                }
            }
        });
    });


////////  btningresar

    $("#btningresar").bind("click",function(){
        datos={
            usuario: $("#txtusuario").val(),
            clave: $("#txtclave").val(),
            idpostulante: "0"
        };
        //alert(JSON.stringify(datos));
        $.ajax({
            url: "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/loginpostulante",
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(datos),
            success: function(data) {
                if(data ==null){
                    //alert(" Clave y/o Password incorrectos");
                    $("#lblmensaje").html("Clave y/o Password incorrectos");
                }else{
                    //alert(data.usuario); 
                    $("#formlogin").attr("action","index.jsp");
                    $("#formlogin").submit();
                }
            }
        });
    });