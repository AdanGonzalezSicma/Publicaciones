<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="CreandoProductividad.Contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TLA Contadores</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="images/demo/logo-icon.png"/>
 <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/pagina/bootstrap.css" rel="stylesheet" />
    <script src="css/pagina/js/popper.min.js"></script>
    <script src="css/pagina/js/jquery-3.2.1.slim.min.js"></script>
    <script src="css/pagina/js/bootstrap.min.js"></script>
    <script src="css/pagina/js/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <link href="css/menu.css" rel="stylesheet" />

</head>
<body>
     <div class="loader text-center">
        <div class="loader2">
            <img src="/images/load.gif" style="width:100px;" />
            <p style="font-size:20px;color:#424242">Cargando...</p>
        </div>

    </div>
    <style>
        .loader {
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: 50% 50% no-repeat rgb(249,249,249);
            opacity: .9;
        }

        .loader2 {
            position: fixed;
            left: 0px;
            top: 44%;
            width: 100%;
            height: 100%;
            z-index: 9999;
        }
    </style>
    <div class="wrapper row0">
           <div class="container-fluid section section-banner text-center d-xl-block bannersup">

            <div class="row text-center" style="padding:0.5%; margin-top:0px!important">
                <div class="col-lg-4 col-md-5 borde"><h3 style="color:white"> ¡Plataforma Nom-035!</h3></div>
                <div class="col-lg-5 col-md-5  borde"><h5 style="text-transform:none;color:white">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                <div class="col-lg-3 col-md-2"><a href="Cuenta/Registro.aspx" class="btn btn-bannersup" style=" min-width:90px"> <b>Iniciar Ahora</b></a></div>
                <br id="br" />
                <br id="br" />

            </div>
        </div>
        <header id="header" class="clear" style="margin-left: 20px">
            <div id="logo" class="one_quarter first">
                <h1 class="logoname clear"><a href="index.html">
                    <img src="images/demo/logo.png" style="width: 70%;"></a></h1>

            </div>
            <div class="three_quarter">
                <ul class="nospace clear">
                    <li class="one_quarter first">
                        <div class="block clear">
                            <a href="tel:+6622145772" style="text-decoration: none; color: #474747;">
                                <i class="fas fa-phone"></i>
                                <span><strong>Teléfono:</strong>(662) 214-5772</span>
                            </a>
                        </div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear">
                            <a href="mailto:contacto@tlacontadores.com?bcc=ymeldaleyva@tlacontadores.com&Subject=Solicitud%20de%20Información" style="text-decoration: none; color: #474747;">
                                <i class="fas fa-envelope" ></i>
                                <span><strong>Email:</strong> contacto@tlacontadores.com</span>
                            </a>
                        </div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear">
                            <a href="#" style="text-decoration: none; color: #474747;">
                                <i class="fas fa-clock" ></i><span>
                                    <strong>Lun. - Sab.:
                                    </strong>08.00am - 18.00pm
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear">
                            <a href="#"><i class="fas fa-map-marker-alt" ></i></a><span>
                                <strong>Dirección:
                                </strong>Blvr. Kino 315, Suite 1009, Piso 10
                            </span>
                        </div>
                    </li>

                </ul>
            </div>
        </header>
    </div>

    <style>
       
              @media screen and (max-width: 850px) {
            .navbar {
                display: none !important;
            }
        }

        .dropdown-menu.show {
            display: inline !important;
        }

        .dropdown-menu[x-placement^="top"], .dropdown-menu[x-placement^="right"], .dropdown-menu[x-placement^="bottom"], .dropdown-menu[x-placement^="left"] {
            right: auto;
            bottom: auto;
        }

        .dropdown-menu {
            position: absolute;
            top: -8px !important;
            left: 0;
            z-index: 1000;
            display: none;
            /* float: left; */
            min-width: 100%;
            padding: 0rem 0 !important;
            margin: 0rem 0 0 !important;
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

        .dropdown-menu li {
            display: inline-block !important
        }
      
    </style>

    <nav class="navbar navbar-expand-lg navbar-light justify-content-lg-end row1 ">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
            <ul class="navbar-nav justify-content-center">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html"><b>Inicio</b><span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="nosotros.html"><b>Nosotros</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="servicios.html"><b>Servicios</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Plataforma.html"><b>Plataforma</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Nom035.html"><b>NOM 035</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html#alianzas"><b>Alianzas</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contacto.aspx"><b>Contacto</b></a>
                </li>
                <li class="nav-item">
                    <a href="/Cuestionarios/Acceso.aspx?company=TLACONTADORES" class="btn my-2 my-sm-0 btn-cuestionario" type="submit"><i class="fas fa-file-alt" style="font-size:15px!important"></i><b>Aplicar Cuestionarios</b></a>
                </li>
                <li class="nav-item">
                    <a href="/Cuenta/Login.aspx" class="btn my-2 my-sm-0 btn-Iniciar" type="submit"><i class="fas fa-user" style="font-size:15px!important"></i><b>Iniciar Sesión</b></a>
                </li>
            </ul>
        </div>
    </nav>
 <div class="menu-container">

        <div class="menu" id="menu">

            <input type="radio" id="radio-0" name="menu" />
            <label class="tab" for="radio-0">
                <div class="item">
                    <a href="/index.html" class="menum">
                        <i class="fas fa-home fa-2x"></i>
                        <div class="item-title">Inicio</div>
                    </a>
                </div>
            </label>

            <input type="radio" id="radio-1" name="menu" />
            <label class="tab" for="radio-1">
                <div class="item">
                    <a href="/plataforma.html" class="menum">
                        <i class="fas fa-mobile fa-2x"></i>
                        <div class="item-title">Plataforma</div>
                    </a>
                </div>
            </label>

            <input type="radio" id="radio-2" name="menu" />
            <label class="tab" for="radio-2">
                <div class="item">
                    <a href="/Cuestionarios/Acceso.aspx?company=pruebac" class="menum">
                        <i class="fas fa-chevron-circle-down fa-2x"></i>
                        <div class="item-title">Cuestionarios</div>
                    </a>
                </div>
            </label>

            <input type="radio" id="radio-3" name="menu" checked />
            <label class="tab" for="radio-3">
                <div class="item">
                    <a href="/menu/menu.html" class="menum active">
                        <i class="fas fa-bars fa-2x"></i>
                        <div class="item-title">Más</div>
                    </a>
                </div>
            </label>

            <div class="blob-container">
                <div class="blob"></div>
            </div>

        </div>
    </div>
    <div class="wrapper bgded overlay" style="background-image: url('images/demo/backgrounds/Contabilidad.jpg');">
        <div class="hoc clear" style="height: 200px;">
            <br/>
            <br/>
            <br/>
            <br/>
            <div class="row">
                <div class="col-12 col-lg-10 col-md-10 col-sm-12 text-left">
                    <h3 style="font-size: 30px; ">Contacto
                    </h3>
                </div>
                <div class="col-12 col-lg-2 col-md-2 col-sm-12 ">
                    <p>Inicio / Contacto</p>
                </div>
            </div>
        </div>
    </div>
    <br/>
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12 col-sm-12">
                    <img src="images/demo/grandkino.jpg" style="width: 100%;">
                </div>
                <div class="col-lg-6 col-md-6 col-12 col-sm-12">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d871.57204294833!2d-110.93778581238047!3d29.0971726148866!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86ce85c577a5c127%3A0xcdc312ab76cbcfa0!2sGrand%20Kino%20Hermosillo!5e0!3m2!1ses-419!2smx!4v1595288724404!5m2!1ses-419!2smx" width="100%" height="100%" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>

        </div>
    </section>
    <form id="form1" runat="server">
        <!--Section: Contact v.2-->
        <section class="container mb-4">

            <!--Section heading-->
            <h2 class="h1-responsive font-weight-bold text-center my-4" style="font-size: 30px; font-family: Georgia, 'Times New Roman', Times, serif;">Contáctanos</h2>
            <!--Section description-->
            <br>

            <div class="row">

                <!--Grid column-->
                <div class="col-md-9 mb-md-0 mb-5">
                    <!-- CONTACTO -->
                    <form id="contact-form" name="contact-form" method="POST">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <label for="name" class="">
                                        <p>Nombre Completo</p>
                                    </label>
                                    <asp:TextBox ID="txtNombreCompleto" runat="server" name="name" class="form-control" placeholder="Nombre completo" required data-msg="Por favor introduzca al menos 4 caracteres"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <label for="email" class="">
                                        <p>Correo Electrónico</p>
                                    </label>
                                    <asp:TextBox ID="txtCorreo" runat="server" class="form-control" name="email" placeholder="Email" required data-msg="Por favor, introduzca un correo electrónico válido"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="md-form">
                                    <label for="message">
                                        <p>Asunto</p>
                                    </label>
                                    <asp:TextBox ID="txtAsunto" runat="server" placeholder="Asunto" required data-msg="Por favor introduzca al menos 8 caracteres de asunto" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="md-form">
                                    <label for="message">
                                        <p>Mensaje</p>
                                    </label>
                                    <asp:TextBox ID="txtMensaje" runat="server" TextMode="MultiLine" class="form-control md-textarea" Rows="5" required placeholder="Mensaje" style="resize: none;"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <div class="text-center">
                            <div class="g-recaptcha" data-sitekey="6LcBt7AaAAAAAJ2-BfS0ceKkNh_TdHYhXWyw-0It"></div>
                            <br />
                            <asp:Button type="submit" value="Submit" ID="btnEnviarMensaje" runat="server" Text="Enviar mensaje" CssClass="btn btn-lg btn-primary" OnClick="btnEnviarMensaje_Click"  style="width: 100%; color: white; background-color: #548bdc;border-color:#548bdc"/>
                        </div>
                        <asp:Label ID="lblEnviado" runat="server" Text="" Visible="false"></asp:Label>
                    </form>
                </div>
                <!-- END: CONTACTO -->

                <div class="col-md-3 text-center">
                    <ul class="list-unstyled mb-0">
                        <li>
                            <a href="https://www.google.com/maps/place/Grand+Kino+Hermosillo/@29.097082,-110.937531,19z/data=!4m5!3m4!1s0x0:0xcdc312ab76cbcfa0!8m2!3d29.0970824!4d-110.937531?hl=es-419" style="text-decoration: none; color: #474747">
                                <i class="fas fa-map-marker-alt fa-2x" style="color: #548bdc;"></i>
                                <p>
                                    Blvr. Kino 315, Suite 1009, Piso 10<br>
                                    Edificio Grand Kino Hermosillo, Col. Lomas del Pitic, C.P. 83010
                                </p>
                            </a>
                        </li>

                        <li>
                            <a href="tel:+6622145772" style="text-decoration: none; color: #474747">
                                <i class="fas fa-phone mt-4 fa-2x" style="color:#548bdc;"></i>
                                <p>(662)214·5772
                                    <br>
                                    214·6757</p>
                            </a>
                        </li>

                        <li>
                            <a href="mailto:contacto@tlacontadores.com?bcc=ymeldaleyva@tlacontadores.com&Subject=Solicitud%20de%20Información" style="text-decoration: none; color: #474747">
                                <i class="fas fa-envelope mt-4 fa-2x" style="color: #548bdc;"></i>
                                <p>contacto@tlacontadores.com</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <!--Grid column-->

            </div>

        </section>
        <!--Section: Contact v.2-->
    </form>
    <div class="wrapper row4">
        <footer id="footer" class="hoc clear">
            <div class="one_quarter first">
                <h1 class="logoname clear"><a href="index.html">
                    <img src="images/demo/logo-blanco.png" style="width: 100%;"></a></h1>
                <p class="btmspace-30">
                    Firma de Contadores dedicado a ofrecerle servicios profesionales de auditoria,
                    impuestos, contabilidad y consultoría administrativa y financiera. [<a href="#">&hellip;</a>]
                </p>
                <ul class="faico clear">
                    <li><a class="faicon-facebook" href="https://www.facebook.com/tlacontadores/"><i class="fab fa-facebook"></i></a></li>
                  <%--  <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                    <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
                    <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>--%>
                </ul>
            </div>
            <div class="one_quarter">
                <h6 class="heading">Contacto</h6>
                <ul class="nospace linklist contact">
                    <li>
                        <a href="https://www.google.com/maps/place/Grand+Kino+Hermosillo/@29.097082,-110.937531,19z/data=!4m5!3m4!1s0x0:0xcdc312ab76cbcfa0!8m2!3d29.0970824!4d-110.937531?hl=es-419" style="text-decoration: none; color: #fff">
                            <i class="fas fa-map-marker-alt"></i>
                            <address>
                                Blvr. Kino 315, Suite 1009, Piso 10
                                Edificio Grand Kino Hermosillo, Col. Lomas del Pitic, C.P. 83010
                            </address>
                        </a>
                    </li>
                    <li><a href="tel:+6622145772" style="text-decoration: none; color: #fff"><i class="fas fa-phone"></i>(662)214·5772</a></li>

                    <li>
                        <a href="mailto:contacto@tlacontadores.com?Subject=Solicitud%20de%20Información" style="text-decoration: none; color: #fff">
                            <i class="far fa-envelope"></i>
                            contacto@tlacontadores.com
                        </a>
                    </li>
                </ul>
            </div>
            <div class="one_quarter">
                <h6 class="heading">Menú</h6>
                <ul class="nospace linklist">
                    <li><a href="nosotros.html"  class="linkfooter">Nosotros</a></li>
                    <li><a href="servicios.html" class="linkfooter">Nuestros Servicios</a></li>
                      <li><a href="Buzon.aspx" class="linkfooter">Línea de denuncias</a></li>
                   

                </ul>
            </div>
            <div class="one_quarter">
                <h6 class="heading">Avisos</h6>
                <ul class="nospace linklist">
                    <li><a href="Aviso-privacidad.html" class="linkfooter">Aviso de privacidad</a></li>
                    <li><a href="terminos-condiciones.html" class="linkfooter">Términos y Condiciones</a></li>
                  

                </ul>
            </div>
        </footer>
    </div>
    <div class="wrapper row5">
        <div id="copyright" class="hoc clear">
        </div>
    </div>
    <a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
    <!-- JAVASCRIPTS -->
    <script src="layout/scripts/jquery.min.js"></script>
    <script src="layout/scripts/jquery.backtotop.js"></script>
    <script src="layout/scripts/jquery.mobilemenu.js"></script>  
      <script>
        $(window).on('load', function () {
            setTimeout(function () {
                $(".loader").css({ visibility: "hidden", opacity: "0" })
            }, 1000);

        });
    </script>
</body>
</html>
