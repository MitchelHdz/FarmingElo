<%@page session="true" %>
<%String usuario = (String)session.getAttribute("Usuario");%>
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
	<title>Perfil de <%=usuario%></title>
    </head>
    <body>
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
	                <div class="srch-wrapper form-group">
	                    <input type="text" class="srch-input " placeholder="Buscar..." />
	                    <button class="srch-button" type="button">
	                        <i class="fa fa-search"></i>
	                    </button>
	                </div>
	            </form>
	            <ul class="nav navbar-nav">
	                <li><a href="profile.jsp" class="login" id="popup"><%=usuario%></a></li>
	            </ul>
	        </div>
	    </div>
	</nav>
	</header><!-- /header -->
	
	<section class="profile-about">
	<div class="profile-picture" id="profile-picture">
		<span class="change-picture" id="change-picture"><i id="edit" class="fa fa-pencil"></i> Cambiar Foto</span>	

	</div>
	</section>
	<main id="main">
		
	</main>
<footer id="footer">
    <div class="col-md-8 about-page">

    <h1>Made with <i class="fa fa-heart"></i> + <i class="fa fa-coffee"></i></h1>
    <h3><a href="https://twitter.com/Mitcheel_Hdz">@Mitcheel_Hdz</a></h3>
    <h3><a href="https://twitter.com/Anthony_Steiner">@anthony_steiner</a></h3>
</div>
<div class="col-md-4 social">
    <span class="icons-social">
        <i class="fa fa-facebook"></i>
        <i class="fa fa-twitter"></i>
        <i class="fa fa-twitch"></i>
    </span>
</div>

</footer>
    </body>
</html>