<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aplicacion.aspx.cs" Inherits="Sistema_web.Aplicacion" %>

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
  .intro-description{
      display:none
  }
  h2{
      font-size:20px
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
                                           <%-- <li class="rd-nav-item"><a class="rd-nav-link" href="nosotros.aspx">Nosotros</a>
                                            </li>--%>
                                            <li class="rd-nav-item active"><a class="rd-nav-link" href="aplicacion.aspx">Aplicación</a>
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
  <a class="nav-item" href="/index.aspx" >
    <i class="fa fa-home"></i><span>Inicio</span>
  </a>
  
  <a class="nav-item" href="/Contacto.aspx">
    <i class="fa fa-envelope"></i><span>Contacto</span>
  </a>
  
  <a class="nav-item" href="/Cuenta/Iniciar-Sesion.aspx">
    <i class="fa fa-user-circle"></i><span>Cuenta</span>
  </a>
  
  <a class="nav-item active" href="/Menu.aspx" id="home">
    <i class="fa fa-bars"></i>
  </a>

</div>
               <section class="section section-intro context-dark">
        <div class="intro-bg" style="background: url(/Content/images/plataforma.jpg) no-repeat;background-size:cover;background-position: top center;"></div>
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-xl-8 text-center">
              <h1 class="font-weight-bold wow fadeInLeft">Aplicación</h1>
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
                <div class="section-name wow fadeInRight" data-wow-delay=".2s">Nuestra Aplicación Más Control</div>
                <h3 class="wow fadeInLeft text-capitalize" data-wow-delay=".3s">Alcances <span class="text-primary"> Generales</span></h3>
               <ul class="text-justify" style="padding-left:15px">
                   <li  style="list-style:circle">•	Administración y control de membresías para club deportivos</li>
                   <li>•	Enfocado a Entrenadores de Club deportivos: Basketball, Voleibol, Béisbol, Futbol, Natación, Equitación, etc.</li>
                   <li>•	Control de Pagos por inscripciones, membresías semanales, decenales, quincenales, mensuales.</li>
                   <li>•	Control de pagos por uniformes, copas o torneos, otros eventos.</li>
                   <li>•	Control de pagos por entrenamientos personalizados, individual, familiar, grupal.</li>
                   <li>•	Control de variables físico-atléticas</li>
                   <li>•	Estadísticas</li>

               </ul>
               
              
              </div>
            </div>
            <div class="col-lg-6 col-sm-10 col-12">
              <div class="block-decorate-img wow fadeInLeft" data-wow-delay=".2s"><img src="/Content/images/Sistema-responsive.png" alt="" width="570" height="351"/>
              </div>
            </div>
          </div>
        </div>
      </section>
         <section  class="section section-md"style="background: linear-gradient(to bottom, #0090bf, #404044);">
             <div class="container" >
                   <div class="row row-40 justify-content-center"> 
                       <div class="col-lg-6 col-sm-10 col-12">
              <div class="block-decorate-img wow fadeInLeft" data-wow-delay=".2s"><img src="/Content/images/Entrenamientos.jpg" alt="" width="570" height="351"/>
              </div>
            </div>
                       <div class="col-lg-6 col-12">
                           <div class="offset-top-45 offset-lg-right-45">
                               <div class="section-name wow fadeInRight" data-wow-delay=".2s" style="color: white">Más Control Entrenamientos</div>
                               <h3 class="wow fadeInLeft text-capitalize" data-wow-delay=".3s" style="color: white">Entrenamientos <span class="text-white">Personalizados.</span></h3>
                               <p class="font-weight-bold text-white wow fadeInUp" data-wow-delay=".4s"  style="color: white">El desarrollar un entrenamiento con metodología personalizada permite desarrollar un mejor seguimiento frente a las diferentes variables</p>
                               <p class="wow fadeInUp" data-wow-delay=".4s"  style="color: white">
                                   Variables como la nutrición, la periodización, la planificación y dosificación de carga, los test entre otras. 
                       El entrenamiento personal permite crear una cultura física mediante la realización de actividad física sistematizada, pero el trabajo del entrenador 
                       personal no solo está en planificar y dosificar los ejercicios también está en concientizar de los beneficios que esto ofrece.
                               </p>
                           </div>
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
                <div class="section-name wow fadeInRight" data-wow-delay=".2s">Más Control  Rendimiento</div>
                <h3 class="wow fadeInLeft text-capitalize" data-wow-delay=".3s">Evaluaciones de  <span class="text-primary"> Alto Rendimiento</span></h3>
                  <div class="row">
                      <div class="col-lg-6">
                          <ul >
                              <li>•	Agilidad</li>
                              <li>•	Resistencia</li>
                              <li>•	Fuerza</li>
                              <li>•	Composición Corporal</li>
                              <li>•	Movilidad y Equilibrio</li>
                              <li>•	Velocidad y Potencia</li>


                          </ul>
                      </div>
                       <div class="col-lg-6">
                           <ul >

                               <li>•	Psicología</li>
                               <li>•	Salud del deportista</li>
                               <li>•	Nutrición y Gasto Calórico</li>
                               <li>•	Otras Habilidades</li>
                               <li>•	Estadísticas  / Desempeño</li>

                           </ul>

                       </div>
                  </div>
              
               
              
              </div>
            </div>
            <div class="col-lg-6 col-sm-10 col-12">
              <div class="block-decorate-img wow fadeInLeft" data-wow-delay=".2s"><img src="/Content/images/rendimiento.jpg" alt="" width="570" height="351"/>
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
                               <%-- <li><a href="Nosotros.aspx">Nosotros</a></li>--%>
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
</html>
