/*
 *Autor: Hernan Liotta
 *Date : 30/02/2021
 *Description: Esta funcion se encarga de consumir el servlet (ctrol) para validar con el ws de usuario si es un 
 *              usuairo valido o no.
 */
$(function(){
 function logear(){
    try{
        $.ajax({
                url:'usuario.do',
                async:false,
                type:'POST',
                data: {usuario: $('#userInput').val(), password:$('#passwordInput').val()},
                success:function(responseText) {
                        alert("Usuario Logeado");
                        //Este comentario es a modo explicativo lo que se almacena 
                        //en el usr es el id de usuario o un hash de conexion -    
                        localStorage.setItem("usr",responseText );
                },
                error:  function(err){
                            alert(err);
                        }
                } );
        }
    catch(error){
        alert(error);
    }    
}
obtenerPaises();


});

function obtenerClima(){
    
    obtenerClimaHoy();
     obtenerClimaExtendido();
}

function obtenerClimaHoy(){   
    $("#SelectCiudad").html("");
     try{
        $.ajax({
                url:'obtenerClima',
                async:false,
                type:'POST',
                data: {idpais:$("#SelectPais").val(), idciudad:$("#SelectCiudad").val()},
              dataType:'text/plain',
                success:function(respJson) {
                    $("#contClimaHoy").html("");
                    $("#contClimaHoy").append(respJson);
                    
                },
                error:  function(err){
                     alert("err");
                         
                        }
                } );
        }
    catch(error){
        alert(error);
    }    
    
}   

function obtenerClimaSemana(){   
    $("#SelectCiudad").html("");
     try{
        $.ajax({
                url:'obtenerClimaExtend',
                async:false,
                type:'POST',
                data: {idpais:$("#SelectPais").val(), idciudad:$("#SelectCiudad").val()},
              dataType:'text/plain',
                success:function(respJson) {
                     $("#contClimaSemanal").html("");
                    $("#contClimaSemanal").append(respJson);
                    
                },
                error:  function(err){
                     alert("err");
                         
                        }
                } );
        }
    catch(error){
        alert(error);
    }    
    
}   


function obtenerCiudades(){   
    $("#SelectCiudad").html("");
     try{
        $.ajax({
                url:'Ciudades.do',
                async:false,
                type:'POST',
                data: {idpais:$("#SelectPais").val()},
              dataType:'json',
                success:function(respJson) {
               
                    $("#SelectCiudad").append('<option value="'+0+'">'+'Seleccione Ciudad'+'</option>');
                    
                    for(var i in respJson){
                        $("#SelectCiudad").append('<option value="'+i+'">'+respJson[i] +'</option>');
                }  
                },
                error:  function(err){
                     alert("err");
                         
                        }
                } );
        }
    catch(error){
        alert(error);
    }    
    
}   

function obtenerPaises(){
     try{
        $("#SelectPais").html("");
        $.ajax({
                url:'paises.do',
                async:false,
                type:'POST',
                data: {},
              dataType:'json',
                success:function(respJson) {
                     $("#SelectPais").append('<option value="'+0+'">'+'Seleccione País'+'</option>');
                    for(var i in respJson){
                        $("#SelectPais").append('<option value="'+i+'">'+respJson[i]+'</option>');
                }  
                },
                error:  function(err){
                     alert("err");
                         
                        }
                } );
        }
    catch(error){
        alert(error);
    }    
    
}  

function obtenerClimaCiudad(){}

function obtenerClimaExtendido(){}
