<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manual-Usuario.aspx.cs" Inherits="CreandoProductividad.manual_usuario.Manual_Usuario" %>

<!DOCTYPE html>

<html class="wide wow-animation" lang="en">

<head>
    <title>NOM-035</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport"
          content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/images/nom.png" type="image/x-icon">
    <!-- Stylesheets-->

    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/fonts.css">
    <link rel="stylesheet" href="/css/style.css">
    
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
        /*Clase para manipular el color de la barra superior*/
        .section-banner { background: #00367c; }
        /*Clase para manipular el color de fondo, borde y letra de los botones*/
        .button-primary, .button-primary { background-color: #548cde; border-color: #548cde; color: #fff!important }
        /*Clase para manipular el color de fondo, borde y letra de los botones en hover*/
        .button-primary.button-ujarak::before { color: #ffffff; background-color: #151515; border-color: #151515; }
        
        /*Clases para manipular el color de letra del card*/
        .card-body{ color:#045fac; }
        .card-body h4, h3 { color: #045fac; }
        .card-header{
            background-color:#045fac; color:white
        }
         /*clase para cambiar el color de letra del banner superior*/
        .section-banner h5, h3 { color: white }
         /*clase para cambiar el color del borde del banner superior*/
        .borde {
            border-right: 3px solid #548cde;
        }
        /*clase para cambiar el color de fondo del banner superior*/
        .Titulo-header {
            background: rgb(248,128,23);
            background: linear-gradient(100deg,#548cde , #045fac) ;
        }
            /*clase para cambiar el color de letra del banner superior*/
            .Titulo-header h3 {
                text-shadow: 3px 3px 2px black;
                color: #fff !important;
                padding: 40px;
                text-transform: none
            }
            .titulos{
                color:#045fac
            }
            b{
                color:#045fac
            }
        .seccion-importante {
            background-color: #045fac;
            box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important
        }
            .seccion-importante p {
                color: white;
                padding: 30px;
                font-size: 20px;
                text-shadow: 2px 2px 2px gray;
                color: #fff !important
            }
            a{
                color:#26cbc7!important
            }
            .rd-navbar-static .rd-nav-link{
                color:#045fac!important
            }
             .rd-navbar-static .rd-nav-link .active{
                color:#26cbc7!important
            }
            .rd-navbar-classic.rd-navbar-static .rd-nav-link::before{
                color:#26cbc7!important
            }
            .tabs-horizontal.tabs-line .nav-tabs {
    justify-content: space-between;
    border-bottom: 3px solid #26cbc7;
}
    </style>
</head>

<body>
    <div class="ie-panel">
        <a href="http://windows.microsoft.com/en-US/internet-explorer/">
            <img src="../#" height="42" width="820"
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
                <div class="row text-center" style="padding:0.5%">
                    <div class="col-lg-4 col-md-5 borde"><h3 style="font-size:25px;"> ¡Plataforma NOM-035!</h3></div>
                    <div class="col-lg-5 col-md-5  borde"><h5 style="text-transform:none;">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                    <div class="col-lg-3 col-md-2"><button class="button button-primary button-ujarak" style="padding: 10px 23px 10px!important; min-width:100px"> Salir</button></div>
                </div>
            </div>
            <!-- Page Header-->
            <header class="section page-header">
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
                                        <a class="brand" href="/index.html">
                                            <img src="/Content/img/nom.png"
                                                 alt="" width="223" height="50" />
                                        </a>
                                    </div>
                                </div>
                                <div class="rd-navbar-main-element">
                                    <div class="rd-navbar-nav-wrap">
                                        <!-- RD Navbar Share-->

                                        <ul class="rd-navbar-nav">
                                           <%-- <li class="rd-nav-item"><a class="rd-nav-link" href="#paso1" style="font-size:25px">Paso 1</a></li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="#paso2" style="font-size:25px">Paso 2</a></li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="#paso3" style="font-size:25px">Paso 3</a></li>--%>
                                           <%-- <li class="rd-nav-item"><a class="rd-nav-link" href="#paso4" style="font-size:25px">Paso 4</a></li>--%>




                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </header>

            <section>
                <div class="container-fluid Titulo-header">
                    <div class="row">
                        <div class="col-md-12 col-12 col-sm-12 col-lg-12">
                            <h3 data-caption-animate="fadeInLeft" data-caption-delay="0" >
                                Como configurar la plataforma para la correcta implantación de la<br /> NOM-035-STPS-2018
                            </h3>
                        </div>

                    </div>
                </div>
            </section>

        </div>





        <div></div>
        <!-- You dream — we embody-->
        <section class="section section-sm bg-default text-md-left" id="Perfil">
            <div class="container-fluid">
                <div class="row row-50 align-items-center justify-content-center justify-content-xl-between">
                    <div class="container">
                        <div class="col-lg-12 col-xl-12 wow fadeInLeft">
                            <h3 class="titulos" style="text-transform:none">Paso #1.- Llena el perfil de tu empresa </h3>
                            <!-- Bootstrap tabs-->
                            <div class="tabs-custom tabs-horizontal tabs-line tabs-line-big text-center text-md-left" id="tabs-6">
                                <!-- Nav tabs-->
                                <ul class="nav nav-tabs">
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link nav-link-big active" href="#tabs-6-1"
                                           data-toggle="tab"></a>
                                    </li>



                                </ul>
                                <!-- Tab panes-->
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="tabs-6-1">

                                        <p class="text-justify" style="font-size:18px">
                                            Es importante que el código de empresa que asignes sea fácil de recordar y de escribir ya que es el código
                                            que utilizaran los empleados para ingresar a la aplicación de los cuestionarios.
                                        </p>
                                        <p class="text-justify" style="font-size:18px">
                                            Puedes utilizar el nombre comercial que utilices para tu empresa o negocio, por ejemplo, si la razón social es:
                                            <b>“Comercial del Norte, S.A. de C.V.”</b> podrías utilizar <b>“COMERCIAL”</b>, si el código de la empresa ya está ocupado, podrías también utilizar el RFC de la compañía.
                                        </p>
                                        <p class="text-justify" style="font-size:18px">
                                            <b> NO olvides subir una imagen que identifique a tu negocio, podría ser el logo de la empresa, o bien, el logo de la principal marca con la cual te identifiques.</b>
                                        </p>
                                        <br />
                                        <div class="row">
                                            <div class=" col-lg-3 col-sm-0 text-center"></div>
                                            <div class=" col-lg-6 col-sm-12 text-center">
                                                <p style="font-size:18px">Para dirigirse a esta opción</p>
                                                <a href="../Cuenta/Perfil.aspx" class="button button-primary button-ujarak " style="width:100%"> de clic aquí</a>
                                            </div>
                                            <div class=" col-lg-3 col-sm-0 text-center"></div>
                                        </div>

                                        


                                    </div>


                                </div>
                            </div>

                        </div>
                    </div>
                     
                        <div class="container-fluid">
                            <div class="row row-50 align-items-center justify-content-center justify-content-xl-between">
                                <div class="col-lg-6 text-center wow fadeInUp" data-wow-delay=".1s">
                                    <img src="/images/perfil.jpg" style="width:90%;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;
" />
                                </div>
                                <div class="col-lg-6 text-center wow fadeInUp" data-wow-delay=".1s">
                                    <img src="/images/perfil2.jpg" style="width:90%;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;
" />
                                </div>
                            </div>

                        </div>


                    </div>
                </div>
        </section>





        <!-- You dream — we embody-->
        <section class="section section-sm bg-default text-md-left" id="CentrosTrabajo">
            <div class="container-fluid">
                <div class="row row-50 align-items-center justify-content-center justify-content-xl-between">
                    <div class="container">
                        <div class="col-lg-12 col-xl-12 wow fadeInLeft">
                            <h3 class="titulos" style="text-transform:none">Paso #2.- Captura los centros de trabajo. </h3>
                            <!-- Bootstrap tabs-->
                            <div class="tabs-custom tabs-horizontal tabs-line tabs-line-big text-center text-md-left" id="tabs-6">
                                <!-- Nav tabs-->
                                <ul class="nav nav-tabs">
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link nav-link-big active" href="#tabs-6-1"
                                           data-toggle="tab"></a>
                                    </li>



                                </ul>
                                <!-- Tab panes-->
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="tabs-6-1">

                                        <p class="text-justify" style="font-size:18px">
                                            Los centros de trabajo son aquellas unidades de ventas, de producción o
                                            administrativas que <b>FISICAMENTE</b> se diferencian entre sí, por ejemplo; sucursales, oficinas
                                            corporativas, centros de ventas o de distribución, campos agrícolas, ranchos, minas, granjas de
                                            producción avícola, acuícolas, colegios, campus universitarios, fabricas, y podríamos mencionar más
                                            ejemplos, pero cada <b >CENTRO DE TRABAJO</b> es una unidad que físicamente se identifica por separado una de otra.
                                        </p>

                                        <p class="text-justify" style="font-size:18px">
                                            Por ejemplo; si cuentas con una empresa o negocio que en las mismas instalaciones se encuentran todas las actividades o funciones que realizas,
                                            entonces es <b>UN SOLO CENTRO DE TRABAJO</b>, podríamos mencionar un colegio que en la misma ubicación se encuentran aulas, oficinas, campos de entrenamiento, gimnasio, etc.
                                        </p>
                                        <p class="text-justify" style="font-size:18px">
                                            Podrás utilizar el mismo código de empresa que para un centro de trabajo, por ejemplo: código de empresa <b>COLEGIO</b>, centro de trabajo COLEGIO, o bien, código de empresa <b>COMERCIAL</b>, centro de trabajo <b>MATRIZ.</b>
                                        </p>
                                        <p class="text-justify" style="font-size:18px">
                                            Es muy importante que el código del centro de trabajo se identifique con los empleados que en el laboran, ejemplos:
                                        </p>
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="card">
                                                    <div class="card-header" >Centros de trabajo</div>
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="usr">Código de Empresa:</label>
                                                            <input type="text" class="form-control" id="usr" placeholder="COMERCIAL" disabled>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="usr">Código centro de trabajo:</label>
                                                            <input type="text" class="form-control" id="usr" placeholder="MATRIZ" disabled>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="card">
                                                    <div class="card-header" >Centros de trabajo</div>
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="usr">Código de Empresa:</label>
                                                            <input type="text" class="form-control" id="usr" placeholder="COMERCIAL" disabled>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="usr">Código centro de trabajo:</label>
                                                            <input type="text" class="form-control" id="usr" placeholder=" SUCURSAL" disabled>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="card">
                                                    <div class="card-header">Centros de trabajo</div>
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="usr">Código de Empresa:</label>
                                                            <input type="text" class="form-control" id="usr" placeholder="COLEGIO" disabled>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="usr">Código centro de trabajo:</label>
                                                            <input type="text" class="form-control" id="usr" placeholder="CENTRO" disabled>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="card">
                                                    <div class="card-header">Centros de trabajo</div>
                                                    <div class="card-body">
                                                        <div class="form-group">
                                                            <label for="usr">Código de Empresa:</label>
                                                            <input type="text" class="form-control" id="usr" placeholder="COLEGIO" disabled>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="usr">Código centro de trabajo:</label>
                                                            <input type="text" class="form-control" id="usr" placeholder="PERIFERICO" disabled>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <br />
                                        <div class="row">
                                            <div class=" col-lg-3 col-sm-0 text-center"></div>
                                            <div class=" col-lg-6 col-sm-12 text-center">
                                                <p style="font-size:18px">Para dirigirse a esta opción</p>
                                                <a href="../Panel/AreaEvaluacion.aspx" class="button button-primary button-ujarak " style="width:100%"> de clic aquí</a>
                                            </div>
                                            <div class=" col-lg-3 col-sm-0 text-center"></div>
                                        </div>
                                      


                                    </div>


                                </div>
                            </div>

                        </div>
                    </div>
                    
                    <div class="row row-50 align-items-center justify-content-center justify-content-xl-between">
                        <div class="col-lg-6 text-center wow fadeInUp" data-wow-delay=".1s">
                            <img src="/images/Centros-Trabajo.png" style="width:90%;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;" />


                        </div>
                        <div class="col-lg-6 text-center wow fadeInUp" data-wow-delay=".1s">

                            <img src="/images/Centros-Trabajo2.png" style="width:90%;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- You dream — we embody-->
        <section class="section section-sm bg-default text-md-left" id="paso3">
            <div class="container-fluid">
                <div class="row row-50 align-items-center justify-content-center justify-content-xl-between">
                    <div class="container">

                        <div class="col-lg-12 col-xl-12 wow fadeInLeft">
                            <h3 class="titulos" style=" text-transform:none">Paso #3.- Informar a los empleados del acceso a los cuestionarios. </h3>
                            <!-- Bootstrap tabs-->
                            <div class="tabs-custom tabs-horizontal tabs-line tabs-line-big text-center text-md-left" id="tabs-6">
                                <!-- Nav tabs-->
                                <ul class="nav nav-tabs">
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link nav-link-big active" href="#tabs-6-1"
                                           data-toggle="tab"></a>
                                    </li>



                                </ul>
                                <!-- Tab panes-->
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="tabs-6-1">

                                        <p class="text-justify" style="font-size:18px">
                                            Es importante que previo a esta información se haga del conocimiento de los empleados que están en proceso de Implementación de la NOM-035-SPTS-2018.
                                        </p>

                                        <p class="text-justify" style="font-size:18px">
                                            Informar que como el proceso de implementación se han contratado los servicios del portal digital tlacontadores.com al cual deberán ingresar para recibir la sensibilización o capacitación para poder contestar adecuadamente los cuestionarios que la implementación requiere. 
                                        </p>
                                        <p class="text-justify" style="font-size:18px">
                                            Se podrá ingresar desde el portal: <br />
                                            <a href=" https://tlacontadores.com/"> https://tlacontadores.com/ </a> <br />
                                            y dar clic en el botón de “Aplicar Cuestionarios”
                                        </p>
                                        <p class="text-justify" style="font-size:18px">
                                            Se podrá ingresar de forma directa al cuestionario : <br />
                                            <br />
                                            <a href="https://tlacontadores.com/Cuestionarios/Acceso.aspx">
                                                https://tlacontadores.com/Cuestionarios/Acceso.aspx
                                            </a> <br />

                                        </p>
                                        <p class="text-justify" style="font-size:18px">
                                            Aquellos que cuenten con un portal de la empresa por ejemplo: www.miempresa.com podrán agregar un botón que haga referencia
                                            a la liga de acceso al cuestionario para facilitar el acceso a sus empleados.
                                        </p>
                                        <br />
                                        <div class="seccion-importante" >
                                            <p>Nota: Es <b style="color:#26cbc7">MUY IMPORTANTE</b> que cada trabajador anote su número de encuesta, ya que si el centro de trabajo tiene 10 trabajadores, solo va a generar 10 códigos de encuesta.</p>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class=" col-lg-3 col-sm-0 text-center"></div>
                                            <div class=" col-lg-6 col-sm-12 text-center">
                                                <p style="font-size:18px">Para dirigirse a esta opción</p>
                                                <a href="../Cuestionarios/Acceso.aspx" class="button button-primary button-ujarak " style="width:100%"> de clic aquí</a>
                                            </div>
                                            <div class=" col-lg-3 col-sm-0 text-center"></div>
                                        </div>
                                       


                                    </div>


                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row row-50 align-items-center justify-content-center justify-content-xl-between">
                        <div class="col-lg-6 text-center wow fadeInUp" data-wow-delay=".1s">
                            <img src="/images/principal.jpg" style="width:90%;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;" />

                        </div>
                        <div class="col-lg-6 text-center wow fadeInUp" data-wow-delay=".1s">

                            <img src="/images/acceso.jpg" style="width:90%;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;" />
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <br />
        <br />
      
     
                           
                
                </div>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

















    
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="/js/core.min.js"></script>
    <script src="/js/script.js"></script>
    <!-- coded by Himic-->
</body>

</html>
