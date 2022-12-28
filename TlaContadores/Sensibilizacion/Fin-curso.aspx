<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fin-curso.aspx.cs" Inherits="CreandoProductividad.Sensibilizacion.Fin_curso" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html class="wide wow-animation" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>NOM-035</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport"
          content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="../images/nom.png" type="image/x-icon">
    <!-- Stylesheets-->

    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/style.css">
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

            h1 {
                margin-top:10%
            }
        }

        @media screen and (max-width: 1025px) {
            #video {
                width: 100%;
                padding-top: 30%
            }
            h1 {
                margin-top: 10%
            }
        }
         @media screen and (min-width: 1026px) {
            footer {
                position: absolute;
                width: 100%;
                left: 0px;
                bottom: 18%;
                height: 3%;
            }
        }

        @media screen and (max-width: 1025px) {
            #video {
                width: 100%;
                padding-top: 30%
            }
        }
         @media screen and (max-width: 1601px) {
            #opciones1 {
               font-size:11px
            }
            h4{
                font-size:18px
            }
        }
              /*Clase para manipular el color de la barra superior*/
        /*.section-banner {
            background: rgba(67,191,199,1);
        }*/
        /*Clase para manipular el color de fondo, borde y letra del boton*/
        /*.button-primary, .button-primary {
            background-color: #f88017;
            border-color: #f88017;
            color: #fff
        }*/
            /*Clase para manipular el color de fondo, borde y letra del boton en hover*/
            /*.button-primary.button-ujarak::before {
                color: #ffffff;
                background-color: #151515;
                border-color: #151515;
            }*/
             /* clase para cambiar el color de letra del banner superior*/
        /*.section-banner h5,h3 { color:white }*/
      /* clase para cambiar el color del borde del banner superior*/
     /*.borde{border-right:3px solid red;}*/
    </style>
    <%=CargarTema() %>
</head>
<body  style="background-image: url('../images/banner/background2.jpeg');background-position: 100%; background-repeat: no-repeat; background-size: cover">
     <div class="ie-panel">
        <a href="http://windows.microsoft.com/en-US/internet-explorer/">
            <img src="#" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <div class="preloader">
        <div class="preloader-body">
            <div class="cssload-container">
                <span></span><span></span><span></span><span></span>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
        <!-- HIDDEN FIELD -->
        <dx:ASPxHiddenField ID="hiddenUltimoSistemaOperativo" runat="server" ClientInstanceName="hiddenUltimoSistemaOperativo"></dx:ASPxHiddenField>
        <dx:ASPxHiddenField ID="hiddenUltimoNavegador" runat="server" ClientInstanceName="hiddenUltimoNavegador"></dx:ASPxHiddenField>

        <div>
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
          

            <section>
                <div class="container-fluid" >
                    <div class="row">
                        <div class="col-md-12 col-12 col-sm-12 col-lg-12">
                            <br />
                            <br />

                            <h1 data-caption-animate="fadeInLeft" data-caption-delay="0" style="text-shadow: 3px 3px 2px black;
                color: #fff !important; ">
                                Fin del curso <br />
                                "Sensibilización e inicio de implementación de la NOM-035"
                            </h1>
                          
                            <br />
                            <h3 style="text-shadow: 3px 3px 2px black; color: #fff !important; ">Por favor de clic al botón "terminar" para concluir este curso.</h3>
                          
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>

                    </div>
                </div>
            </section>

        </div>






      


     








      
    </div>
        </div>
          <footer class="section section-fluid footer-minimal " style="background-color:transparent">
      <div >
        <div class="container-fluid">
          <div class="footer-minimal-inset oh">
             <div class="row" id="botones">

                 <!-- REGRESAR -->
                <div class="col-md-6  col-sm-12 col-lg-6 text-center">
                    <a class="button button-primary button-ujarak" href="Retroalimentacion-2-parte3.aspx" data-caption-animate="fadeInUp" data-caption-delay="200" style="margin:5px">Regresar</a> 
                </div>

                 <!-- TERMINAR -->
                <div class="col-md-6  col-sm-12 col-lg-6 text-center">
                    <asp:Button Text="Terminar" ID="btnSiguiente" OnClick="btnSiguiente_Click" class="button button-primary button-ujarak" data-caption-animate="fadeInUp" data-caption-delay="200" runat="server" style="margin:5px" />
                </div>

            </div>
          </div>
  
        </div>
      </div>
    </footer>
    </form>
     <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="../js/core.min.js"></script>
    <script src="../js/script.js"></script>
    <!-- coded by Himic-->

<script>
        function getNavigator() {
            var agente = navigator.userAgent;
            var navegadores = ["Chrome", "Firefox", "Safari", "Opera", "Trident", "MSIE", "Edge"];

            for (var i in navegadores) {
                if (agente.indexOf(navegadores[i]) != -1) {
                    hiddenUltimoNavegador.Set("UltimoNavegador", navegadores[i]);
                    return navegadores[i];
                }
            }
        }

        $(document).ready(function () {
            getNavigator();
            retornarSO();
        });

        var navInfo = window.navigator.appVersion.toLowerCase();
        var so = 'Sistema Operativo';
        function retornarSO() {
            if (navInfo.indexOf('win') != -1) {
                so = 'Windows';
            }
            else if (navInfo.indexOf('linux') != -1) {
                so = 'Linux';
            }
            else if (navInfo.indexOf('mac') != -1) {
                so = 'Macintosh';
            }
            var UltimoSistemaOperativo = so;
            hiddenUltimoSistemaOperativo.Set("UltimoSistemaOperativo", UltimoSistemaOperativo);
            return so;
    }
    </script>

</body>
</html>
