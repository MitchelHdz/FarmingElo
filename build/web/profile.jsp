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
        <script type="text/javascript" src="javascripts/dropzone-amd-module.js"></script>
        <script src="javascripts/parallax.js"></script>
        <title>Perfil de <%=usuario%></title>
        <style>
            
            .profile-picture{
            min-height:300px;
            min-width: 300px;
            display: table;
            border-radius: 100%;
            background-image: url("<%=img%>");
            background-size: 300px, 300px;
            background-repeat: no-repeat;
            position: relative;
            top: -300px;
            margin: auto;
            border: 5px solid #212121;
            -webkit-transition-property: background;
            -webkit-transition-duration: 1s;
            box-shadow: none !important;
            }
            .profile-picture:hover{
                background: radial-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url("<%=img%>");
                background-size: 300px, 300px;
                background-repeat: no-repeat;
        </style>
    </head>
    <body>
<%if(usuario== null){%>
        <header id="header" class="header-profile parallax-window" data-parallax="scroll" data-image-src="images/image1.jpg" data-position="bottom" data-speed="0.3">
            <nav class="navbar-inverse">
                <div class="container-fluid">
                    <div class="pull-left">
                        <a href="#" class="navbar-brand active">Farming ELO</a>
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
                </div>
            </div>
        </section>
        <div class="row rows-profile">
            <div class="col-md-4">
                <div class="container center teams-user" style="background-color:#EEEEEE;">
                    <h3>Equipos</h3>
                    <div class="waves-effect waves-light team ">
                         <img class="img-team img-circle" src="<%=img%>">
                         <h4 class="team-name">@<%=equipo%></h4>
                         <div class="info-team">
                            <p> The last of us</p>
                            <h5>Desde 12 del 12 del 2012</h5>
                         </div>
                     </div>
                         <div class="waves-effect waves-light team ">
                         <img class="img-team img-circle" src="<%=img%>">
                         <h4 class="team-name">@<%=equipo%></h4>
                         <div class="info-team">
                            <p> The last of us</p>
                            <h5>Desde 12 del 12 del 2012</h5>
                         </div>
                     </div>
                </div>
                <div class="container center stats-user" style="background-color: white;">
                    <h3>Estadisticas</h3>
                    <img src="images/group.png" class="stats-img">
                    <h3 style="text-align: center;">Logro por ser chingon</h3>
                </div>
            </div>
            <div class="col-md-8 container-fluid">
                <div class="container-fluid center comments">
                     <h3>Publicaciones</h3>
                     <div class="container-fluid comment waves-effect waves-light">
                         <img class="img-profile img-circle" src="<%=img%>">
                         <h4 class="user-comment">@MitchelHdz 21 Octubre 2015</h4>
                         <div class="info-comment">
                            <p> Lorem ipsum dolorrggkfsdafhgfzdsghgfdzsghfdgggggggggggggggggggg sit amet</p>
                             <h5 class="center"><i class="fa fa-star"></i>Favorito <i class="fa fa-share"></i>Compartir</h5>
                         </div>
                     </div>
                        <div class="container-fluid comment waves-effect waves-light">
                         <img class="img-profile img-circle" src="<%=img%>">
                         <h4 class="user-comment">@MitchelHdz 21 Octubre 2015</h4>
                         <div class="info-comment">
                            <p> Lorem ipsum dolorrggkfsdafhgfzdsghgfdzsghfdgggggggggggggggggggg sit amet</p>
                            <h5 class="center"><i class="fa fa-star"></i>Favorito <i class="fa fa-share"></i>Compartir</h5>
                         </div>
                     </div>
                         <div class="container comment waves-effect waves-light">
                         <img class="img-profile img-circle" src="<%=img%>">
                         <h4 class="user-comment">@MitchelHdz 21 Octubre 2015</h4>
                         <div class="info-comment">
                            <p> Lorem ipsum dolorrggkfsdafhgfzdsghgfdzsghfdgggggggggggggggggggg sit amet</p>
                            <h5 class="center"><i class="fa fa-star"></i>Favorito <i class="fa fa-share"></i>Compartir</h5>
                         </div>
                     </div>
                         <h2 class="center">Cargar más...</h2>
                             
                </div>
            </div>
            </div>
        <main id="main">
        </main>
<%}else{%>
        <div class="fixed-action-btn"><a class="btn-floating btn-large waves-effect waves-light red" href="register.jsp" style="border-color: black;"><i class="fa fa-cog fa-3x" onmouseover="spin()" id="config"></i></a></div>
        <header id="header" class="header-profile parallax-window" data-parallax="scroll" data-image-src="images/image1.jpg" data-position="bottom" data-speed="0.3">
            <nav class="navbar-inverse">
                <div class="container-fluid">
                    <div class="pull-left">
                        <a href="#" class="navbar-brand active">Farming ELO</a>
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
            <div class="follow">
            <a href="#" onClick="follow()"> 
                <p id="followBtn">Seguir</p>
            </a>
            </div>    
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
        </section>
        <div class="container-fluid rows-profile">
            <div class="col-md-4">
                <div class="container center teams-user card hoverable" style="background-color:#EEEEEE;">
                    <h3>Equipos</h3>
                    <div class="waves-effect waves-light team  ">
                         <img class="img-team img-circle" src="<%=img%>">
                         <h4 class="team-name">@<%=equipo%></h4>
                         <div class="info-team">
                            <p> The last of us</p>
                            <h5>Desde 12 del 12 del 20012</h5>
                         </div>
                     </div>
                         <div class="waves-effect waves-light team ">
                         <img class="img-team img-circle" src="<%=img%>">
                         <h4 class="team-name">@<%=equipo%></h4>
                         <div class="info-team">
                            <p> The last of us</p>
                            <h5>Desde 12 del 12 del 2012</h5>
                         </div>
                     </div>
                </div>
                <div class="container center stats-user card hoverable" style="background-color: white;">
                    <h3>Estadisticas</h3>
                    <img src="images/group.png" class="stats-img">
                    <h3 style="text-align: center;">Logro por ser chingon</h3>
                </div>
            </div>
            <div class="container col-md-8">
                <div class="container center comments card hoverable">
                     <h3>Publicaciones</h3>
                     <div class="comment">
                     <form action="">
                     <textarea rows="3" class="form-control"></textarea>
                     <button method="POST" class="commentBtn" value="Publicar">Publicar</button>
                     </form>
                     </div>
                     <div class="container comment waves-effect waves-light">
                         <img class="img-profile img-circle" src="<%=img%>">
                         <h4 class="user-comment">@MitchelHdz 21 Octubre 2015</h4>
                         <div class="info-comment">
                            <p> Lorem ipsum dolorrggkfsdafhgfzdsghgfdzsghfdgggggggggggggggggggg sit amet</p>
                             <h5 class="center"><i class="fa fa-star"></i>Favorito <i class="fa fa-share"></i>Compartir</h5>
                         </div>
                     </div>
                        <div class="container comment waves-effect waves-light">
                         <img class="img-profile img-circle" src="<%=img%>">
                         <h4 class="user-comment">@MitchelHdz 21 Octubre 2015</h4>
                         <div class="info-comment">
                            <p> Lorem ipsum dolorrggkfsdafhgfzdsghgfdzsghfdgggggggggggggggggggg sit amet</p>
                            <h5 class="center"><i class="fa fa-star"></i>Favorito <i class="fa fa-share"></i>Compartir</h5>
                         </div>
                     </div>
                         <div class="container comment waves-effect waves-light">
                         <img class="img-profile img-circle" src="<%=img%>">
                         <h4 class="user-comment">@MitchelHdz 21 Octubre 2015</h4>
                         <div class="info-comment">
                            <p> Lorem ipsum dolorrggkfsdafhgfzdsghgfdzsghfdgggggggggggggggggggg sit amet</p>
                            <h5 class="center"><i class="fa fa-star"></i>Favorito <i class="fa fa-share"></i>Compartir</h5>
                         </div>
                     </div>
                         <h2 class="center">Cargar más...</h2>
                             
                </div>
            </div>
            </div>
        <div style="overflow:hidden; " class="modal modal-fixed-footer" id="modalimg">
            <div style="height: 390px;" class="modal-content">
                <h4>Selecciona una imagen...</h4>
                <form style="height: 300px;" action="ProfileUpload" class="dropzone" method="POST" id="simg" enctype="multipart/form-data">
                </form>
            </div>
            <div class="modal-footer hoverable">
                <a style="color: black;" href="#!" class="modal-action modal-close waves-effect waves-green btn btn-flat">Cerrar</a>
            </div>
        </div>
        <main id="main">
        </main>
<%}%>
    </body>
</html>
