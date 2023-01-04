<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nosotros.aspx.cs" Inherits="Sistema_web.Nosotros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Más Control</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon"/>
    <link rel="stylesheet" href="/Content/css/bootstrap.css"/>
    <link rel="stylesheet" href="/Content/css/fonts.css"/>
    <link rel="stylesheet" href="/Content/css/style.css"/>
     <link href="http://fonts.cdnfonts.com/css/aller" rel="stylesheet">
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
                                <div class="rd-navbar-aside-outer rd-navbar-collapse bg-gray-dark">
                            <div class="rd-navbar-aside">
                                <ul class="list-inline navbar-contact-list text-center">
                                  
                                    <li>
                                       <p style="color:white; font-size:18px">¡Síguenos en nuestras redes sociales! o escríbenos al correo</p>
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
                                  
                                 
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-facebook" href="https://www.facebook.com/MasControlClub/"></a></li>
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-instagram" href="https://www.instagram.com/mascontrolclub/"></a></li>
                                     <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-youtube-play" href="https://www.youtube.com/channel/UCJSckwQpNeNq9z4CZJ4niCw"></a></li>
                                </ul>
                            </div>
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
                                            <li class="rd-nav-item active"><a class="rd-nav-link" href="nosotros.aspx">Nosotros</a>
                                            </li>
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
     <%--    <nav class="mobile-bottom-nav">
                <div class="mobile-bottom-nav__item">
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
                            <li class="rd-nav-item active" style="margin:10px">    <div class="mobile-bottom-nav__item mobile-bottom-nav__item--active ">
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
          <section class="section section-intro context-dark">
        <div class="intro-bg" style="background: url(/Content/images/intro-bg-1.png) no-repeat;background-size:cover;background-position: top center;"></div>
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-xl-8 text-center">
              <h1 class="font-weight-bold wow fadeInLeft">Nosotros</h1>
              <p class="intro-description wow fadeInRight">Brindamos a los jóvenes y líderes deportivos locales la tecnología, el servicio y la comunidad que necesitan para administrar y hacer crecer sus organizaciones.</p>
            </div>
          </div>
        </div>
      </section>
          <!-- About page about section-->
      <section class="section section-md">
        <div class="container">
          <div class="row row-40 justify-content-center">
            <div class="col-lg-6 col-12">
              <div class="offset-top-45 offset-lg-right-45">
                <div class="section-name wow fadeInRight" data-wow-delay=".2s">¿Quiénes Somos?</div>
                <h3 class="wow fadeInLeft text-capitalize" data-wow-delay=".3s">Más Control<span class="text-primary"> APP</span></h3>
                <p class="font-weight-bold text-gray-dark wow fadeInUp" data-wow-delay=".4s">Somos una organizacion dedicada a mejorar las cuestiones administrativas de los clubs de deportes.</p>
                <p class="wow fadeInUp" data-wow-delay=".4s">Ponemos nuestros valores al frente y al centro de todo lo que hacemos. Definen expectativas, guían nuestras acciones e influyen en cómo construimos y desarrollamos nuestro equipo. </p>
                
                <div class="offset-top-20">
                  <!--Linear progress bar-->
                  <article class="progress-linear">
                    <div class="progress-header progress-header-simple">
                      <p>Administración y control de membresías</p><span class="progress-value">85</span>
                    </div>
                    <div class="progress-bar-linear-wrap">
                      <div class="progress-bar-linear"></div>
                    </div>
                  </article>
                  <!--Linear progress bar-->
                  <article class="progress-linear">
                    <div class="progress-header progress-header-simple">
                      <p>Marketing</p><span class="progress-value">45</span>
                    </div>
                    <div class="progress-bar-linear-wrap">
                      <div class="progress-bar-linear"></div>
                    </div>
                  </article>
                  <!--Linear progress bar-->
                  <article class="progress-linear">
                    <div class="progress-header progress-header-simple">
                      <p>Analisis</p><span class="progress-value">90</span>
                    </div>
                    <div class="progress-bar-linear-wrap">
                      <div class="progress-bar-linear"></div>
                    </div>
                  </article>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-sm-10 col-12">
              <div class="block-decorate-img wow fadeInLeft" data-wow-delay=".2s"><img src="/Content/images/RESPONSIVE.png" alt="" width="570" height="351"/>
              </div>
            </div>
          </div>
        </div>
      </section>
             <!-- Our team-->
      <section class="section section-md">
        <div class="container">
          <div class="row row-50 justify-content-center">
            <div class="col-md col-12 text-center">
              <div class="section-name wow fadeInRight" data-wow-delay=".2s">Conócenos</div>
              <h3 class="wow fadeInLeft text-capitalize" data-wow-delay=".3s">Nuestro<span class="text-primary"> Equipo</span></h3>
              
            </div>
          </div>
          <div class="row row-50 justify-content-center">
            <div class="col-xl-4 col-sm-6 col-10 wow fadeInLeft" data-wow-delay=".3s">
              <div class="team-classic-wrap">
                <div class="team-classic-img"><img src="/Content/images/team-classic-1-370x397.jpg" alt="" width="370" height="198"/>
                </div>
                <div class="block-320 text-center">
                  <h4 class="font-weight-bold">William Johnson</h4><span class="d-block">CEO, Founder</span>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quam velit, dapibus quis vehicula eu, porttitor vitae lorem. </p>
                  <hr class="offset-top-40"/>
                 
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-sm-6 col-10 wow fadeInUp" data-wow-delay=".3s">
              <div class="team-classic-wrap">
                <div class="team-classic-img"><img src="/Content/images/team-classic-2-370x397.jpg" alt="" width="370" height="198"/>
                </div>
                <div class="block-320 text-center">
                  <h4 class="font-weight-bold">Jane McMillan</h4><span class="d-block">Business Advisor</span>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quam velit, dapibus quis vehicula eu, porttitor vitae lorem. </p>
                  <hr class="offset-top-40"/>
                 
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-sm-6 col-10 wow fadeInRight" data-wow-delay=".3s">
              <div class="team-classic-wrap">
                <div class="team-classic-img"><img src="/Content/images/team-classic-3-370x397.jpg" alt="" width="370" height="198"/>
                </div>
                <div class="block-320 text-center">
                  <h4 class="font-weight-bold">Robert Smith</h4><span class="d-block">Marketing Manager</span>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quam velit, dapibus quis vehicula eu, porttitor vitae lorem. </p>
                  <hr class="offset-top-40"/>
                 
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--Brands-->
      <section class="section section-md bg-gray-lighten">
        <div class="container">
          <div class="row">
            <!-- Owl Carousel-->
            <div class="owl-carousel text-center owl-brand" data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="3" data-xl-items="5" data-xxl-items="5" data-dots="true" data-nav="false" data-stage-padding="15" data-loop="false" data-margin="30" data-mouse-drag="false" data-autoplay="true">
              <div class="item"><a href="https://www.sicmacontroles.mx"><img src="/Content/images/brand-1-200x48.png" alt="" width="200" height="24"/></a>
              </div>
              <div class="item"><a href="http://www.donaensonora.com"><img src="/Content/images/brand-2-200x48.png" alt="" width="200" height="24"/></a>
              </div>
              <div class="item"><a href="http://pldmexico.info"><img src="/Content/images/brand-3-200x48.png" alt="" width="200" height="24"/></a>
              </div>
              <div class="item"><a href="https://www.creandoproductividad.com"><img src="/Content/images/brand-4-200x48.png" alt="" width="200" height="24"/></a>
              </div>
              <div class="item"><a href="https://tlacontadores.com"><img src="/Content/images/brand-5-200x48.png" alt="" width="200" height="24"/></a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--Cta section-->
      <section class="section section-md" style="background:url(/Content/images/bg-image-4-1700x394.jpg) no-repeat; background-size: cover;">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-10 col-12 text-center"><span class="text-white d-block cta-big-text font-weight-medium">¿Aún tienes algunas preguntas?</span>
              <h2 class="text-white"><span class="d-block">Contáctanos:<a class="underline-link" href="tel:+526623242038"> (662) 324 2038
 </a></span></h2>
              <p class="text-white">No dude en ponerse en contacto con nuestro equipo para obtener más información sobre los servicios prestados por nosotros y múltiples ofertas para su equipo!</p><a class="button-circle button-default-outline button button-lg button-width-210" href="contacto.aspx">contacto</a>
            </div>
          </div>
        </div>
      </section>
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
                                <li><a href="Nosotros.aspx">Nosotros</a></li>
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
