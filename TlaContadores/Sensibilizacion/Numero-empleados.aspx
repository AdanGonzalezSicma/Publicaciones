<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Numero-empleados.aspx.cs" Inherits="CreandoProductividad.Sensibilizacion.Numero_empleados" %>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
            <!-- Top Banner--><span class="section section-banner text-center d-none d-xl-block" 
                                 style="background: rgba(67,191,199,1);" >
                <img src="../images/banner/banner-fg-02-1600x60-Cursos.png"
                     srcset="../images/banner/banner-fg-02-1600x60-Cursos.png 1x, ../images/banner/banner-fg-02-3200x120-Cursos.png 2x" alt=""
                     width="1600" height="310">
            </span>
            <!-- Page Header-->
            <header id="head" class="section page-header" style="border-bottom: 5px solid;
			border-image: linear-gradient(100deg, #f88017, #43bfc7) 1; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important; "">
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
                                <div class="card-body" style="color:#000080">
                                   <h3 style="color:#000080">Continuación del curso según el número de empleados</h3>
                                    <div class="row">
                                        <div class="col-lg-4 mx-auto text-left">
                                            <article  class="box-icon-modern box-icon-modern-custom" style="background-color:rgba(67,191,199,1)">
                                                <div>    <h4 style="color:#fff"><b>Empresa de 1 a 15 empleados</b>
                                            </h4>
                                          <a class="button button-primary button-ujarak" href="1-15/1-15-Trabajadores.aspx">Continuar</a>
                                           
                                         
                                         
                                                    
                                                </div>
                                            </article>
                                        
                                            <br>
                                        </div>

                                        <div class="col-lg-4 mx-auto text-left ">
                                            <article  class="box-icon-modern box-icon-modern-custom" style="background-color:rgba(67,191,199,1)">
                                                <div>    <h4 style="color:#fff"><b>Empresa de 16 a 50 empleados</b>
                                            </h4>
                                          <a class="button button-primary button-ujarak" href="16-50/16-50-Trabajadores.aspx">Continuar</a>
                                           
                                         
                                         
                                                    
                                                </div>
                                            </article>
                                         
                                         
                                            <br>
                                        </div>
                                        <div class="col-lg-4 mx-auto text-left ">
                                           

                                            <article  class="box-icon-modern box-icon-modern-custom" style="background-color:rgba(67,191,199,1)">
                                                <div>    <h4 style="color:#fff"><b>Empresa de 51 o más empleados</b>
                                            </h4>
                                          <a class="button button-primary button-ujarak" href="51-mas/51-mas-Trabajadores.aspx">Continuar</a>
                                           
                                         
                                         
                                                    
                                                </div>
                                            </article>
                                            
                                         
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
                <div class="col-md-6  col-sm-12 col-lg-6 text-center">
                            <a class="button button-primary button-ujarak" href="Retroalimentacion-1-Parte2.aspx"
                               data-caption-animate="fadeInUp" data-caption-delay="200">Regresar</a> </div>
                    
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
</body>
</html>
</html>
