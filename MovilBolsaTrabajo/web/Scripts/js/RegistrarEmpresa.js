/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var varUrl = "http://localhost:8080/BolsaTrabajoWS/rest/bolsatrabajo/registrarempresa";

$(document).ready(function() {

    $("#form-empresa").bootstrapValidator({
        fields: {
            txtnombre: {
                validators: {
                    notEmpty: {
                        message: 'Ingresar nombre de la Empresa'
                    }
                }
            },
            txtruc: {
                validators: {
                    notEmpty: {
                        message: 'Ingrese  RUC'
                    }
                }
            },
            txtcontacto: {
                validators: {
                    notEmpty: {
                        message: 'Ingrese nombre del contacto '
                    }
                }
            },
            txtdistri: {
                validators: {
                    notEmpty: {
                        message: 'Ingrese nombre del distrito '
                    }
                }
            },
            txttelef: {
                validators: {
                    notEmpty: {
                        message: 'Ingrese número de Teléfono'
                    }
                }
            },
            txtrubo: {
                validators: {
                    notEmpty: {
                        message: 'Ingrese rubro de la empresa'
                    }
                }
            },
            txtcorreo: {
                validators: {
                    notEmpty: {
                        message: 'Ingrese nombre del correo electrónico'
                    },
                    emailAddress: {
                        message: 'La dirección de correo no es válida'
                    }
                }
            },
            txtdirecc: {
                validators: {
                    notEmpty: {
                        message: 'Ingrese Dirección'
                    }
                }
            }

        },
        submitHandler: function(validator, form, submitButton) {
         alert(" todos los camapos estan correctos");
            /*$('#helloModal')
             .find('.modal-title').html('Hello ' + fullName).end()
             .modal();*/

                // consumiendo web services
                dataEmpresa = {
                    idempresa: "1",
                    nombre: $("#txtnombre").val(),
                    direccion: $("#txtdirecc").val(),
                    distrito: $("#txtdistri").val(),
                    contacto: $("#txtcontacto").val(),
                    rubro: $("#txtrubo").val(),
                    telefono: $("#txttelef").val(),
                    ruc: $("#txtruc").val(),
                    correo: $("#txtcorreo").val(),
                    usuario: $("#txtnombre").val(),
                    clave: $("#txtnombre").val()};
                //alert(JSON.stringify(dataEmpresa));
                $.ajax({
                    url: varUrl,
                    data: JSON.stringify(dataEmpresa),
                    contentType: "application/json; charset=utf-8",
                    type: "POST",
                    dataType: "json",
                    success: function(data) {
                        alert("La empresa se registro correctamente");   
                        //$("#form-empresa").attr("action")
                    }
                });

           
        }
    });

    // eventos
    /* */







});


