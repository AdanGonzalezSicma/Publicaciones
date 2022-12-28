<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClaveCuestionario_old.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.ClaveCuestionario" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Import Namespace="CreandoProductividad.Models" %>
<%@ Import Namespace="CreandoProductividad.Class" %>

<%
    HttpContext context = HttpContext.Current; if (context.Session["CodigoEmpresa"] == null)
    {
        Response.Redirect("~/Cuestionarios/Acceso.aspx");
    }
    TCIHerramientas oHerramientas = new TCIHerramientas();
    string CodigoEmpresa = context.Session["CodigoEmpresa"].ToString();
    string CodigoArea = context.Session["CodigoArea"].ToString();
    string NombreEmpresa = string.Empty;
    string CentroTrabajo = string.Empty;
    string UrlImagen = string.Empty;

    using (var oContext = new NOM035Entities())
    {
        //SE OBTIENE EL NOMBRE DE LA EMPRESA DE LA UNIDAD A EVALUAR LOGUEADA
        var getEmpresa = oContext.OpeNOMEmpresas.Where(s => s.CodigoEmpresa == CodigoEmpresa).Select(sel => new
        {
            sel.Nombre,
            sel.ImagenNegocio
        }).ToList();
        NombreEmpresa = getEmpresa[0].Nombre;
        if (getEmpresa[0].ImagenNegocio != null)
        {
            UrlImagen = oHerramientas.ObtenerUrlDeByteArray(getEmpresa[0].ImagenNegocio);
        }
        else
        {
            UrlImagen = "../Content/icons/imgPerfilEmpresa.jpg";
        }

        //SE OBTIENE EL NOMBRE DEL CENTRO DE TRABAJO A EVALUAR LOGUEADA
        var getCentroTrabajo = oContext.CatNOMUnidadesEvaluar.Where(s => s.Codigo == CodigoArea).Select(sel => new
        {
            sel.NombreUnidad
        }).ToList();
        CentroTrabajo = getCentroTrabajo[0].NombreUnidad;
    }
%>

<!DOCTYPE html>
<html style="background-color: #fff;">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>NOM-035</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <%--<link rel="stylesheet" href="../Content/plugins/fontawesome-free/css/all.min.css">--%>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <%--<link rel="stylesheet" href="../Content/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">--%>
    <!-- iCheck -->
    <%--<link rel="stylesheet" href="../Content/plugins/icheck-bootstrap/icheck-bootstrap.min.css">--%>
    <!-- Theme style -->
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/fonts.css">
    <link rel="stylesheet" href="/css/style.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link href="../Content/img/nom.png" rel="icon" />
</head>

