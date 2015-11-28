<%@page session="true" %>
<% String usuario, nombre, apellido_pat, equipo, pais, descripcion,img, id, correo, nivel;
   usuario = (String)session.getAttribute("Usuario");
   img = (String) session.getAttribute("Foto");
   id = (String) session.getAttribute("Id");
   correo = (String) session.getAttribute("Correo") ;
   nivel = (String) session.getAttribute("Nivel");
   nombre = "Anthony";
   apellido_pat= "Steiner";
   equipo= "The Royalty";
   pais = "México";
   descripcion = "1v1 cuando quieras, n00b.";
   if(usuario==null){
       String redirectURL = "index.html";
        response.sendRedirect(redirectURL);
   }
%><%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <body class="registerBackground">
        <div class="fixed-action-btn"><a class="btn-floating btn-large waves-effect waves-light red" href="profile.jsp" style="border-color: black;"><i class="fa fa-arrow-left fa-3x"></i></a></div>
        <nav class="navbar-inverse">
            <div class="container-fluid">
                <div class="pull-left">
                    <a href="profile.jsp" class="navbar-brand active">Farming ELO</a>
                    <ul class="nav navbar-nav">
                        <li>
                        <li><a href="#"> ¿Qué hay de Nuevo? </a></li>
                    </ul>
                </div>
                <div class="pull-right">
                    <form action="#" class=" srch-form navbar-form navbar-left">
                        <div class="srch-wrapper form-group">
                            <input type="text" class="srch-input " placeholder="Buscar..." />
                            <button class="srch-button" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </form>
                    <div class="dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown" ><img class="nav-profilepic img-circle" src="<%=img%>"/> Usuario <i class="fa fa-angle-down"></i><i class=""></i></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="profile.jsp" class="login" id="perfil"><i class="fa fa-user"></i> Mi Perfil</a></li>
                            <li><a href="LogOut" class="login" id="logout"><i class="fa fa-sign-out"></i> Cerrar Sesión</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
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
                                <div class="row ">
                                    <input type="submit" value="Registrar" class=" btn btn-flat col-md-3 center">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
        
</html>
Quitar imagen
Agregar S Nombre
Agregar S Apellido
Quitar comunidad
Ocupar bien espacio... que quede bonito.
