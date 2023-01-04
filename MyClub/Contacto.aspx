<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="Sistema_web.Contacto" %>

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
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="aplicacion.aspx">Aplicación</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="blog.aspx">Blog</a>
                                            </li>
                                            <li class="rd-nav-item active"><a class="rd-nav-link" href="contacto.aspx">Contacto</a>
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
  <a class="nav-item" href="index.aspx" >
    <i class="fa fa-home"></i><span>Inicio</span>
  </a>
  
  <a class="nav-item active" href="Contacto.aspx" id="home">
    <i class="fa fa-envelope"></i><span>Contacto</span>
  </a>
  
  <a class="nav-item" href="/Cuenta/Iniciar-Sesion.aspx">
    <i class="fa fa-user-circle"></i><span>Cuenta</span>
  </a>
  
  <a class="nav-item" href="Menu.aspx">
    <i class="fa fa-bars"></i>
  </a>

</div>
            <section class="section section-intro context-dark">
                <div class="intro-bg" style="background: url(/Content/images/intro-bg-1.jpg) no-repeat; background-size: cover; background-position: top center;"></div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 text-center">
                            <h1 class="font-weight-bold wow fadeInLeft">Contacto</h1>
                            <p class="intro-description wow fadeInRight">¿Tienes algunas preguntas?</p>
                        </div>
                    </div>
                </div>
            </section>
            <!--Mailform-->
            <section class="section section-md">
                <div class="container">
           
                    <div class="row justify-content-center">

                        <div class="col-xl-12 col-md-12 col-12">
                            <div class="rd-mailform text-left" data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="form-group">
                                            <label for="usr">Nombre<span class="req-symbol">*</span></label>
                                            <input type="text" class="form-control" id="usr" data-constraints="@Required">
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label for="usr">Teléfono<span class="req-symbol">*</span></label>
                                            <input type="text" class="form-control" id="phone" data-constraints="@Required  @PhoneNumber">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="usr">E-Mail<span class="req-symbol">*</span></label>
                                    <input type="email" class="form-control" id="email" data-constraints="@Required @Email">
                                </div>


                                <div class="form-group">
                                    <label for="comment">Mensaje<span class="req-symbol">*</span></label>
                                    <textarea class="form-control" rows="5" id="comment" data-constraints="@Required"></textarea>
                                </div>

                                <!--Google captcha-->
                                <div class="form-wrap text-left form-validation-left">
                                    <div class="recaptcha" id="captcha1" data-sitekey="6LfZlSETAAAAAC5VW4R4tQP8Am_to4bM3dddxkEt"></div>
                                </div>
                                <div class="form-button group-sm text-center text-lg-left">
                                    <button class="button button-primary" type="submit">Enviar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Google Map-->
            <section class="section">
                <!--Please, add the data attribute data-key="YOUR_API_KEY" in order to insert your own API key for the Google map.-->
                <!--Please note that YOUR_API_KEY should replaced with your key.-->
                <!--Example: <div class="google-map-container" data-key="YOUR_API_KEY">-->
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1743.0736054812999!2d-110.999189!3d29.101335000000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfece996eb44709fc!2sSICMA%20Controles!5e0!3m2!1ses-419!2smx!4v1620417415024!5m2!1ses-419!2smx" width="100%" height="450" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
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
                           <%--     <li><a href="Nosotros.aspx">Nosotros</a></li>--%>
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
    </form>
    <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
</html>
