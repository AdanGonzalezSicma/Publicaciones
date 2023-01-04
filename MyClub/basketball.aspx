<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="basketball.aspx.cs" Inherits="Sistema_web.basketball" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Más Control</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon" />
    <link rel="stylesheet" href="/Content/css/bootstrap.css" />
    <link rel="stylesheet" href="/Content/css/fonts.css" />
    <link rel="stylesheet" href="/Content/css/style.css" />
     <!-- site icons -->
    <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/gif" />
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

        ul, ol {
            list-style: none;
            padding: 0;
            /* margin: 0; */
        }
        ul li{
            display:inline-block!important
        }

        ol, ul, dl {
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
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="index.aspx">Inicio</a>
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
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Inscripciones/Menu.aspx">Inscribirse</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>

                </div>
            </header>
            <nav class="mobile-bottom-nav">
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
                        <ul class="dropdown-menu" style="position: absolute; will-change: transform; top: -5px!important; left: 0px; right:0;  transform: translate3d(-5px, -258px, 0px); padding:0!important;margin:0!important; border-bottom:none; border-right:none">
                           <%-- <li class="rd-nav-item active" style="margin:10px">    <div class="mobile-bottom-nav__item ">
                            <div class="mobile-bottom-nav__item-content">
                              <a  href="nosotros.aspx"> <i class="fa fa-user"></i></a> 
                               Nosotros
                            </div>
                        </div>
                            </li>--%>
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

            </nav>
            <!--Main section-->
            <section class="section main-section parallax-scene-js"
                style="background: url('/Content/images/basketball.jpg') no-repeat center center; background-size: cover;">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 col-12">
                            <div class="main-decorated-box text-center text-xl-">
                          
                                <br /><br /><br />
                                <div class="decorated-subtitle text-italic text-white wow slideInLeft"  style="font-size:50px">
                                   <h1 style="font-weight:700; color:white">Basketball</h1>
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
                                <img src="/Content/images/basket2.jpg"
                                    alt="" width="570" height="351" />
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="block-sm offset-top-45">
                                <div class="section-name wow fadeInRight" data-wow-delay=".2s">Basketball</div>
                                <h3 class="wow fadeInLeft text-capitalize devider-bottom" data-wow-delay=".3s">Breve descripción <span
                                    class="text-primary"> de la actividad</span></h3>
                                <p class="offset-xl-40 wow fadeInUp" data-wow-delay=".4s">deporte de equipo que se puede desarrollar tanto en pista cubierta como en descubierta, en el que dos conjuntos de cinco jugadores cada uno, intentan anotar puntos, también llamados canastas o dobles y/o triples introduciendo un balón en un aro colocado a 3,05 metros del suelo del que cuelga una red, lo que le da un aspecto de cesta o canasta.</p>
                                <p class="default-letter-spacing font-weight-bold text-gray-dark wow fadeInUp" data-wow-delay=".4s">Fue inventado por James Naismith profesor de la Universidad de Illinois (Massachusetts)  y nació como una respuesta a la necesidad de realizar alguna actividad deportiva durante el invierno</p>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="decor-text decor-text-1">APP</div>
            </section>
            <!--Features-->
            <section class="section custom-section position-relative section-md">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-7 col-lg-7 col-12">
                            <div class="section-name wow fadeInRight">Basketball</div>
                            <h3 class="text-capitalize devider-left wow fadeInLeft" data-wow-delay=".2s">Tiempos del <span
                                class="text-primary"> Juego</span></h3>
                            <p>
                               Se juega con dos equipos de cinco personas, durante 4 períodos o cuartos de 10 minutos (FIBA) 4 o 
                                12 (NBA) minutos cada uno. Al finalizar el segundo cuarto, se realiza un descanso, normalmente de 
                                15 a 20 minutos según la reglamentación propia del campeonato al cual el partido pertenezca.
                            </p>
                            <p>El baloncesto en la actualidad cuenta con una gran difusión en diferentes países de todo el mundo,
                                siendo uno de los deportes con más participantes y competiciones regulares en distintas zonas y países 
                                del mundo. En Estados Unidos, se disputa la NBA, considerada la competición más prestigiosa en el 
                                mundo del baloncesto de clubes y la ACB en España.</p>
                            <div class="row row-15">
                                <div class="col-xl-12 wow fadeInUp" data-wow-delay=".2s">
                                    <div class="box-default">
                                        <div class="box-default-title">Objetivos</div>
                                        <p class="box-default-description text-justify">
                                            -Conocer la técnica y la táctica del baloncesto.<br />
                                            -Conocer el reglamento de este deporte.<br />
                                            -Perfeccionar los fundamentos de este deporte, en aquellas personas que ya lo conocen.<br />
                                            -Adaptar el nivel físico a cada persona.<br />
                                            -Entrenar de forma lúdica.                                       
                                        </p>
                                        <span class="box-default-icon novi-icon icon-lg mercury-icon-lightbulb-gears"></span>
                                    </div>
                                </div>
                             
                              
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="image-left-side wow slideInRight" data-wow-delay=".5s">
                    <img src="/Content/images/basket3.jpg" alt=""
                        width="636" height="240" />
                </div>
                <div class="decor-text decor-text-2 wow fadeInUp" data-wow-delay=".3s">APP</div>
            </section>

           <section  class="section section-md"style="background: linear-gradient(to bottom, #0090bf, #404044);">
             <div class="container" >
                   <div class="row row-40 justify-content-center"> 
                       <div class="col-lg-6 col-sm-10 col-12">
              <div class="block-decorate-img wow fadeInLeft" data-wow-delay=".2s"><img src="/Content/images/basket4.jpg" alt="" width="570" height="351"/>
              </div>
            </div>
                       <div class="col-lg-6 col-12">
                           <div class="offset-top-45 offset-lg-right-45">
                               <div class="section-name wow fadeInRight" data-wow-delay=".2s" style="color: white">Basketball Entrenamientos</div>
                               <h3 class="wow fadeInLeft text-capitalize" data-wow-delay=".3s" style="color: white">Horarios de <span class="text-white">Entrenamientos</span></h3>
                                <div class="table-responsive">
    <table class="table table-bordered">
      <thead  style="color:white; background-color:#f7aa00">
        <tr>
          <th>Horas</th>
          <th>Días </th>
         
        </tr>
      </thead>
      <tbody style="color:white">
        <tr>
          <td>2</td>
          <td>Martes</td>
          
        </tr>
           <tr>
          <td>1</td>
          <td>Jueves</td>
          
        </tr>
           <tr>
          <td>3</td>
          <td>Viernes</td>
          
        </tr>
      </tbody>
    </table>
  </div>
                           </div>
                       </div>
                       
                   </div>
             </div>
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
            </footer>
        </div>
        <div class="snackbars" id="form-output-global"></div>
    </form>
    <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
</html>
