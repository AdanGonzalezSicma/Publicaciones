<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buzon.aspx.cs" Inherits="CreandoProductividad.Buzon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
    <form id="form1" runat="server">
         <div class="wrapper row0">
        <div class="container-fluid section section-banner text-center d-xl-block bannersup" >

            <div class="row text-center" style="padding:0.5%; margin-top:0px!important">
                <div class="col-lg-4 col-md-5 borde"><h3 style="color:white"> ¡Plataforma Nom-035!</h3></div>
                <div class="col-lg-5 col-md-5  borde" ><h5 style="text-transform:none;color:white">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                <div class="col-lg-3 col-md-2"><a href="Cuenta/Registro.aspx" class="btn btn-bannersup" style=" min-width:90px"> Iniciar Ahora</a></div>
            </div>
        </div>
        <header id="header" class="clear" style="margin-left:20px">
            <!-- ################################################################################################ -->
            <div id="logo" class="one_quarter first">
                <h1 class="logoname clear"><a href="index.html"><img src="images/demo/logo.png" style="width: 70%;"></a></h1>

            </div>
            <div class="three_quarter">
                <ul class="nospace clear">
                    <li class="one_quarter first">
                        <div class="block clear">
                            <a href="tel:+6622145772" style="text-decoration:none; color:#474747;">
                                <i class="fas fa-phone" ></i>
                                <span><strong>Teléfono:</strong>(662) 214-5772</span>
                            </a>
                        </div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear">
                            <a href="mailto:contacto@tlacontadores.com?Subject=Solicitud%20de%20Información" style="text-decoration:none; color:#474747;">
                                <i class="fas fa-envelope"></i>
                                <span><strong>Email:</strong> contacto@tlacontadores.com</span>
                            </a>
                        </div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear">
                            <a href="#" style="text-decoration:none; color:#474747; ">
                                <i class="fas fa-clock"></i><span>
                                    <strong>
                                        Lun. - Sab.:
                                    </strong> 08.00am - 18.00pm
                                </span>
                            </a>
                        </div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear">
                            <a href="#"><i class="fas fa-map-marker-alt" ></i></a> <span>
                                <strong>
                                    Dirección:
                                </strong> Blvr. Kino 315, Suite 1009, Piso 10
                            </span>
                        </div>
                    </li>

                </ul>
            </div>
            <!-- ################################################################################################ -->
        </header>
    </div>
    <style>


        .contacto {
            background: #045fac;
            color: white
        }

            .contacto:hover {
                background: none;
                color: white;
                border: 1px solid #fff
            }

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
        .input{
            display:inline-block!important
        }
    </style>

    <nav class="navbar navbar-expand-lg navbar-light justify-content-lg-end row1 ">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
            <!-- Brand/logo -->


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
                    <a href="/Cuestionarios/Acceso.aspx?company=TLACONTADORES" class="btn  my-2 my-sm-0 btn-cuestionario" type="submit"> <i class="fas fa-file-alt" style="font-size:15px!important"></i> <b>Aplicar Cuestionarios</b></a>
                </li>
                <li class="nav-item">
                    <a href="/Cuenta/Login.aspx" class="btn  my-2 my-sm-0 btn-Iniciar" type="submit"> <i class="fas fa-user" style="font-size:15px!important"></i><b> Iniciar Sesión</b> </a>
                </li>
            </ul>

            <!--<form class="form-inline my-2 my-lg-0">


            </form>
            <form class="form-inline my-2 my-lg-0">
                <a href="/Cuenta/Login.aspx" class="btn btn-outline-secondary my-2 my-sm-0 btn-Iniciar" type="submit"> <i class="fas fa-user"></i>  Iniciar Sesión</a>

            </form>-->
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
                    <a href="/Plataforma.html" class="menum">
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
  <%--  <nav class="mobile-bottom-nav">
        <div class="mobile-bottom-nav__item">
            <div class="mobile-bottom-nav__item-content">
                <a href="index.html" style="padding-bottom:0px!important"><i class="fa fa-home"></i></a>
                Inicio
            </div>
        </div>


        <div class="mobile-bottom-nav__item">
            <div class="mobile-bottom-nav__item-content">
                <a href="plataforma.html"><i class="fa fa-mobile" aria-hidden="true"></i></a>
                Plataforma

            </div>
        </div>
        <div class="mobile-bottom-nav__item">
            <div class="mobile-bottom-nav__item-content">
                <a href="/Cuestionarios/Acceso.aspx?company=pruebac"><i class="fa fa-chevron-circle-down" aria-hidden="true"></i></a>
                Cuestionarios
            </div>
        </div>
        <div class="mobile-bottom-nav__item">
            <div class="mobile-bottom-nav__item-content">
                <a href="/Cuenta/Login.aspx"><i class="fa fa-user-circle" aria-hidden="true"></i></a>
                Iniciar Sesión
            </div>
        </div>

        <div class="mobile-bottom-nav__item">
            <div class="mobile-bottom-nav__item-content">
                <a class="rd-nav-link " data-toggle="dropdown"><i class="fa fa-bars" aria-hidden="true"></i></a>
                <ul class="dropdown-menu" style="position: absolute; will-change: transform; top: -5px!important; left: 0px; right:0;  transform: translate3d(-5px, -258px, 0px); padding:0!important;margin:0!important; border-bottom:none; border-right:none">
                    <li class="rd-nav-item active" style="margin:10px">
                        <div class="mobile-bottom-nav__item  mobile-bottom-nav__item--active">
                            <div class="mobile-bottom-nav__item-content active">
                                <a href="Nosotros.html"> <i class="fa fa-user"></i></a>
                                Nosotros
                            </div>
                        </div>
                    </li>
                    <li class="rd-nav-item" style="margin:10px">
                        <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content">
                                <a href="servicios.html"><i class="fa fa-cog" aria-hidden="true"></i></a>
                                Servicios
                            </div>
                        </div>
                    </li>
                    <li class="rd-nav-item" style="margin:10px">
                        <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content">
                                <a href="nom035.html"><i class="fa fa-book" aria-hidden="true"></i></a>
                                Nom-035
                            </div>
                        </div>
                    </li>
                    <li class="rd-nav-item" style="margin:10px">
                        <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content">
                                <a href="index.html#alianzas"><i class="fa fa-users" aria-hidden="true"></i></a>
                                Alianzas
                            </div>
                        </div>
                    </li>
                    <li class="rd-nav-item" style="margin:10px">
                        <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content">
                                <a href="Contacto.aspx"> <i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                Contacto
                            </div>
                        </div>
                    </li>





                </ul>
            </div>
        </div>

    </nav>--%>

    <div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/Contabilidad.jpg');">
        <div class="hoc clear" style="height: 200px;">
            <!-- ################################################################################################ -->
            <br>
            <br>
            <br>
            <br>
            <div class="row">
                <div class="col-12 col-lg-10 col-md-10 col-sm-12 text-left">
                    <h3 style="font-size: 30px; font-family: Georgia, 'Times New Roman', Times, serif;">
                        Línea de denuncias
                    </h3>
                </div>
                <div class="col-12 col-lg-2 col-md-2 col-sm-12 ">
                    <p>Inicio / Línea</p>
                </div>
            </div>
            <!-- ################################################################################################ -->
        </div>
    </div>
   
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-lg-9 col-sm-12">
                            <div class="text-justify">
                                <p>Al llenar los siguientes datos, la información será enviada al correo integridad@creandoproductividad.org para ser analizada e investigada conforme lo establece las fracciones XXII y XXIII del reglamento interior del colegio</p>
                                <div class="form-inline">
                                    <div class="form-check mb-2 mr-sm-2 ">
                                        <p class="form-check-label" style="display:inline!important">
                                            <asp:CheckBox ID="chkDatosReservados" AutoPostBack="true" OnCheckedChanged="chkDatosReservados_CheckedChanged" Checked="true" runat="server" class="form-check-input input" /> Datos reservados
                                           
                                        </p>
                                    </div>
                                    <div class="form-check mb-2 mr-sm-2">
                                        <p class="form-check-label">
                                            <asp:CheckBox ID="chkDatosAnonimos" OnCheckedChanged="chkDatosAnonimos_CheckedChanged" runat="server" AutoPostBack="true" Checked="false" class="form-check-input input"/> Denuncia anónima       
                                        </p>
                                    </div>
                                </div>
                            </div>
                     

                             <div id="DatosDenunciante" runat="server"><br />
                            <h6>DATOS DEL PERSONAL QUE PRESENTA LA DENUNCIA O QUEJA</h6>
                            <div class="form-group">
                                <p for="nombre">Nombre:</p>
                                <input type="text" class="form-control" placeholder="Ingrese su nombre" id="nombre" />
                            </div>
                            <div class="row" style="margin-top: 0px!important">
                                <div class="col">
                                    <p for="telefono">Teléfono:</p>
                                    <input type="text" class="form-control" id="telefono" placeholder="ingrese su Teléfono" name="telefono" />
                                </div>
                                <div class="col">
                                    <p for="email">Correo Electrónico:</p>
                                    <input type="text" class="form-control" placeholder="Ingrese su Correo Electrónico" name="email" />
                                </div>
                            </div>
                            <div class="form-group">
                                <p for="domicilio">Domicilio:</p>
                                <input type="text" class="form-control" placeholder="Ingrese su Domicilio" id="domicilio" />
                            </div>
                            <div class="form-group">
                                <p for="Relacion">Relación con Creando Productividad:</p>
                                <input type="text" class="form-control" placeholder="" id="Relacion" />
                            </div>

                            </div>
                    <div id="divDatosDenunciado">
                            <br />
                            <h6>DATOS DEL PERSONAL Y DEL HECHO DENUNCIADO</h6>
                             <div class="form-group">
                                <p for="nombre">Nombre:</p>
                                <input type="text" class="form-control" placeholder="Ingrese su nombre" id="nombreD" />
                            </div>
                             <div class="form-group">
                                <p for="hecho">Narración del hecho o conducta:</p>
                                <textarea  class="form-control" placeholder="" id="hecho" rows="3" style="height:80px;resize: none;" ></textarea>
                            </div>
                             <div class="form-group">
                                <p for="lugar">Lugar especifico del hecho o conducta:</p>
                                <input type="text" class="form-control" placeholder="Ingrese el lugar" id="lugar" />
                            </div>
                             <div class="form-group">
                                <p for="fecha">Fecha del hecho o conducta:</p>
                                <input type="text" class="form-control" placeholder="Ingrese su nombre" id="fecha" />
                            </div>

                    </div>
                              <div id="divDatosTestigo" runat="server">
                            <br />
                            <h6>DATOS DEL TESTIDO O POSIBLE TESTIGO</h6>
                            <div class="form-group">
                                <p for="nombreT">Nombre:</p>
                                <input type="text" class="form-control" placeholder="Ingrese su nombre" id="nombreT" />
                            </div>
                            <div class="row" style="margin-top: 0px!important">
                                <div class="col">
                                    <p for="telefonoT">Teléfono:</p>
                                    <input type="text" class="form-control" id="telefonoT" placeholder="ingrese su Teléfono" name="telefonoT" />
                                </div>
                                <div class="col">
                                    <p for="emailT">Correo Electrónico:</p>
                                    <input type="text" class="form-control" placeholder="Ingrese su Correo Electrónico" name="emailT" />
                                </div>
                            </div>
                            <div class="form-group">
                                <p for="domicilioT">Domicilio:</p>
                                <input type="text" class="form-control" placeholder="Ingrese su Domicilio" id="domicilioT" />
                            </div>
                            <div class="form-group">
                                <p for="RelacionT">Relación con Creando Productividad:</p>
                                <input type="text" class="form-control" placeholder="" id="RelacionT" />
                            </div>
                                  </div>
                            <button type="submit" class="btn btn-lg btn-primary">Enviar</button>
                        </div>

                <div class="col-lg-3 col-md-3 col-sm-12 col-12">

                   <p class="text-justify">
                                Esta línea es un canal para que cualquier 
                                persona informe sobre los posibles 
                                incumplimientos o violaciones a las políticas
                                de integridad y del reglamento interior por 
                                parte de los colaboradores de TLA Contadores.
                            </p>
                            <p class="text-justify">
                                Conforme a las políticas de privacidad y protección de datos, 
                                la información personal del denunciante y denunciado serán reservados
                                y/o anónimos, el denunciante puede guardar el anonimato total o parcialmente
                            </p>





                </div>
            </div>
        </div>
    </section>
   
    <div class="wrapper row4">
        <footer id="footer" class="hoc clear">
            <!-- ################################################################################################ -->
            <div class="one_quarter first">
                <h1 class="logoname clear"><a href="index.html"><img src="images/demo/logo-blanco.png" style="width: 100%;"></a></h1>
                <p class="btmspace-30">
                    Firma de Contadores dedicado a ofrecerle servicios profesionales de auditoria,
                    impuestos, contabilidad y consultoría administrativa y financiera. [<a href="#">&hellip;</a>]
                </p>
                <ul class="faico clear">
                    <li><a class="faicon-facebook" href="https://www.facebook.com/tlacontadores/"><i class="fab fa-facebook"></i></a></li>
                    <%--<li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                    <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
                    <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>--%>
                </ul>
            </div>
            <div class="one_quarter">
                <h6 class="heading">Contacto</h6>
                <ul class="nospace linklist contact">
                    <li>
                        <a href="https://www.google.com/maps/place/Grand+Kino+Hermosillo/@29.097082,-110.937531,19z/data=!4m5!3m4!1s0x0:0xcdc312ab76cbcfa0!8m2!3d29.0970824!4d-110.937531?hl=es-419" style="text-decoration:none; color:#fff">
                            <i class="fas fa-map-marker-alt"></i>
                            <address>
                                Blvr. Kino 315, Suite 1009, Piso 10
                                Edificio Grand Kino Hermosillo, Col. Lomas del Pitic, C.P. 83010
                            </address>
                        </a>
                    </li>
                    <li><a href="tel:+6622145772" style="text-decoration:none; color:#fff"><i class="fas fa-phone"></i> (662)214·5772</a></li>

                    <li>
                        <a href="mailto:contacto@tlacontadores.com?Subject=Solicitud%20de%20Información" style="text-decoration:none; color:#fff">
                            <i class="far fa-envelope"></i>
                            contacto@tlacontadores.com
                        </a>
                    </li>
                </ul>
            </div>
            <div class="one_quarter">
                <h6 class="heading">Menú</h6>
                <ul class="nospace linklist">
                    <li><a href="nosotros.html" class="linkfooter">Nosotros</a></li>
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
            <!-- ################################################################################################ -->
        </footer>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row5">
        <div id="copyright" class="hoc clear">
            <!-- ################################################################################################ -->
            <!-- ################################################################################################ -->
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
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
    </form>
</body>
</html>
