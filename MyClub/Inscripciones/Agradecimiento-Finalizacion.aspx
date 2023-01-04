<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agradecimiento-Finalizacion.aspx.cs" Inherits="Sistema_web.Inscripciones.Agradecimiento_Finalizacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon" />
    <link rel="stylesheet" href="/Content/css/bootstrap.css" />
    <link rel="stylesheet" href="/Content/css/fonts.css" />
    <link rel="stylesheet" href="/Content/css/style.css" />
    <link href="http://fonts.cdnfonts.com/css/aller" rel="stylesheet"/>
    <title>Más Control</title>
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

        ul, ol {
            list-style: none;
            padding: 0;
            /* margin: 0; */
        }

            ul li {
                display: inline-block !important
            }

        ol, ul, dl {
            /* margin-top: 0; */
            margin-bottom: 1rem;
        }

        .registrate {
            font-size: 30px;
            color: white;
            text-align: center
        }

        .btn-registro {
            font-size: 13px;
            text-align: center
        }

        .botonRegistrate {
            text-align: center
        }

        @media screen and (max-width: 800px) {
            .registrate {
                font-size: 18px;
                color: white;
                text-align: Center
            }

            .botonRegistrate {
                text-align: center
            }

            .btn-registro {
                font-size: 13px;
                text-align: center
            }
        }

        @media screen and (max-width: 1000px) and (min-width: 800px) {
            .registrate {
                font-size: 25px;
                color: white;
                text-align: Center
            }

            .botonRegistrate {
                text-align: center
            }

            .btn-registro {
                font-size: 13px;
                text-align: center
            }
        }

        .logo {
            width: 15%
        }

        .pasosImg {
            width: 80%
        }

        .Indicaciones {
            position: absolute;
            top: 300px;
            left: 20%;
            right: 20%;
        }

        h4 {
            font-size: 30px
        }

        @media screen and (max-width: 600px) {
            .logo {
                width: 50%
            }

            .pasosImg {
                width: 100%
            }

            .titulo {
                font-size: 30px;
                color: #424242 !important
            }

            .subtitulo {
                font-size: 18px;
                color: #424242 !important
            }

            .Indicaciones {
                position: absolute;
                top: 200px;
                left: 0%;
                right: 0%;
            }
        }

        @media screen and (min-width: 600px) and (max-width:1814px) {

            .Indicaciones {
                position: absolute;
                top: 300px;
                left: 12%;
                right: 12%;
            }
        }

        @media screen and (min-width: 700px) and (max-width:1500px) {

            .Indicaciones {
                position: absolute;
                top: 300px;
                left: 5%;
                right: 5%
            }
        }

        .page {
            min-height: 120vh;
        }

        .txt2 {
            color: #f7aa00
        }

            .txt2:hover {
                color: #0090bf
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
        <div class="container-fluid section section-banner  d-xl-block" style="background-color: #0090bf">
            <div class="row" style="padding: 0.5%; margin-top: 0px!important">
                <div class="col-lg-1"></div>
                <div class="col-lg-6 col-md-12">
                    <h3 class="registrate">¿Administras un club y aún no eres miembro?</h3>
                </div>
                <div class="col-lg-4 col-md-12 botonRegistrate"><a href="Cuenta/Registro.aspx" class="button-width-190 button-primary button-circle button-lg button btn-registro" style="background-color: red">¡Registrate ahora!</a></div>
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

                                    <div class="rd-navbar-brand">
                                        <!--Brand-->
                                        <a class="brand" href="/index.aspx">
                                            <img class="brand-logo-dark"
                                                src="/Content/images/logo-mascontrolVB.png" alt="" width="250" height="17" /><img class="brand-logo-light"
                                                    src="/Content/images/logo-mascontrolVB.png" alt="" width="250" height="17" /></a>
                                    </div>
                                </div>
                                <div class="rd-navbar-main-element">
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </header>
            <section class="section section-intro context-dark" style="height: 500px">

                <div class="intro-bg" style="background: url(images/fondo1.jpg) no-repeat; background-size: cover; background-position: top center;"></div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 text-center">
                            <h1 class="font-weight-bold wow fadeInLeft">¡Proceso Terminado!</h1>
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
                <div class="container Indicaciones">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="row text-center">
                                <div class="col-lg-12 col-sm-12 col-md-12">
                                    <br />
                                    <asp:Image ID="imgClub" runat="server" class="logo" />
                                    <br />
                                    <h4 class="titulo" style="color: #424242"><b>¡Registro Finalizado exitosamente! </b></h4>
                                    <p class="Subtitulo" style="color: #424242">
                                        Por favor inicie sesión para ingresar a la plataforma o diríjase a la página principal.
                                    </p>
                                    <a class="button-width-190 button-primary button-circle button-lg button offset-top-30" href="/Cuenta/Iniciar-Sesion.aspx">Iniciar sesión</a>
                                    <div class="text-center p-t-12" id="subtitulo">
                                        <span class="txt1">ir a 
                                        </span>
                                        <a class="txt2" href="../index.aspx">Página Principal <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </div>
                                <br />
                                <br />
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </section>
            <section class="section section-md" style="top: 90px; z-index: 3;">
            </section>
        </div>
    </form>
    <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
</html>
