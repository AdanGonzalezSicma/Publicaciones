<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_web.Inscripciones.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon" />
    <link rel="stylesheet" href="/Content/css/bootstrap.css" />
    <link rel="stylesheet" href="/Content/css/fonts.css" />
    <link rel="stylesheet" href="/Content/css/style.css" />
    <link href="http://fonts.cdnfonts.com/css/aller" rel="stylesheet">
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

        .dropdown-menu.show {
            display: inline !important;
        }

        .dropdown-menu[x-placement^="top"], .dropdown-menu[x-placement^="right"], .dropdown-menu[x-placement^="bottom"], .dropdown-menu[x-placement^="left"] {
            right: auto;
            bottom: auto;
        }

        .dropdown-menu {
            position: absolute;
            top: -5px !important;
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

        #ulmovil {
            list-style: none;
            padding: 0;
            /* margin: 0; */
        }

            #ulmovil li {
                display: inline-block !important
            }

        #ulmovil {
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
    </style>
</head>
<body>
    <%-- <script>
        window.onload = function fncRegistroMenu() {
            var querystring = window.location.search;
            var urlparametro = new URLSearchParams(querystring);
            var mostrarregistro = urlparametro.get('mostrarregistro');
            if (mostrarregistro == 1) {
                var _registro = document.getElementById("divRegistro");
                var _actualizar = document.getElementById("divActualizar");
                var _reinscribir = document.getElementById("divReinscribir");
                _registro.style.display = "block";
                _actualizar.style.display = "none";
                _reinscribir.style.display = "none";
            }
        }
        function fncRegistro() {
            var _registro = document.getElementById("divRegistro");
            var _actualizar = document.getElementById("divActualizar");
            var _reinscribir = document.getElementById("divReinscribir");
            _registro.style.display = "block";
            _actualizar.style.display = "none";
            _reinscribir.style.display = "none";
        }
        function fncActualizar() {
            var _registro = document.getElementById("divRegistro");
            var _actualizar = document.getElementById("divActualizar");
            var _reinscribir = document.getElementById("divReinscribir");
            _registro.style.display = "none";
            _actualizar.style.display = "block";
            _reinscribir.style.display = "none";
        }
        function fncReinscribir() {
            var _registro = document.getElementById("divRegistro");
            var _actualizar = document.getElementById("divActualizar");
            var _reinscribir = document.getElementById("divReinscribir");
            _registro.style.display = "none";
            _actualizar.style.display = "none";
            _reinscribir.style.display = "block";
        }
    </script>--%>
    <style>
        .nav-pills .nav-link.active {
            background-color: #0090bf;
            color: white !important
        }

            .nav-pills .nav-link.active:hover {
                background-color: #f7aa00;
                color: white !important
            }

        .nav-pills .nav-link {
            color: #0090bf
        }

            .nav-pills .nav-link:hover {
                color: #f7aa00
            }
    </style>
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

                <div class="col-lg-4 col-md-12 botonRegistrate"><a href="/Cuenta/Registro.aspx" class="button-width-190 button-primary button-circle button-lg button btn-registro" style="background-color: red">¡Registrate ahora!</a></div>
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
                                    <!--RD Navbar Toggle-->
                                    <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                                    <!--RD Navbar Brand-->
                                    <div class="rd-navbar-brand">
                                        <!--Brand-->
                                        <a class="brand" href="/index.aspx">
                                            <img class="brand-logo-dark"
                                                src="/Content/images/logo-mascontrolVB.png" alt="" width="250" height="17" /><img class="brand-logo-light"
                                                    src="/Content/images/logo-mascontrolVB.png" alt="" width="250" height="17" /></a>
                                    </div>
                                </div>
                                <div class="rd-navbar-main-element">
                                    <div class="rd-navbar-nav-wrap">
                                        <ul class="rd-navbar-nav">
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="../index.aspx">Inicio</a>
                                            </li>

                                            <li class="rd-nav-item"><a class="rd-nav-link" href="../aplicacion.aspx">Aplicación</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="../blog.aspx">Blog</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="../contacto.aspx">Contacto</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="/Cuenta/Iniciar-Sesion.aspx">Inciar Sesión</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link" href="Menu.aspx">Ingresar como Alumno</a>
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
                <a class="nav-item" href="/index.aspx">
                    <i class="fa fa-home"></i><span>Inicio</span>
                </a>

                <a class="nav-item" href="/Contacto.aspx">
                    <i class="fa fa-envelope"></i><span>Contacto</span>
                </a>

                <a class="nav-item" href="/Cuenta/Iniciar-Sesion.aspx">
                    <i class="fa fa-user-circle"></i><span>Cuenta</span>
                </a>

                <a class="nav-item active" href="/Menu.aspx" id="home">
                    <i class="fa fa-bars"></i>
                </a>

            </div>
            <section class="section section-intro context-dark" style="height: 300px">
                <div class="intro-bg" style="background: url(/Content/images/intro-bg-1.jpg) no-repeat; background-size: cover; background-position: top center;"></div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 text-center">
                            <h1 class="font-weight-bold wow fadeInLeft">Cuenta</h1>

                        </div>
                    </div>
                </div>
            </section>





            <section class="section section-md">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <!-- Nav pills -->
                            <ul class="nav nav-pills nav-justified">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="pill" href="#home2" style="line-height: 1.5!important; height: 100%"><i class="fa fa-user-plus" aria-hidden="true" style="font-size: 40px!important"></i>
                                        <br />
                                        ¡Registrate!</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#menu1" style="line-height: 1.5!important; height: 100%"><i class="fa fa-id-card" aria-hidden="true" style="font-size: 40px!important"></i>
                                        <br />
                                        Actualizar datos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#menu2" style="line-height: 1.5!important; height: 100%"><i class="fa fa-pencil-square-o" aria-hidden="true" style="font-size: 40px!important"></i>
                                        <br />
                                        Reinscribirse</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="/Cuenta/Iniciar-Sesion-Alumnos.aspx" style="line-height: 1.5!important; height: 100%"><i class="fa fa-list-alt" aria-hidden="true" style="font-size: 40px!important"></i>
                                        <br />
                                        Consultar Movimiento</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="/Cuenta/Iniciar-Sesion-Alumnos.aspx" style="line-height: 1.5!important; height: 100%"><i class="fa fa-credit-card" aria-hidden="true" style="font-size: 40px!important"></i>
                                        <br />
                                        Realizar Pagos</a>
                                </li>
                            </ul>
                            <br />
                            <hr />
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="home2">
                                    <br />
                                    <div class="row" style="justify-content: center">
                                        <div class="col-lg-6 col-md-12 col-sm-12">
                                            <div class="card shadow-sm" style="height: 100%; margin-bottom: 10px">
                                                <div class="card-body text-center">

                                                    <h4><b>¿Eres alumno y aún no tienes una cuenta?<br />
                                                        ¡Registrate!</b></h4>
                                                    <br />

                                                    <label for="usr">Ingresar código de club<span class="req-symbol">*</span></label>
                                                    <asp:TextBox ID="txtCodigoClub0" runat="server" class="form-control" MaxLength="15" Style="text-transform: uppercase"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="reqtxtCodigoClub0" ControlToValidate="txtCodigoClub0" ForeColor="Red" Display="Dynamic" ValidationGroup="Agregar" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <asp:Label ID="lblErrorRegistroPrincipal" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>

                                                </div>
                                                <div class="card-footer text-center" style="border-top: none; background-color: #fff">
                                                    <asp:Button ID="btnRegistrarse" runat="server" Text="Crear Cuenta" ValidationGroup="Agregar" class="button-width-190 button-primary button-circle button-lg button offset-top-30" OnClick="btnRegistrarse_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="tab-pane fade" id="menu1">
                                    <br />
                                    <div class="row" style="justify-content: center">
                                        <div class="col-lg-6 col-md-12 col-sm-12">
                                            <div class="card  shadow-sm" style="height: 100%; margin-bottom: 10px">
                                                <div class="card-body text-center">
                                                    <h4><b>Actualizar datos</b></h4>
                                                    <div class="col-lg-12">
                                                        <div class="form-group text-left">
                                                            <label for="usr">Ingresar código de club<span class="req-symbol">*</span></label>
                                                            <asp:TextBox ID="txtCodigoClub" runat="server" class="form-control" Style="text-transform: uppercase" MaxLength="20"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="reqtxtCodigoClub" ControlToValidate="txtCodigoClub" ForeColor="Red" ValidationGroup="Editar" Display="Dynamic" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="form-group text-left">
                                                            <label for="usr">Ingresar CURP o Correo electrónico del alumno<span class="req-symbol">*</span></label>
                                                            <asp:TextBox ID="txtCURP" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="reqtxtCURP" ControlToValidate="txtCURP" ForeColor="Red" Display="Dynamic" ValidationGroup="Editar" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="form-group text-left">
                                                            <label for="usr">Ingresar NIP<span class="req-symbol">*</span></label>
                                                            <asp:TextBox ID="txtNIP" runat="server" ValidationGroup="Editar" class="form-control" MaxLength="4" onkeydown="return ( event.ctrlKey || event.altKey || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) || (95<event.keyCode && event.keyCode<106)|| (event.keyCode==8) || (event.keyCode==9) || (event.keyCode>34 && event.keyCode<40) || (event.keyCode==46) )"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="reqtxtNIP" ControlToValidate="txtNIP" ForeColor="Red" Display="Dynamic" ValidationGroup="Editar" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                            <asp:Label ID="lblError" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="card-footer text-center" style="border-top: none; background-color: #fff">
                                                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" ValidationGroup="Editar" class="button-width-190 button-primary button-circle button-lg button offset-top-30" OnClick="btnIngresar_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="tab-pane fade" id="menu2">
                                    <br />
                                    <div class="row" style="justify-content: center">
                                        <div class="col-lg-6 col-md-12 col-sm-12">
                                            <div class="card shadow-sm" style="height: 100%; margin-bottom: 10px">
                                                <div class="card-body text-center">

                                                    <h4><b>¡Reinscribete a nuestro club!<br />
                                                    </b></h4>
                                                    <br />

                                                    <label for="usr">Ingresar código de club<span class="req-symbol">*</span></label>
                                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" MaxLength="15" Style="text-transform: uppercase"></asp:TextBox>

                                                    <br />


                                                </div>
                                                <div class="card-footer text-center" style="border-top: none; background-color: #fff">
                                                    <asp:Button ID="Button1" runat="server" Text="Reinscribirse" ValidationGroup="Agregar" class="button-width-190 button-primary button-circle button-lg button offset-top-30" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%--  <section class="section section-md">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12"></div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="margin-bottom: 5%; display: none" id="divRegistro">
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="margin-bottom: 5%; display: none" id="divReinscribir">
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12" style="margin-bottom: 5%; display: none" id="divActualizar">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-6" style="margin-bottom: 5%" onclick="fncRegistro()">
                            <div class="card shadow-sm text-center" style="height: 100%; margin-bottom: 5%">
                                <div class="card-body">
                                    <img class="shadow-sm" src="../Content/images/Registro.png" style="width: 50%; border-radius: 50%;" />
                                    <br />
                                    <br />
                                    <h5><b>¡Registrate!</b></h5>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6" style="margin-bottom: 5%" onclick="fncActualizar()">
                            <div class="card shadow-sm text-center" style="height: 100%; margin-bottom: 5%">
                                <div class="card-body">
                                    <img class="shadow-sm" src="../Content/images/Datos.png" style="width: 50%; border-radius: 50%;" />
                                    <br />
                                    <br />
                                    <h5><b>Actualizar datos</b></h5>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6" style="margin-bottom: 5%" onclick="fncReinscribir()">

                            <div class="card shadow-sm text-center" style="height: 100%; margin-bottom: 5%">
                                <div class="card-body">
                                    <img class="shadow-sm" src="../Content/images/reInscripcion.png" style="width: 50%; border-radius: 50%;" />
                                    <br />
                                    <br />
                                    <h5><b>Reinscribirse</b></h5>

                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6" style="margin-bottom: 5%">
                            <a href="/Cuenta/Iniciar-Sesion-Alumnos.aspx">
                                <div class="card shadow-sm text-center" style="height: 100%; margin-bottom: 5%">
                                    <div class="card-body">
                                        <img class="shadow-sm" src="../Content/images/Movimientos.png" style="width: 50%; border-radius: 50%;" />
                                        <br />
                                        <br />
                                        <h5><b>Consultar Movimientos</b></h5>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6" style="margin-bottom: 5%">
                            <a href="/Cuenta/Iniciar-Sesion-Alumnos.aspx">
                                <div class="card shadow-sm text-center" style="height: 100%; margin-bottom: 5%">
                                    <div class="card-body">

                                        <img class="shadow-sm" src="../Content/images/Pagos.png" style="width: 50%; border-radius: 50%" />
                                        <br />
                                        <br />
                                        <h5><b>Realizar Pagos</b></h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6" style="margin-bottom: 5%">
                            <a href="/Index.aspx">
                                <div class="card shadow-sm text-center" style="height: 100%; margin-bottom: 5%">
                                    <div class="card-body">
                                        <img class="shadow-sm" src="../Content/images/regresar.png" style="width: 50%; border-radius: 50%" />
                                        <br />
                                        <br />
                                        <h5><b>Regresar a pagina Principal</b></h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <%--  <div class="col-lg-4 col-md-4 col-sm-6" style="margin-bottom:5%">
                             <div class="card text-center" style="height:100%; margin-bottom:5%; border:none!important">
                                 <div class="card-body">
                                      <img src="../Content/images/agradecimiento.jpg" style="width:100%"/>
                                     <br />
                                      <br />
                                 </div>
                             </div>
                         </div>
                    </div>
                </div>
            </section>--%>

            <br />
            <br />
            <br />
            <br />
            <br />
            <!--Footer-->
            <footer class="section footer-classic section-sm">
                <div class="container">
                    <div class="row row-30">
                        <div class="col-lg-3 wow fadeInLeft">
                            <!--Brand-->
                            <a class="brand" href="/index.aspx">
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
                                <li><a href="/index.aspx">Inicio</a></li>
                                <li><a href="/Nosotros.aspx">Nosotros</a></li>
                                <li><a href="/aplicacion.aspx">Aplicación</a></li>
                                <li><a href="/blog.aspx">Blog</a></li>
                                <li><a href="/contacto.aspx">Contacto</a></li>
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
