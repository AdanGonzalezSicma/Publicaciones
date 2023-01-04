<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Sistema_web.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Más Control</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon"/>
    <link rel="stylesheet" href="/Content/css/bootstrap.css" />
    <link rel="stylesheet" href="/Content/css/fonts.css" />
    <link rel="stylesheet" href="/Content/css/style.css" />
   
    
    <style>
        .ie-panel {
            display: none;
            background: #212121;
            padding: 10px 0;
            box-shadow: 3px 3px 5px 0 rgba(0, 0, 0, .3);
            clear: both;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        html.ie-10 .ie-panel,
        html.lt-ie-10 .ie-panel {
            display: block;
        }

     

        .dropdown-menu.show {
            display:inline!important;
        }

        .dropdown-menu[x-placement^="top"], .dropdown-menu[x-placement^="right"], .dropdown-menu[x-placement^="bottom"], .dropdown-menu[x-placement^="left"] {
            right: auto;
            bottom: auto;
        }

        .dropdown-menu {
            position: absolute;
            top: -5px!important;
            left: 0;
            z-index: 1000;
            display: none;
            /* float: left; */
            min-width: 100%;
           padding: 0rem 0!important; 
            margin: 0rem 0 0!important; 
            font-size: 1rem;
            color: #888888;
            text-align: center;
            list-style: none;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid rgba(0, 0, 0, 0.15);
            border-radius: 0.25rem;
        }

       #ulmovil {
            list-style: none;
            padding: 0;
            /* margin: 0; */
        }
         #ulmovil li{
            display:inline-block!important
        }

       #ulmovil {
            /* margin-top: 0; */
            margin-bottom: 1rem;
        }
        .registrate{
font-size:30px;
color:white;
text-align:center
}
        .btn-registro{
            font-size:13px;
            text-align:center
        }
        .botonRegistrate{
            text-align:center
        }
        @media screen and (max-width: 800px) {
.registrate{
font-size:18px;
color:white;
text-align:Center
}
 .botonRegistrate{
            text-align:center
        }
  .btn-registro{
            font-size:13px;
            text-align:center
        }
}
         @media screen and (max-width: 1000px) and (min-width: 800px) {
.registrate{
font-size:25px;
color:white;
text-align:Center
}
 .botonRegistrate{
            text-align:center
        }
  .btn-registro{
            font-size:13px;
            text-align:center
        }
}
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ie-panel">
            <a href="#">
                <img src="/Content/images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820"
                    alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a>
        </div>
        <div class="preloader">
            <div class="preloader-body">
                <div class="cssload-container">
                    <div class="cssload-speeding-wheel"></div>
                </div>
                <p>Cargando...</p>
            </div>
        </div>
         <div class="container-fluid section section-banner  d-xl-block" style="background-color:#0090bf">

            <div class="row" style="padding:0.5%; margin-top:0px!important">
                <div class="col-lg-1"></div>
                <div class="col-lg-6 col-md-12" ><h3 class="registrate" > ¿Administras un club y aún no eres miembro?</h3>

                </div>
                
                <div class="col-lg-4 col-md-12 botonRegistrate"><a href="Cuenta/Registro.aspx" class="button-width-190 button-primary button-circle button-lg button btn-registro" style=" background-color:red"> ¡Registrate ahora!</a></div>
             <div class="col-lg-1"></div>
            </div>
        </div>
            
        <div class="page">
            <header class="section page-header">
                <!--RD Navbar-->
                <div class="rd-navbar-wrap">
                    <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
                        data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static"
                        data-lg-device-layout="rd-navbar-static" data-xl-layout="rd-navbar-static"
                        data-xl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px"
                        data-xxl-stick-up-offset="46px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
                        <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse">
                            <span></span>
                        </div>
                        <div class="rd-navbar-aside-outer rd-navbar-collapse bg-gray-dark">
                            <div class="rd-navbar-aside">
                                <ul class="list-inline navbar-contact-list text-center">

                                    <li>
                                        <p style="color: white; font-size: 18px">¡Síguenos en nuestras redes sociales! o escríbenos al correo</p>
                                    </li>
                                    <li>
                                        <div class="unit unit-spacing-xs align-items-center">
                                            <div class="unit-left">
                                                <span class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-envelope" style="color: #0090bf;"></span>
                                            </div>
                                            <div class="unit-body">
                                                <a href="mailto:contacto@mascontrol.club">contacto@mascontrol.club</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="unit unit-spacing-xs align-items-center">
                                            <div class="unit-left">
                                                <span class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-phone" style="color: #0090bf;"></span>
                                            </div>
                                            <div class="unit-body">
                                                <a href="tel:+526623242038">(662) 324 2038</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="social-links">
                                    <%--      <li>
                                        <div class="unit unit-spacing-xs align-items-center">
                                            <div class="unit-left">
                                                <span class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-envelope" style="color: #0090bf;"></span>
                                            </div>
                                            <div class="unit-body">
                                                <a href="mailto:contacto@mascontrol.club">contacto@mascontrol.club</a>
                                            </div>
                                        </div>
                                    </li>
                                    --%>
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-facebook" href="https://www.facebook.com/MasControlClub/"></a></li>
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-instagram" href="https://www.instagram.com/mascontrolclub/"></a></li>
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-youtube-play" href="https://www.youtube.com/channel/UCJSckwQpNeNq9z4CZJ4niCw"></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="rd-navbar-main-outer">
                            <div class="rd-navbar-main">
                                <!--RD Navbar Panel-->
                                <div class="rd-navbar-panel">
                                    <!--RD Navbar Toggle-->
                                    <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                                    <!--RD Navbar Brand-->
                                    <div class="rd-navbar-brand">
                                        <!--Brand-->
                                        <a class="brand" href="index.aspx">
                                            <img class="brand-logo-dark"
                                                src="/Content/images/logo-mascontrolVB.png" alt="" width="250" height="17" /><img class="brand-logo-light"
                                                    src="/Content/images/logo-mascontrolVB.png" alt="" width="250" height="17" /></a>
                                    </div>
                                </div>
                                <div class="rd-navbar-main-element">
                                    <div class="rd-navbar-nav-wrap">
                                        <ul class="rd-navbar-nav">
                                            <li class="rd-nav-item active"><a class="rd-nav-link" href="index.aspx">Inicio</a>
                                            </li>
                                          <%--  <li class="rd-nav-item"><a class="rd-nav-link" href="nosotros.aspx">Nosotros</a>
                                            </li>--%>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="aplicacion.aspx">Aplicación</a>
                                            </li>
                                           
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="blog.aspx">Blog</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="contacto.aspx">Contacto</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Cuenta/Iniciar-Sesion.aspx">Inciar Sesión</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Inscripciones/Menu.aspx">Ingresar como Alumno</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>

                </div>
            </header>
           <div class="menu2">
  <a class="nav-item active" href="index.aspx" id="home">
    <i class="fa fa-home"></i><span>Inicio</span>
  </a>
  
  <a class="nav-item" href="Contacto.aspx">
    <i class="fa fa-envelope"></i><span>Contacto</span>
  </a>
  
  <a class="nav-item" href="/Cuenta/Iniciar-Sesion.aspx">
    <i class="fa fa-user-circle"></i><span>Cuenta</span>
  </a>
  
  <a class="nav-item" href="Menu.aspx">
    <i class="fa fa-bars"></i>
  </a>

