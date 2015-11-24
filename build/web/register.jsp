<%-- 
    Document   : register
    Created on : 24-nov-2015, 7:15:29
    Author     : sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="stylesheets/bootstrap.css">
        <link rel="stylesheet" href="stylesheets/animations.css">
        <link rel="stylesheet" href="stylesheets/style.css">
        <link rel="stylesheet" href="stylesheets/basic.css">
        <link rel="stylesheet" href="stylesheets/dropzone.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="icon" href="images/farmingelo222.png" sizes="16x16">
        <link rel="stylesheet" type="text/css" href="flaticon/flaticon.css">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="bower_components/bootstrap/dist/js/bootstrap.js" type="text/javascript"></script>
        <script src="javascripts/materialize.js" type="text/javascript"></script>
        <script src="javascripts/main.js" type="text/javascript" charset="utf-8" async defer></script>
        <script type="text/javascript" src="javascripts/css3-animate-it.js"></script>
        <script type="text/javascript" src="javascripts/dropzone.js"></script>
        <script type="text/javascript" src="javascripts/dropzone-amd-module.js"></script>
        <script src="javascripts/parallax.js"></script>
        <title>Registro</title>
    </head>
    <body style="background-color:#730B05; ">
        <div class="container register">
        <div class="row centered-form">
        <div class="">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h1 class="center">Termina de llenar tu registro</h1>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                                                    <h3>Nombre</h3>
                                                                    <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="Nombre">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<h3>Apellido</h3>	
                                                                    <input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Apellido">
			    					</div>
			    				</div>
			    			</div>
                                                <div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    				<div class="form-group">
                                                            <h3>Cuentanos algo acerca de ti</h3>
                                                             <textarea rows="3" class="form-control"></textarea>

                                                        </div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<h3>Escoge una foto</h3>	
                                                                   <input type="file" id="exampleInputFile">
			    					</div>
			    				</div>
			    			</div>
			    			

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
                                                                    <h3>Pais</h3>
                                                                    <input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Pais">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<h3>Comunidad</h3>
                                                                        <select name="comunnities" class="form-control">
                                                                            <option value="TLOU">The last of us</option>
                                                                            
                                                                          </select>
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<input type="submit" value="Registrar" class=" btn-block registerBtn">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
    </body>
    
</html>
