<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fin.aspx.cs" Inherits="CreandoProductividad.Recomendaciones.fin" %>

<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>NOM-035</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport"
          content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="../images/nom.png" type="image/x-icon">
    <!-- Stylesheets-->

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
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

            h2 {
                margin-top:10%
            }
        }
        @media screen and (min-width: 1601px) and (max-width: 1920px) {
            #video {
                width: 60%;
                height: 60%
            }

            h2 {
                margin-top:10%;
                font-size: 55px;
            }
        }

        @media screen and (max-width: 1025px) {
            #video {
                width: 100%;
                padding-top: 30%
            }
            h2 {
                margin-top: 10%
            }
        }
        @media screen and (max-width: 600px) {
            #video {
                width: 100%;
                padding-top: 30%
            }
            h2 {
                margin-top: 10%;
                font-size: 35px;
                
            }
            #movil{
                display: none;
            }
        }
        #botones {
            padding: 1px;
            float: center;
            background-color: transparent;
            color: white;
        }

        #botones {
            margin-left: 5px;
            margin-right: 5px;
        }

        #botones button {
            font-size: 1em;
            width: 40px;
            background-color: transparent;
            color: rgb(64, 23, 211);
            border-style: none;
            font-size: 30px;
            margin-left: 7px;
            margin-right: 7px;
        }
    </style>
</head>
<body id="page-top" style="background-image: url(img/recomendaciones.jpg); background-position: 100%; background-repeat: no-repeat; background-size: cover">
    <form id="form1" runat="server">
        <div>
            <div class="ie-panel">
                <a href="http://windows.microsoft.com/en-US/internet-explorer/">
                    <img src="#" height="42" width="820"
                        alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today.">
                </a>
            </div>
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
                    <span class="section section-banner text-center d-none d-xl-block"
                        style="background: rgba(67,191,199,1);">
                        <img src="img/banner-fg-02-1600x60-Cursos.png"
                            srcset="img/banner-fg-02-1600x60-Cursos.png 1x, img/banner-fg-02-3200x120-Cursos.png 2x" alt=""
                            width="1600" height="310">
                    </span>
                    <!-- Page Header-->


                    <section>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12 col-12 col-sm-12 col-lg-12">
                                    <br />
                                    <br />

                                    <h2 data-caption-animate="fadeInLeft" data-caption-delay="0" style="text-shadow: 3px 3px 2px black; color: #fff !important;">Centros de trabajo de 51 o más trabajadores<br />
                                        Final de las Recomendaciones para el aplicador antes de aplicar los cuestionarios
                                    </h2>
                                    <br id="movil" />

                                    <br id="movil">
                                    <br id="movil" />
                                    <br id="movil" />
                                    <br id="movil" />
                                    <br id="movil" />
                                    <br id="movil">
                                    <br id="movil">
                                </div>

                            </div>
                        </div>
                    </section>

                </div>




                <footer class="section section-fluid footer-minimal " style="background-color: transparent">
                    <div>
                        <div class="container-fluid">
                            <div class="footer-minimal-inset oh">
                                <div class="row" id="botones">
                                    <div class="col-md-4  col-sm-12 col-lg-4 text-center">
                                        <a class="button button-primary button-ujarak" href="recomendaciones-5.html"
                                            data-caption-animate="fadeInUp" data-caption-delay="200">Regresar</a>
                                    </div>
                                    <div class="col-md-4  col-sm-12 col-lg-4 text-center">
                                        <audio id="miAudio" src="img/modulo1.mpeg"></audio>



                                        <div id="botones"
                                            style="background-color: rgba(204, 204, 206, 0.651); border-radius: 50px;">
                                            <button onclick="setHalfVolume()" type="button">
                                                <img src="img/volume-menos-icon.png"
                                                    style="width: 150%;"></button>
                                            <button id="iniciar" onclick="iniciar()">
                                                <img src="img/Play.ico"
                                                    style="width: 150%;"></button>
                                            <button onclick="setFullVolume()" type="button">
                                                <img src="img/volume-icon.png"
                                                    style="width: 150%;"></button>
                                            <button id="reiniciar" onclick="reiniciar()">
                                                <img src="img/Undo.ico"
                                                    style="width: 150%;"></button>
                                        </div>
                                    </div>
                                    <div class="col-md-4  col-sm-12 col-lg-4 text-center">
                                        <asp:Button ID="btnTerminar" OnClick="btnTerminar_Click" data-caption-animate="fadeInUp" data-caption-delay="200" 
                                            class="button button-primary button-ujarak" Text="Terminar" runat="server" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </footer>














            </div>
            <script src="vendor/jquery/audio.js"></script>
            <!-- Global Mailform Output-->
            <div class="snackbars" id="form-output-global"></div>
            <!-- Javascript-->
            <script src="js/core.min.js"></script>
            <script src="js/script.js"></script>
            <!-- coded by Himic-->
        </div>
    </form>
</body>
</html>
