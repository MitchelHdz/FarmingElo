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
%>
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
        <script src="javascripts/parallax.js"></script>
        <title>Perfil de <%=usuario%></title>
        <style>
            html { overflow-x:hidden; }
            .profile-picture{
            width: 20%;
            height: 100%;
            min-height:300px;
            min-width: 300px;
            display: table;
            border-radius: 100%;
            background: transparent;
            background-size: 100%, 100%;
            position: relative;
            top: -250px;
            margin: auto;
            background-image: url("<%=img%>");
            border: 5px solid #212121;
            -webkit-transition-property: background;
            -webkit-transition-duration: 1s;
            z-index: 3;
            box-shadow: none !important;
            }
            .profile-picture:hover{
                background:
                linear-gradient(
                rgba(33, 33, 33, 0.50),
                rgba(33, 33, 33, 0.50)
                ),
                transparent no-repeat;
                background-size: 100%, 100%;
                background-image: url("<%=img%>");
            }
        </style>
    </head>
    <body>
        <div class="fixed-action-btn" style="top: 100px; right: 5px;"><a class="btn-floating btn-large waves-effect waves-light red" href="#" style="border-color: black;"><i class="fa fa-cog fa-3x" onmouseover="spin()" id="config"></i></a></div>
        <header id="header" class="header-profile parallax-window" data-parallax="scroll" data-image-src="images/image1.jpg" data-position="bottom" data-speed="0.3">
            <nav class="navbar-inverse">
                <div class="container-fluid">
                    <div class="pull-left">
                        <a href="#" class="navbar-brand active">Farming ELO</a>
                        <ul class="nav navbar-nav">
                            <li>
                            <li><a href="#"> News Feed </a></li>
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
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" ><img class="nav-profilepic img-circle" src="<%=img%>"/> <%=usuario%> <i class="fa fa-angle-down"></i><i class=""></i></a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="profile.jsp" class="login" id="perfil"><i class="fa fa-user"></i> Mi Perfil</a></li>
                                <li><a href="LogOut" class="login" id="logout"><i class="fa fa-sign-out"></i> Cerrar Sesión</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header><!-- /header -->
            
        <section class="profile-about">
            <div class="row">
                <div class=" col-md-6 rows-profile">
                    <div class="profile-name">
                        <h1 class="user-name"><%=nombre%> <%=apellido_pat%></h1>
                        <h4 class="user-name">@<%=usuario%>, @<%=equipo%>.</h4>
                    </div>
                </div>
                <div class="col-md-6 rows-profile">
                    <div class="profile-info">
                        <h4 class="user-info">"<%=descripcion%>"</h4>
                        <p class="user-info"><%=pais%>.</p>
                        <p class="user-info"></p>
                    </div>
                </div>
            </div>
            <div id="profile-picture" class="profile-picture">
                <div class="profile-picture-alv">
                    <a class="btn modal-trigger z" href="#modalimg" >
                        <span class="change-picture" style="cursor: pointer;" id="change-picture"><i class="fa fa-pencil"></i> Cambiar Foto</span>	
                    </a>
                </div>
            </div>
            <div class="profile">
                jejeje 
            </div>
        </section>
        <div style="overflow:hidden; " class="modal modal-fixed-footer" id="modalimg">
            <div style="height: 390px;" class="modal-content">
                <h4>Selecciona una imagen...</h4>
                <form style="height: 300px;" action="ProfileUpload" class="dropzone" method="POST" id="simg" enctype="multipart/form-data">
                    <div class="dz-message ">
                        <h3><b>Arrastre una imagen, o haz click :D...</b></h3>
                    </div>
                </form>
            </div>
            <div class="modal-footer hoverable">
                <a style="color: black;" href="#!" class="modal-action modal-close waves-effect waves-green btn btn-flat">Cerrar</a>
            </div>
        </div>
        <main id="main">
        </main>
    </body>
</html>