</div>
          <%--  <nav class="mobile-bottom-nav">
                <div class="mobile-bottom-nav__item mobile-bottom-nav__item--active">
                    <div class="mobile-bottom-nav__item-content active">
                        <a href="index.aspx" style="padding-bottom:0px!important"><i class="fa fa-home"></i></a>
                        Inicio
                    </div>
                </div>


                <div class="mobile-bottom-nav__item">
                    <div class="mobile-bottom-nav__item-content">
                        <a class="rd-nav-link" href="contacto.aspx"><i class="fa fa-envelope" aria-hidden="true"></i></a>
                        Contacto
                    </div>
                </div>
                <div class="mobile-bottom-nav__item">
                    <div class="mobile-bottom-nav__item-content">
                        <a class="rd-nav-link" href="/Cuenta/Iniciar-Sesion.aspx"><i class="fa fa-user-circle" aria-hidden="true"></i></a>
                        Cuenta
                    </div>
                </div>
                <div class="mobile-bottom-nav__item">
                    <div class="mobile-bottom-nav__item-content">
                        <a class="rd-nav-link" href="/Inscripciones/Menu.aspx"><i class="fa fa-user-plus" aria-hidden="true"></i></a>
                        Registro
                    </div>
                </div>

                <div class="mobile-bottom-nav__item">
                    <div class="mobile-bottom-nav__item-content">
                        <a class="rd-nav-link " data-toggle="dropdown"><i class="fa fa-bars" aria-hidden="true"></i></a>
                        <ul class="dropdown-menu movil" id="ulmovil" style="position: absolute; will-change: transform; top: -5px!important; left: 0px; right:0;  transform: translate3d(-5px, -258px, 0px); padding:0!important;margin:0!important; border-bottom:none; border-right:none">
                            <li class="rd-nav-item active" style="margin:10px">    <div class="mobile-bottom-nav__item ">(esto estaba comentado)
                            <div class="mobile-bottom-nav__item-content">
                              <a  href="nosotros.aspx"> <i class="fa fa-user"></i></a> 
                               Nosotros 
                            </div>
                        </div>
                            </li>
                            <li class="rd-nav-item" style="margin:10px">  <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content">
                             <a href="aplicacion.aspx"> <i class="fa fa-mobile-phone"></i></a> 
                               Aplicación
                            </div>
                        </div>
                            </li>
                                
                            <li class="rd-nav-item" style="margin:10px">  <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content">
                             <a href="blog.aspx"> <i class="fa fa-pencil-square-o"></i></a> 
                              Blog
                            </div>
                        </div>
                            </li>
                           
                          
                           
                        </ul>
                    </div>
                </div>

            </nav>--%>
            <!--Main section-->
            <section class="section main-section parallax-scene-js"
                style="background: url('/Content/images/bg-1-1700x803-3.png') no-repeat center center; background-size: cover;">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 col-12">
                            <div class="main-decorated-box text-center text-xl-left">
                               <br /><br /><br />
                                <div class="decorated-subtitle text-italic text-white wow slideInLeft">
                                    TODAS LAS HERRAMIENTAS QUE
                NECESITAS.
                                </div>
                                 <br /><br /><br />
                            </div>
                        </div>
                        <div class="col-12 text-center offset-top-75" data-wow-delay=".2s">
                            <a
                                class="button-way-point d-inline-block text-center d-inline-flex flex-column justify-content-center"
                                href="#" data-custom-scroll-to="about"><span class="fa-chevron-down"></span></a>
                        </div>
                    </div>
                </div>
                <div class="decorate-layer">
                    <div class="layer-1">
                        <div class="layer" data-depth=".20">
                            <img src="/Content/images/parallax-item-1-563x532.png" alt="" width="563"
                                height="266" />
                        </div>
                    </div>
                    <div class="layer-2">
                        <div class="layer" data-depth=".30">
                            <img src="/Content/images/parallax-item-2-276x343.png" alt="" width="276"
                                height="171" />
                        </div>
                    </div>
                    <div class="layer-3">
                        <div class="layer" data-depth=".40">
                            <img src="/Content/images/parallax-item-3-153x144.png" alt="" width="153"
                                height="72" />
                        </div>
                    </div>
                    <div class="layer-4">
                        <div class="layer" data-depth=".20">
                            <img src="/Content/images/parallax-item-4-69x74.png" alt="" width="69"
                                height="37" />
                        </div>
                    </div>
                    <div class="layer-5">
                        <div class="layer" data-depth=".40">
                            <img src="/Content/images/parallax-item-5-72x75.png" alt="" width="72"
                                height="37" />
                        </div>
                    </div>
                    <div class="layer-6">
                        <div class="layer" data-depth=".30">
                            <img src="/Content/images/parallax-item-6-45x54.png" alt="" width="45"
                                height="27" />
                        </div>
                    </div>
                </div>
            </section>
            <!--About-->
            <section class="section section-sm position-relative" id="about">
                <div class="container">
                    <div class="row row-30">
                        <div class="col-lg-6">
                            <div class="block-decorate-img wow fadeInLeft" data-wow-delay=".2s">
                                <img src="/Content/images/RESPONSIVE.png"
                                    alt="" width="570" height="351" />
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="block-sm offset-top-45">
                                <div class="section-name wow fadeInRight" data-wow-delay=".2s">Tenemos lo que necesitas</div>
                                <h3 class="wow fadeInLeft text-capitalize devider-bottom" data-wow-delay=".3s">PARA QUE<span
                                    class="text-primary"> TRIUNFES</span></h3>
                                <p class="offset-xl-40 wow fadeInUp" data-wow-delay=".4s">Dedique menos tiempo y recursos a las tareas administrativas.</p>
                                <p class="default-letter-spacing font-weight-bold text-gray-dark wow fadeInUp" data-wow-delay=".4s">Le ayudamos a automatizar el trabajo para que pueda concentrar su energía en las cosas que ama.</p>
                                <a
                                    class="button-width-190 button-primary button-circle button-lg button offset-top-30" href="aplicacion.aspx">Nuestra Tecnología</a>
                            </div>
                        </div>
                    </div>
                </div>
               <%-- <div class="decor-text decor-text-1">APP</div>--%>
            </section>
            <!--Features-->
            <section class="section custom-section position-relative section-md">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-7 col-lg-7 col-12">
                            <div class="section-name wow fadeInRight">MÁS CONTROL</div>
                            <h3 class="text-capitalize devider-left wow fadeInLeft" data-wow-delay=".2s">PARA ADMINISTRAR TU ESCUELA DE<span
                                class="text-primary"> DEPORTES</span></h3>
                            <p>
                                <b>Todas las herramientas que necesitas</b><br>
                                Inicie rápido y sin problemas, brinde a sus alumnos una experiencia de registro que sea rápida, fácil y flexible.

                            </p>
                            <div class="row row-15">
                                <div class="col-xl-6 wow fadeInUp" data-wow-delay=".2s">
                                    <div class="box-default">
                                        <div class="box-default-title">INNOVAR</div>
                                        <p class="box-default-description text-justify">Prepárese para el éxito hoy y mañana. Más control está diseñado para ayudarlo mediante la automatización de sus procesos y centralizando todo en una sola herramienta</p>
                                        <span class="box-default-icon novi-icon icon-lg mercury-icon-lightbulb-gears"></span>
                                    </div>
                                </div>
                                <div class="col-xl-6 wow fadeInUp" data-wow-delay=".3s">
                                    <div class="box-default">
                                        <div class="box-default-title">Gestionar</div>
                                        <p class="box-default-description text-justify">Ahorre tiempo con nuestras funciones de comunicación, ya sea que esté automatizando recordatorios eventos especiales, de pago, cambios de programación, etc. </p>
                                        <span class="box-default-icon novi-icon icon-lg mercury-icon-target-2"></span>
                                    </div>
                                </div>
                                <div class="col-xl-6 wow fadeInUp" data-wow-delay=".4s">
                                    <div class="box-default">
                                        <div class="box-default-title">Equipo Experto</div>
                                        <p class="box-default-description text-justify">Ponemos nuestros conocimientos, experiencia y valores en todo lo que hacemos. Sus necesidades crean expectativas y guían nuestras acciones para desarrollar soluciones de gran nivel.</p>
                                        <span class="box-default-icon novi-icon icon-lg mercury-icon-user"></span>
                                    </div>
                                </div>
                                <div class="col-xl-6 wow fadeInUp" data-wow-delay=".5s">
                                    <div class="box-default">
                                        <div class="box-default-title">Plataforma amigable</div>
                                        <p class="box-default-description text-justify">Nuestra solución administrativa pone a su club en la palma de su mano para que dedique más tiempo a sus jugadores, padres y entrenadores.</p>
                                        <span class="box-default-icon novi-icon icon-lg mercury-icon-partners"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="image-left-side wow slideInRight" data-wow-delay=".5s">
                    <img src="/Content/images/home-2-636x480.jpg" alt=""
                        width="636" height="240" />
                </div>
              <%--  <div class="decor-text decor-text-2 wow fadeInUp" data-wow-delay=".3s">APP</div>--%>
            </section>

            <!--Pricing-->
          <%--  <section class="section section-md bg-xs-overlay"
                style="background: url('/Content/images/bg-image-3-1700x883.png')no-repeat; background-size: cover">
                <div class="container">
                    <div class="row row-50 justify-content-center">
                        <div class="col-12 text-center col-md-10 col-lg-8">
                            <div class="section-name wow fadeInRight" data-wow-delay=".2s">Opciones de paquetes</div>
                            <h3 class="wow fadeInLeft text-capitalize" data-wow-delay=".3s">¿QUÉ HACE QUE NUESTROS PRECIOS SEAN<span
                                class="text-primary"> DIFERENTES?</span></h3>

                        </div>
                    </div>
                    <div class="row row-30 justify-content-center">
                        <div class="col-xl-4 col-md-6 col-12 wow fadeInDown" data-wow-delay=".3s">
                            <div class="pricing-box bg-gray-dark">
                                <div class="pricing-box-tittle">Starter</div>
                                <p>Perfect for startups</p>
                                <hr />
                                <div class="pricing-box-inner">
                                    <span class="pricing-box-symbol">$</span><span
                                        class="pricing-box-price">39</span>
                                </div>
                                <div class="pricing-box-label bg-gray">MONTHLY</div>
                                <p>
                                    Business Strategy
                                    <br>
                                    Financial Advisory
                                </p>
                                <a
                                    class="button button-190 button-circle btn-primary-rounded" href="#">get started</a>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6 col-12 wow fadeInUp" data-wow-delay=".4s">
                            <div class="pricing-box bg-gray-primary">
                                <div class="pricing-box-tittle">Professional</div>
                                <p>Designed for medium businesses</p>
                                <hr />
                                <div class="pricing-box-inner">
                                    <span class="pricing-box-symbol">$</span><span
                                        class="pricing-box-price">69</span>
                                </div>
                                <div class="pricing-box-label bg-gray-primary-light">MONTHLY</div>
                                <p>
                                    Operations Management
                                    <br>
                                    Strategic Planning
                                </p>
                                <a
                                    class="button button-190 button-circle btn-rounded-outline" href="#">get started</a>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6 col-12 wow fadeInDown" data-wow-delay=".3s">
                            <div class="pricing-box bg-gray-dark">
                                <div class="pricing-box-tittle">Premium</div>
                                <p>For international enterprises</p>
                                <hr />
                                <div class="pricing-box-inner">
                                    <span class="pricing-box-symbol">$</span><span
                                        class="pricing-box-price">89</span>
                                </div>
                                <div class="pricing-box-label bg-gray">MONTHLY</div>
                                <p>
                                    Quality Engineering
                                    <br>
                                    Marketing Consulting
                                </p>
                                <a
                                    class="button button-190 button-circle btn-primary-rounded" href="#">get started</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>--%>
             <!--About-->
            <section class="section section-sm position-relative" id="about">
                <div class="container">
                    <div class="row row-30">
                        <div class="col-lg-6">
                            <div class="block-decorate-img wow fadeInLeft" data-wow-delay=".2s">
                                <img src="Content/images/basket2.jpg"
                                    alt="" width="570" height="351" />
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="block-sm offset-top-45">
                                <div class="section-name wow fadeInRight" data-wow-delay=".2s">Disciplinas</div>
                                <h3 class="wow fadeInLeft text-capitalize devider-bottom" data-wow-delay=".3s">BASKET<span
                                    class="text-primary">BALL</span></h3>
                                <p class="offset-xl-40 wow fadeInUp" data-wow-delay=".4s">deporte de equipo que se puede desarrollar tanto en pista cubierta como en descubierta, en el que dos conjuntos de cinco jugadores cada uno, intentan anotar puntos, también llamados canastas o dobles y/o triples introduciendo un balón en un aro colocado a 3,05 metros del suelo del que cuelga una red, lo que le da un aspecto de cesta o canasta.</p>
                               
                                <a
                                    class="button-width-190 button-primary button-circle button-lg button offset-top-30" href="basketball.aspx">Ver más</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="decor-text decor-text-1">APP</div>--%>
            </section>
            <br />
            <br />
            <!--Footer-->
            <footer class="section footer-classic section-sm">
                <div class="container">
                    <div class="row row-30">
                        <div class="col-lg-3 wow fadeInLeft">
                            <!--Brand-->
                            <a class="brand" href="index.aspx">
                                <img class="brand-logo-dark"
                                    src="/Content/images/logo-mascontrol.png" alt="" width="100" height="17" /><img class="brand-logo-light"
                                        src="/Content/images/logo-mascontrol.png" alt="" width="100" height="17" /></a>
                            <p class="footer-classic-description offset-top-0 offset-right-25">
                                Brindamos a los jóvenes y líderes deportivos locales la tecnología, el servicio y la 
                                comunidad que necesitan para administrar y hacer crecer sus organizaciones.
                            </p>
                        </div>
                        <div class="col-lg-3 col-sm-8 wow fadeInUp">
                            <p class="footer-classic-title">contacto</p>

                            <a class="d-inline-block accent-link" href="mailto:contacto@mascontrol.club">contacto@mascontrol.club</a>
                            <a class="d-inline-block accent-link" href="tel:+526623242038">(662) 324 2038</a>

                        </div>
                        <div class="col-lg-2 col-sm-4 wow fadeInUp" data-wow-delay=".3s">
                            <p class="footer-classic-title">Menú</p>
                            <ul class="footer-classic-nav-list">
                                <li><a href="index.aspx">Inicio</a></li>
                              <%--  <li><a href="Nosotros.aspx">Nosotros</a></li>--%>
                                <li><a href="aplicacion.aspx">Aplicación</a></li>
                                <li><a href="blog.aspx">Blog</a></li>
                                <li><a href="contacto.aspx">Contacto</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-4 wow fadeInLeft" data-wow-delay=".2s">

                            <p>Inicie sin problemas nuevos programas y brinde a sus clientes una experiencia de registro que sea rápida, fácil y flexible.</p>
                        </div>
                    </div>
                </div>
                <div class="container wow fadeInUp" data-wow-delay=".4s">
                    <div class="footer-classic-aside">
                        <p class="rights">
                            <span>&copy;&nbsp;</span><span class="copyright-year"></span>.Todos los derechos reservados. Diseño
            by <a href="https://www.sicmacontroles.mx">Sicma Controles</a>
                        </p>
                        <ul class="social-links">

                            <li><a class="fa fa-facebook" href="https://www.facebook.com/MasControlClub/"></a></li>
                            <li><a class="fa fa-instagram" href="https://www.instagram.com/mascontrolclub/"></a></li>
                            <li><a class="fa fa-youtube-play" href="https://www.youtube.com/channel/UCJSckwQpNeNq9z4CZJ4niCw"></a></li>
                        </ul>
                    </div>
                </div>
                <br />
          
              
            </footer>
        </div>
        <div class="snackbars" id="form-output-global"></div>
    </form>
    <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
    <script>
feather.replace();

document.querySelector(".nav-item").focus();
    </script>
</html>
