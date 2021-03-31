<%-- 
    Document   : index
    Created on : 30-mar-2021, 18:36:08
    Author     : hernan.liotta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

            <script src="js/funciones.js" type="text/javascript"></script>
  <!--  <link rel="stylesheet" href="css/myclass.css"/> -->
<title>HomePage</title>
</head>
<body>
    <div class = "panel panel-default inline">
        <!-- Panel Heading -->
        <div class = "panel-heading inline"  style="background-color:coral; color:white; padding:0px; margin:0px;">
			<div class="container-fluid"  style="padding:0px; margin:0px;">
				<div class="row"  style="padding:0px; margin:0px;" >
					<nav  style="padding:0px; margin:0px;" >
					    <div class="container-fluid"  style="padding:0px; margin:0px;">
					    <div class="row" style="padding:2px; margin:0px;" >
					        <div class="col-lg-2 col-lg-offset-1 col-md-2 col-md-offset-1 col-xs-12 col-sm-6"><img alt="" src="img/AV.png"></div> 
					        <div class="col-lg-2 col-lg-offset-6 col-md-2 col-md-offset-6 col-xs-12 col-sm-6" >
					       
					        	<div class="collapse navbar-collapse" id="exCollapsingNavbar"  >
					            	<ul class="nav navbar-nav  flex-row justify-content-between ml-auto">
					                	<li class="dropdown order-1" >
					                    	<button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-outline-secondary dropdown-toggle" style="  background-color: transparent; border-color: #ccc;"> INICIAR SESIÓN
													<span class="glyphicon glyphicon-user"></span></button>
						                    <ul class="dropdown-menu dropdown-menu-right mt-2" style="width:250px;padding:10px;">
    	                					   <li class="px-3 py-2">
						                           <form class="form" id="frmLogin" role="form" style="color:gray;font-size:8pt">
            	        					            <div class="form-group">
            	        					            	<label for="userInput">Usuario</label>
						                                    <input id="userInput" placeholder="americavirtual@gmail.com" class="form-control form-control-md" type="text" required>
                    						            </div>
					    	                            <div class="form-group">
            	        					            	<label for="passwordInput">Clave</label>
                    						                <input id="passwordInput" placeholder="******" class="form-control form-control-md" type="password" required>
					            	                    </div>
                    						            <div class="form-group">
                                                                                <button type="submit" class="btn  btn-block" style="background-color:coral;" onclick="logear();">INICIAR SESIÓN</button>
                    					    	        </div>

    	                					        </form>
						                        </li>
						                    </ul>
						                </li>
						            </ul>
					    	    </div>
					    	  
					        </div>
					    </div>
					    </div>
					</nav>
				</div>
			</div>
         </div>
        <!-- Panel Body -->
        <div class = "panel-body">
         	<div class="container-fluid">
         		<p style="text-align: center;">SERVICIO DEL CLIMA</p>
         		<hr heigth="2" color=coral;>
         		<div class="container">
         			<div class="row">
         				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" id="contZona">
         					<div class=" panel panel-default" style="margin:2px;padding:5px;background-color:white;color:gray;font-type:arial;">
         						<form style="padding:2px;">
    									<p style="color:blue;margin-botton:0px;text-align: center"><b>SELECCIONÁ ZONA</b></p>
    									<hr style="padding:0px;margin:0px;height:2px;border-width:0;background-color:blue"/>
    									<br/>
  									<div class="form-group">
    									<label for="SelectPais">País</label>
                                                                        <select class="form-control input-sm" id="SelectPais" type="text" onchange="obtenerCiudades();" >
                                                                        </select>
  									</div>
  									<br/>
   									<div class="form-group">
   										<label for="inputdefault">Ciudad</label>
   								 		<select class="form-control input-sm" id="SelectCiudad" type="text">
                                                                        </select>
  									</div>
                                                                        <div class="btn btn-default" style="width:100%;background-color:coral;color:white;" onclick="obtenerClima();">BUSCAR</div>
  								</form>
         					</div>
         				</div>
         				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" id="contClimaActual">
         					<div class="panel panel-default" style="margin:2px;padding:5px;background-color:white;color:gray;font-type:arial;">
         						<form style="padding:2px;">
  										<p style="color:blue;margin-botton:0px;text-align: center"><b>REPORTE DE CLIMA HOY</b></p>
    									<hr style="padding:0px;margin:0px;height:2px;border-width:0;;background-color:blue"/>
  									<br/>
  									<div class="form-group">
                                                                            <div id="contClimaHoy">
                                                                            </div>
  									</div>
								</form>         			
							</div>
						</div>
         			</div>
         			<div class="row" id="ClimaProyectado">
         			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
         			<div class="container inline">
         			<div class="panel" style="border:1px;solid"></div>
         			</div>
         			
         					<div class="panel panel-default" style="margin:2px;padding:5px;background-color:white;color:gray;font-type:arial;">
         						<form style="padding:2px;">
  										<p style="color:blue;margin-botton:0px;text-align: center"><b>REPORTE DE CLIMA SEMANAL</b></p>
    									<hr style="padding:0px;margin:0px;height:2px;border-width:0;background-color:blue"/>
  									<br/>
  									<div class="form-group">
    									<div id="contClimaSemanal">
                                                                                <div class="container-fluid">

                                                                            </div>
  									</div>
								</form>         			
							</div>
						</div>
         			</div>
         		</div>
         	</div>
      	</div>
        <!-- Panel Footer -->
        <div class="panel-footer" style="background-color: black;color:white;">
      	American Virtual 
      	</div>
      </div>
    
    

    </body>
</html>