<body class="hold-transition sidebar-mini layout-fixed">

    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
       <script type="text/javascript" src="../js/jquery.mask.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#txtNumEncuesta").mask("0000-0000-0000");

        })

    </script>

    <script>

        function fcnpopIniciarEncuesta() {
            popIniciarEncuesta.Show();
        }

        function fcnCerrarppop() {
            popIniciarEncuesta.Hide();

        }

    </script>

    <%=CargarTema() %>
    <style>
        /*Clase para manipular el color de fondo de la barra donde aparece el titulo
        .banner-titulo{background: rgb(248,128,23); background: linear-gradient(90deg, rgba(248,128,23,1) 30%, rgba(67,191,199,1) 59%, rgba(67,191,199,1) 100%);}
         Clase para manipular el color de letra del titulo
         .banner-titulo h2{ text-shadow: 3px 3px 2px black;  color: #fff !important; padding: 18px }
        Clase para manipular el color de la barra superior
        .section-banner { background: rgba(67,191,199,1); }

         clase para cambiar el color de letra del banner superior<-----------------------------
        .section-banner h5,h3 { color:white }<-----------------------------
        clase para cambiar el color del borde del banner superior<-----------------------------
       .borde{border-right:3px solid red;}<-----------------------------
        Clase para manipular el color de fondo, borde y letra del boton del banner superior <-----------------------------
        .button-primary, .button-primary { background-color: #f88017; border-color: #f88017; color: #fff }<-----------------------------
        Clase para manipular el color de fondo, borde y letra del boton del banner superior en hover<-----------------------------
        .button-primary.button-ujarak::before { color: #ffffff; background-color: #151515; border-color: #151515; }<-----------------------------


       Color de fondo y letra del header de los dos cards
        .card-header { color: white; background-color: rgba(67,191,199,1); font-size: 20px; text-align: center }
         Color de letra del card con datos de la empresa
        #dempresa { font-size: 18px; color: navy }
         Color de letra de la clave del cuestionario 
        #clave { font-size: 30px; color: navy }
         Color de letra del input para acceder tu clave del cuestionario  
        #txtNumEncuesta{ color:navy }       
        Color de los parrafos del card donde se muestra la clave del cuestionario 
        p { font-size: 18px; color:black }
         Color de letra de la nota en el card de clave 
        .nota { color: red; font-size: 18px }
         ID que se utiliza para cambiar el color del boton comenzar 
        #btnComenzar { background-color: #43bfc7; color: white; border-radius: 5px; padding: 10px 10px!important; }
        ID que se utiliza para cambiar el color del boton salir 
        #btnSalir { background-color: #43bfc7; color: white; border-radius: 5px; padding: 10px 10px!important; }*/
        #contenido {
            padding-top: 2%
        }
        #popIniciarEncuesta_btnComenzar2{
            font-size:23px
        }
        #btnCancelar{
            font-size:23px
        }

        @media screen and (max-width: 600px) {
            #informacion {
                text-align: center
            }

            .indicaciones {
                text-align: justify
            }

            #titulo {
                font-size: 20px
            }
             #contenido {
            padding-top: 0%
        }
             #popIniciarEncuesta_btnComenzar2{
                 font-size:14px
             }
              #btnCancelar{
            font-size:14px
        }
        }

        @media screen and (max-width: 1400px) and (min-width: 601px) {
            h4 {
                font-size: 18px !important
            }

            #titulo {
                font-size: 30px
            }

            txtNumEncuesta {
                font-size: 20px !important
            }

            .nota {
                color: red;
                font-size: 14px
            }

            p {
                font-size: 14px
            }

            .card-header {
                font-size: 18px !important
            }

            #contenido {
                padding-top: 1%
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
    </style>
    <div class="wrapper" style="background-color: #fff;">
        <div class="content">
            <!-- Top Banner-->
            <div class="container-fluid section section-banner text-center d-none d-xl-block">

                <div class="row text-center" style="padding: 0.5%; margin-top: 0px!important">
                    <div class="col-lg-4 col-md-5 borde">
                        <h3 style="font-size: 25px;">¡Plataforma Nom-035!</h3>
                    </div>
                    <div class="col-lg-5 col-md-5 borde">
                        <h5 id="subtitulox">Para cumplir paso a paso con la implementación de la NOM-035</h5>

                    </div>
                    <div class="col-lg-3 col-md-2">
                        <button class="button button-primary button-ujarak" style="padding: 10px 23px 10px!important; min-width: 100px" onserverclick="btnSalir_ServerClick" runat="server">Salir</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid" style="padding-top: 1%">
            <section>
                <div class="container-fluid banner-titulo">
                    <div class="row text-center">
                        <div class="col-md-12 col-12 col-sm-12 col-lg-12">
                            <h2 data-caption-animate="fadeInLeft" data-caption-delay="0" id="titulo">Bienvenido a NOM-035-STPS-2018
                            </h2>
                        </div>

                    </div>
                </div>
            </section>

        </div>

        <!-- Content Wrapper. Contains page content -->
        <div class="content">

            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid" id="contenido">


                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="card" style="box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.1) !important; height: 100%">
                                <div class="card-header">Datos de la Empresa</div>
                                <div class="card-body">
                                    <div class="row">

                                        <div class="col-lg-4 col-md-5 col-sm-12">
                                            <img src="<%= UrlImagen %>" alt="IMAGEN" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12); width: 100%" />
                                        </div>
                                        <div id="informacion" class="col-lg-8 col-md-7 col-sm-12">

                                            <label for="name">Nombre:</label><br />
                                            <h4 id="dempresa"><b><%= NombreEmpresa %> </b></h4>
                                            <br />
                                            <label for="name">Centro de Trabajo:</label><br />
                                            <h4 id="dempresa"><b><%= CentroTrabajo %> </b></h4>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-6 col-sm-12">
                            <section class="connectedSortable">

                                <!-- TO DO List -->
                                <div class="card" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                                    <div class="card-header">Clave Única para Ingresar</div>
                                    <!-- /.card-header -->
                                    <form runat="server">

                                        <div class="card-body ">

                                            <ul class="todo-list" data-widget="todo-list">

                                                <!-- SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->
                                                <li style="border: none;">
                                                    <div class="icheck-primary d-inline ">
                                                        <div class="form-group text-justify indicaciones">

                                                            <div style="text-align: justify; display: none">
                                                                <p>Clave para ingresar a los cuestionarios:</p>
                                                                <h4 style="font-size: 1.5rem;" id="clave">
                                                                    <b>
                                                                        <asp:Label Text="" ID="lblClaveCuestionario" runat="server" Style="display: none" /></b>
                                                                </h4>
                                                            </div>
                                                            <div class="indicaciones">

                                                                <p class="nota">Al darle clic al botón "Iniciar Encuesta" se genera un número de encuesta, el cual es muy importante, ya que, si usted desea, podrá darle continuidad a la encuesta en cualquier otro momento.</p>
                                                                <p>Si por alguna razón el número de encuesta se pierde u olvida, deberá comunicarse con su asesor antes de comenzar una nueva, ya que cada número es único para cada usuario.</p>
                                                                <br />
                                                                <div class="text-center">

                                                                    <button type="button" class="btn button-primary float-center" style="font-size: 23px; width: 300px" onclick="fcnpopIniciarEncuesta()">Iniciar Encuesta</button>

                                                                    <p>Si usted ya cuenta con un número de encuesta y desea darle continuidad al cuestionario, ingrese el número en el siguiente recuadro:</p>
                                                                </div>




                                                                <div class="row">
                                                                    <div class="col-sm-0 col-lg-3 " style="text-align: center;"></div>
                                                                    <div class="col-sm-12 col-lg-6 " style="text-align: center;">
                                                                        <asp:TextBox ID="txtNumEncuesta" runat="server" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC" Style="font-size: 1.5rem; font-weight: bolder; text-align: center" MaxLength="14" Width="300" />
                                                                    </div>
                                                                    <div class="col-sm-0 col-lg-3 " style="text-align: center;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-sm-12 col-lg-12">
                                                                    <asp:Label ID="lblError" Text="Acceso denegado. Intente con otro número de encuesta." ForeColor="Red" Visible="false" runat="server" />
                                                                    <asp:Label ID="lblErrorNumEncuestasNoDisponibles" Text="No hay número de encuestas disponibles." ForeColor="Red" Visible="false" runat="server" />
                                                                    <asp:Label ID="lblErrorNumAccesos" Text="Ha alcanzado su número máximo de accesos." ForeColor="Red" Visible="false" runat="server" />
                                                                    <asp:Label ID="lblErrorNumEncuestaExpiro" Text="Su número de encuesta ha expirado." ForeColor="Red" Visible="false" runat="server" />
                                                                    <asp:Label ID="lblErrorNumEncuestaNoDisponibleOpeNOMAvanceUsuarios" Text="Error al ingresar, refresque la página." ForeColor="Red" Visible="false" runat="server" />
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </li>
                                                <!-- END: SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->

                                            </ul>
                                        </div>

                                        <!-- /.card-body -->
                                        <div class="card-footer clearfix" style="border-bottom-right-radius: 5px; border-bottom-left-radius: 5px">
                                            <button id="btnComenzar" onserverclick="btnComenzar_ServerClick" type="button" class="btn button-primary float-right" runat="server" style="margin-right: 2px;">Iniciar Encuesta</button>

                                            <button id="btnSalir" onserverclick="btnSalir_ServerClick" type="button" class="btn float-left" style="width: 100px; margin-right: 2px;" runat="server">Salir</button>
                                        </div>


                                        <dx:ASPxPopupControl
                                            ID="popIniciarEncuesta"
                                            ClientInstanceName="popIniciarEncuesta"
                                            runat="server"
                                            PopupHorizontalAlign="WindowCenter"
                                            PopupVerticalAlign="WindowCenter"
                                            Width="651px"
                                            HeaderText="Número de Encuesta" SettingsAdaptivity-Mode="OnWindowInnerWidth" Height="216px">
                                            <SettingsAdaptivity Mode="OnWindowInnerWidth"></SettingsAdaptivity>
                                            <ContentCollection>
                                                <dx:PopupControlContentControl>
                                                    <div class="form-group">
                                                    </div>
                                                    <div style="text-align: center">
                                                        <p>
                                                            Es necesesario que guarde este número de encuesta para futuras referencias, para ser válido debe iniciar primeramente la encuesta, de lo contrario estpe número no será válido.
                                                        </p>
                                                        <br />
                                                        <p>
                                                            Número De Encuesta :
                                                        <asp:Label ID="lblNumEncuesta" Text="text" runat="server" />
                                                        </p>


                                                    </div>
                                                    <br />
                                                    <br />
                                                    <div style="align-content: center">
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-6">
                                                                    <button id="btnComenzar2" onserverclick="btnComenzar_ServerClick" type="button" class="btn button-primary float-center" runat="server" style="width: 100%;padding: 6px 6px;">Iniciar Encuesta</button><br />
                                                                </div>
                                                                
                                                                <div class="col-6">
                                                                    <button id="btnCancelar" onclick="fcnCerrarppop()" type="button" class="btn button-primary float-center" style=" width: 100%;padding: 6px 6px;">Cancelar</button><br />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </dx:PopupControlContentControl>
                                            </ContentCollection>
                                        </dx:ASPxPopupControl>

                                    </form>
                                </div>
                                <!-- /.card -->

                            </section>


                            <!-- /.Left col -->
                            <!-- right col (We are only adding the ID to make the widgets sortable)-->
                            <section class="col-lg-5 connectedSortable">
                            </section>
                            <!-- right col -->
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container">

                    <!-- Main row -->
                    <div class="row">
                        <!-- Left col -->

                    </div>
                    <!-- /.row (main row) -->
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- ./wrapper -->




<%--    <script src="../Content/plugins/jquery/jquery.min.js"></script>
    <script src="../Content/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <script src="../Content/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../Content/dist/js/demo.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="popover"]').popover();
        });
    </script>--%>

    <!-- SCRIPT -->
 
    <script>
        function getNavigator() {
            var agente = navigator.userAgent;
            var navegadores = ["Chrome", "Firefox", "Safari", "Opera", "Trident", "MSIE", "Edge"];

            for (var i in navegadores) {
                if (agente.indexOf(navegadores[i]) != -1) {
                    return navegadores[i];
                }
            }
        }

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
            return so;
        }
    </script>

</body>
</html>
