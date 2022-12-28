<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Retroalimentacion-2-parte3.aspx.cs" Inherits="CreandoProductividad.Sensibilizacion.Retroalimentacion_2_parte3" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

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
          .row {
            margin-top: 10px!important;
        }
           .rd-navbar-classic.rd-navbar-static .rd-navbar-main{
               padding-top:10px!important;
               padding-bottom:10px!important
           }


        @media screen and (min-width: 1027px) {
            footer {
                position: fixed;
                width: 100%;
                left: 0px;
                bottom: 18%;
                height: 3%;
            }
             h4{
                font-size:16px
            }
        }
        @media screen and (max-width: 1380px) and (min-width:1028) {
            footer {
                position: fixed;
                width: 100%;
                left: 0px;
                bottom: 16%;
                height: 3%;
            }
            h4, .heading-4 {
                font-size:13px;
                line-height: 1.3!important;
            }
            .form-check-label{
                font-size:12px
            }
        }

        @media screen and (max-width: 1026px)and (min-width: 600px) {
            #video {
                width: 100%;
                padding-top: 30%
            }
             footer {
                position: fixed;
                width: 100%;
                left: 0px;
                bottom: 25%;
                height: 3%;
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
        /*.section-banner {
            background: rgba(67,191,199,1);
        }*/
        /*Clase para manipular el color de fondo, borde y letra de los botones*/
        /*.button-primary, .button-primary {
            background-color: #f88017;
            border-color: #f88017;
            color: #fff
        }*/
            /*Clase para manipular el color de fondo, borde y letra de los botones en hover*/
            /*.button-primary.button-ujarak::before {
                color: #ffffff;
                background-color: #151515;
                border-color: #151515;
            }*/
        /*Clase para manipular el color del borde de la seccion donde aparece el logo*/
        /*.page-header {
            border-bottom: 5px solid;
            border-image: linear-gradient(100deg, #f88017, #43bfc7) 1;
            box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;
        }*/
        /*Clases para manipular el color de letra del card*/
        /*.card-body{
            color:navy;
        }
        .card-body h4, h3 {
            color: navy;
        }*/
          /* clases para cambiar el color de letra del banner superior*/
        /*.section-banner h5 {
            color: white
        }
         .section-banner h3 {
            color: white
        }*/
        /* clase para cambiar el color del borde del banner superior*/
        /*.borde {
            border-right: 3px solid red;
        }*/
    </style>
    <%=CargarTema() %>
</head>
<body  style="background-position: 100%; background-repeat: no-repeat; background-size: cover; background-image:url(../images/banner/Sensibilizacion/retroalimentacion.png)">
    <form id="myForm" runat="server">
        <!-- HIDDENFIELD -->
        <dx:ASPxHiddenField ID="hiddenRespuestas" runat="server" ClientInstanceName="hiddenRespuestas"></dx:ASPxHiddenField>
        <dx:ASPxHiddenField ID="hiddenRetroalimentacion2Parte3" runat="server" ClientInstanceName="hiddenRetroalimentacion2Parte3"></dx:ASPxHiddenField>

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
            <div class="container-fluid section section-banner text-center d-none d-xl-block">
                <div class="row text-center" style="padding:0.5%; margin-top:0px!important">
                    <div class="col-lg-4 col-md-5 borde"><h3 style="font-size:25px;"> ¡Plataforma NOM-035!</h3></div>
                    <div class="col-lg-5 col-md-5  borde"><h5 style="text-transform:none;">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                    <div class="col-lg-3 col-md-2"><button class="button button-primary button-ujarak" style="padding: 10px 23px 10px!important; min-width:100px" onserverclick="btnSalir_ServerClick" runat="server"> Salir</button></div>
                </div>
            </div>
            <!-- Page Header-->
            <header id="head" class="section page-header">
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
                            <div class="card" style="border: none; background-color:transparent; padding-top:1px">
                                <div class="card-body" style="padding-top:1px">
                                   <h3 style="font-size:30px!important" id="titulo">II Retroalimentación</h3>
                                    <asp:Label ID="lblError" Text="Es necesario seleccionar las respuestas correctas." ForeColor="#ffffff" runat="server" />
                                    <div class="row">

                                        <div class="col-lg-4 mx-auto text-left">
                                            <article>
                                                <div>
                                                    <!-- PREGUNTA #1 -->
                                                    <h4 style="font-size:20px">
                                                        <b>7. ¿Cuál es la obligación del trabajador, en caso de vivir un caso de violencia laboral??</b>
                                                    </h4>
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="radio" id="rbtn1" title="Informar sobre prácticas opuestas al entorno organizacional favorable y denunciar actos de violencia laboral." class="form-check-input" name="rbtnPregunta1">
                                                            <b>Informar sobre prácticas opuestas al entorno organizacional favorable y denunciar actos de violencia laboral.</b>
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="radio" id="rbtn2" title="Analizar los factores de riesgo psicosocial y el Mobbing." class="form-check-input" name="rbtnPregunta1">
                                                            <b>Analizar los factores de riesgo psicosocial y el Mobbing.</b>
                                                        </label>
                                                    </div>
                                                </div>
                                            </article>
                                            <br>
                                        </div>

                                        <div class="col-lg-4 mx-auto text-left ">
                                            <article>
                                                <div>
                                                    <!-- PREGUNTA #2 -->
                                                    <h4 style="font-size:20px">
                                                        <b>8. ¿Qué es lo que sigue después de terminar la II evaluación del curso?</b>
                                                    </h4>
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="radio" id="rbtn3" title="Recibir un taller sobre sensibilización de violencia laboral" class="form-check-input" name="rbtnPregunta2">
                                                            <b>Recibir un taller sobre sensibilización de violencia laboral</b>
                                                        </label>
                                                    </div>
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="radio" id="rbtn4" title="Contestar los cuestionarios que corresponden a su Centro de Trabajo." class="form-check-input" name="rbtnPregunta2">
                                                            <b>Contestar los cuestionarios que corresponden a su Centro de Trabajo.</b>
                                                        </label>
                                                    </div>
                                                </div>
                                            </article>
                                            <br>
                                        </div>

                                        <div class="col-lg-4 mx-auto text-left ">
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
            </section>
        </div>
     </div>

    <!-- Page Footer-->
    <footer class="section section-fluid footer-minimal " style="background-color:transparent">
      <div >
        <div class="container-fluid">
          <div class="footer-minimal-inset oh">
             <div class="row" id="botones">

                <!-- REGRESAR -->
                <div class="col-md-6  col-sm-12 col-lg-6 text-center">
                    <a class="button button-primary button-ujarak" href="Retroalimentacion-2-parte2.aspx" data-caption-animate="fadeInUp" data-caption-delay="200" style="margin:5px">Regresar</a> 
                </div>

                 <!-- SIGUIENTE -->
                <div class="col-md-6  col-sm-12 col-lg-6 text-center">
                    <asp:Button Text="Siguiente" ID="btnSiguiente" onmouseup="fncValidarRespuestas();" OnClick="btnSiguiente_Click" class="button button-primary button-ujarak" data-caption-animate="fadeInUp" data-caption-delay="200" runat="server" style="margin:5px" />
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

    <script type="text/javascript">

        $(document).ready(function () {
            var Retroalimentacion2Parte3 = "";
            Retroalimentacion2Parte3 = hiddenRetroalimentacion2Parte3.Get("Retroalimentacion2Parte3");

            if (Retroalimentacion2Parte3){
                fncMarcarRespuestasCorrectas();
            }
        });

        function fncMarcarRespuestasCorrectas() {
            $("#rbtn1").prop("checked", true);
            $("#rbtn4").prop("checked", true);
        }

        function fncValidarRespuestas() {
            var rbtn1 = $("input[name=rbtnPregunta1]:checked", "#myForm").attr("title");
            var rbtn4 = $("input[name=rbtnPregunta2]:checked", "#myForm").attr("title");

            if (rbtn1 == "Informar sobre prácticas opuestas al entorno organizacional favorable y denunciar actos de violencia laboral." &&
                rbtn4 == "Contestar los cuestionarios que corresponden a su Centro de Trabajo.") {
                hiddenRespuestas.Set("Respuestas", true);
            } else {
                hiddenRespuestas.Set("Respuestas", false);
            }
        }
    </script>

</body>
</html>

