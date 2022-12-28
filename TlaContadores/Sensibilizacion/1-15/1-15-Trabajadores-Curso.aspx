<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1-15-Trabajadores-Curso.aspx.cs" Inherits="CreandoProductividad.Sensibilizacion._1_15._1_15_Trabajadores_Curso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NOM-035</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport"
        content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="../../images/nom.png" type="image/x-icon">
    <!-- Stylesheets-->

    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/fonts.css">
    <link rel="stylesheet" href="../../css/style.css">
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

        @media screen and (min-width: 1026px) {
            #video {
                width: 60%;
                height: 60%
            }

            #head {
                height: 20px
            }

            footer {
                position: absolute;
                width: 100%;
                left: 0px;
                bottom: 15%;
                height: 5%;
            }
        }

        @media screen and (max-width: 1025px) {
            #video {
                width: 100%;
                padding-top: 5%
            }

            footer {
                position: absolute;
                width: 100%;
                left: 0px;
                bottom: 12%;
                height: 5%;
            }
        }
                         @media screen and (max-width: 1400px) {
            h3 {
                font-size: 18px !important;
                padding-top: 10px
            }

            h5 {
                font-size: 15px !important;
                padding-top: 10px
            }
        }

        @media screen and (min-width: 1401px) {
            h3 {
                font-size: 25px !important
            }
        }
         /*Clase para manipular el color de la barra superior*/
        /*.section-banner { background: rgba(67,191,199,1); }*/
        /*Clase para manipular el color de fondo, borde y letra de los botones*/
        /*.button-primary, .button-primary { background-color: #f88017; border-color: #f88017; color: #fff }*/
        /*Clase para manipular el color de fondo, borde y letra de los botones en hover*/
        /*.button-primary.button-ujarak::before { color: #ffffff; background-color: #151515; border-color: #151515; }*/
        /*Clase para manipular el color del borde de la seccion donde aparece el logo*/
        /*.page-header { border-bottom: 5px solid; border-image: linear-gradient(100deg, #f88017, #43bfc7) 1; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important; }*/
        /*Clases para manipular el color de letra del card*/
        /*.card-body{ color:navy; }
        .card-body h4, h3 { color: navy; }*/
        /* clases para cambiar el color de letra del banner superior*/
        /*.section-banner h5 { color: white }*/
         /*.section-banner h3 { color: white }*/
        /* clase para cambiar el color del borde del banner superior*/
        /*.borde { border-right: 3px solid red; }*/
    </style>
    <%=CargarTema() %>
</head>
<body>
    <form id="form1" runat="server">
        <div class="preloader">
            <div class="preloader-body">
                <div class="cssload-container">
                    <span></span><span></span><span></span><span></span>
                </div>
            </div>
        </div>
        <div class="page">
            <div id="home">
                <!-- Top Banner-->
            <div class="container-fluid section section-banner text-center d-none d-xl-block">
                <div class="row text-center" style="padding:0.5%; margin-top:0px!important">
                    <div class="col-lg-4 col-md-5 borde"><h3 style="font-size:25px;"> ¡Plataforma NOM-035!</h3></div>
                    <div class="col-lg-5 col-md-5  borde"><h5 style="text-transform:none;">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                    <div class="col-lg-3 col-md-2"><button class="button button-primary button-ujarak" style="padding: 10px 23px 10px!important; min-width:100px" onserverclick="btnSalir_ServerClick" runat="server"> Salir</button></div>
                </div>
            </div>
                <!-- Page Header-->
                <header id="head" class="section page-header" style="border-bottom: 5px solid; border-image: linear-gradient(100deg, #f88017, #43bfc7) 1; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;">
                    <!-- RD Navbar-->
                    <div class="rd-navbar-wrap">
                        <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
                            data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static"
                            data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static"
                            data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static"
                            data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px"
                            data-xxl-stick-up-offset="46px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
                            <div class="rd-navbar-main-outer">
                                <div class="rd-navbar-main">
                                    <!-- RD Navbar Panel-->
                                    <div class="rd-navbar-panel">
                                        <!-- RD Navbar Toggle-->
                                        <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                                        <!-- RD Navbar Brand-->
                                        <div class="rd-navbar-brand">
                                            <a class="brand" href="index.html">
                                                <img src="../content/img/nom.png" alt="" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>
                </header>
                <section>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12 col-12 col-sm-12 col-lg-12">
                                <div class="card" style="border: none">
                                    <div class="card-body">
                                        <br />
                                        <%--<iframe src="https://player.vimeo.com/video/458366278" width="640" height="359" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>--%>
                                        <iframe src="https://player.vimeo.com/video/655684386?h=fc3b44e713" <%--width="640"--%> height="400" frameborder="0" allow="autoplay; fullscreen" allowfullscreen style="width: 100%"></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <footer class="section section-fluid footer-minimal " style="background-color: transparent">
            <div>
                <div class="container-fluid">
                    <div class="footer-minimal-inset oh">
                        <div class="row" id="botones">
                            <!-- REGRESAR -->
                            <div class="col-md-4  col-sm-12 col-lg-4 text-center">
                                <!--<a class="button button-primary button-ujarak" href="../Retroalimentacion-1-Parte3.aspx" data-caption-animate="fadeInUp" data-caption-delay="200" style="margin:5px">Regresar</a> -->
                            </div>
                            <div class="col-md-4  col-sm-12 col-lg-4 text-center">
                                <!--<a class="button button-primary button-ujarak" href="../Retroalimentacion-1-Parte3.aspx" data-caption-animate="fadeInUp" data-caption-delay="200" style="margin:5px">Regresar</a> -->
                            </div>
                            <!-- SIGUIENTE -->
                            <div class="col-md-4  col-sm-12 col-lg-4 text-center">
                                <asp:Button ID="btnSiguiente" onmouseup="fncSiguiente();" OnClick="btnSiguiente_Click" class="button button-primary button-ujarak" Text="Siguiente" runat="server" Style="margin: 5px" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </form>
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="../../js/core.min.js"></script>
    <script src="../../js/script.js"></script>
</body>
</html>
