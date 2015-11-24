<%-- 
    Document   : teams.jsp
    Created on : 03-nov-2015, 11:46:11
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="icon" href="images/farmingelo222.png" sizes="16x16">
        <link rel="stylesheet" type="text/css" href="flaticon/flaticon.css">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="bower_components/bootstrap/dist/js/bootstrap.js" type="text/javascript"></script>
        <script src="javascripts/main.js" type="text/javascript" charset="utf-8" async defer></script>
        <script type="text/javascript" src="javascripts/css3-animate-it.js"></script>
        <script src="javascripts/parallax.js"></script>
        <title>Perfil de Equipo</title>
    </head>
    <body>
        <a class="flotante" href="#"  id="config"><i class="fa fa-cog fa-3x config" onmouseover="spin()"></i></a>
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
                        <form action="#" class="navbar-form navbar-left">
                            <div class="srch-wrapper-prof form-group">
                                <input type="text" class="srch-input " placeholder="Buscar..." />
                                <button class="srch-button" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </form>
                        <div class="dropdown">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" ><img class="nav-profilepic img-circle" src="images/profile1.jpg"/> User <i class="fa fa-angle-down"></i><i class=""></i></a>
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
                         <h1 class="user-name"></h1>
                    </div>
                </div>
                <div class="col-md-6 rows-profile">
                    <div class="profile-info">
                         <h4 class="user-info">GGG</h4>
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
            <main id="main">
        </main>
        
    </body>
</html>