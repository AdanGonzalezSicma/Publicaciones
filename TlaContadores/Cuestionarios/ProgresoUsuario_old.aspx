<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgresoUsuario_old.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.ProgresoUsuario" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Import Namespace="CreandoProductividad.Models" %>
<%@ Import Namespace="CreandoProductividad.Class" %>

<%
    HttpContext context = HttpContext.Current;
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
        if (getEmpresa.Count > 0)
            NombreEmpresa = getEmpresa[0].Nombre;

        if (getEmpresa[0].ImagenNegocio != null)
            UrlImagen = oHerramientas.ObtenerUrlDeByteArray(getEmpresa[0].ImagenNegocio);
        else
            UrlImagen = "../Content/icons/imgPerfilEmpresa.jpg";

        //SE OBTIENE EL NOMBRE DEL CENTRO DE TRABAJO A EVALUAR LOGUEADA 
        var getCentroTrabajo = oContext.CatNOMUnidadesEvaluar.Where(s => s.Codigo == CodigoArea).Select(sel => new
        {
            sel.NombreUnidad
        }).ToList();
        if (getCentroTrabajo.Count > 0)
            CentroTrabajo = getCentroTrabajo[0].NombreUnidad;
    }
%>

<!DOCTYPE html>
<html style="background-color: #fff;">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TLA Contadores</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/css/main.min.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.min.css" rel="stylesheet" />

    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link href="../Content/img/icono3-t.png" rel="icon" />
</head>

<!--<body class="hold-transition sidebar-mini layout-fixed" onbeforeunload="closeMessage()";>-->
<!--<body class="hold-transition sidebar-mini layout-fixed" onload="deshabilitaRetroceso()">-->
<body class="hold-transition sidebar-mini layout-fixed">

    <div class="wrapper" style="background-color: #fff;">
        <style>
             @media screen and (max-width: 600px) {
  span{
                font-size:13px
            }
             }
          
            @media screen and (max-width: 1700px) and (min-width: 1500px) {
                h3 {
                    font-size: 20px
                }

                .card-header {
                    padding: 0.4rem 1.25rem;
                }

                h4 {
                    font-size: 20px
                }

                #perfil {
                    width: 100px;
                    height: 100px
                }

                #contenido {
                    margin-top: 5%
                }
            }

            @media screen and (max-width: 1700px) {

                #perfil {
                    width: 100px;
                    height: 100px
                }

                h3 {
                    font-size: 20px
                }
            }

            @media screen and (min-width: 1701px) {
                h3 {
                    font-size: 25px
                }

                .card-header {
                    padding: 0.75rem 1.25rem;
                }

                #perfil {
                    width: 120px;
                    height: 120px
                }

                #contenido {
                    margin-top: 5%
                }
            }

            @media screen and (min-width: 1200px) {


                #avance {
                    padding: 0
                }
            } 
        </style>
        <%=CargarTema() %>
        <div class="content" id="contenido">
            <div class="content-header">
                <div class="container">
                    <div class="row mb-2">
                        <div class="col-sm-12">
                            <h1 class="m-0 text-dark"></h1>
                        </div>
                    </div>
                    <div class="row ">
                        <div class="col-sm-12">

                            <div class="card-header">
                                <h3 class="card-title text-center" style="float: none;"><b><i class="ion ion-clipboard mr-1"></i>
                                    Avance de la aplicación NOM-035-STPS-2018</b>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <style>
                         @media screen and (max-width: 600px) {
                             #informacion {
                                 text-align: center
                             }
                         }
                     </style>
                    <div class="text-left">
                        <div class="card-body card-titulo">
                            <div class="row">
                                <div class="col-lg-2 col-sm-12 text-center">
                                    <img src="<%= UrlImagen %>" alt="IMAGEN" id="perfil" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);" />
                                </div>
                                <div id="informacion" class="col-lg-10 col-sm-12 ">
                                    <br />
                                    <h4><b><%= NombreEmpresa %></b> </h4>
                                    <h4><b><%= CentroTrabajo %></b> </h4>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <section class="content">
                <div class="container">
                    <div class="row">
                        <section class="col-lg-12 connectedSortable">
                            <div class="card" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                                <div class="card-body" id="avance">

                                    <ul class="todo-list" data-widget="todo-list" style="margin-bottom: 0">
                                        <li style="border: none;">
                                            <div class="icheck-primary d-inline ml-2">
                                                <div class="form-group avances" style="margin-bottom: 0">
                                                    <form id="myForm">
                                                        <asp:Label ID="lblError" runat="server" />
                                                        <div style="text-align: center;">
                                                            <div class="row">
                                                                <div class="col-lg-3"></div>
                                                                <div class="col-lg-5">
                                                                    <h4>Número de encuesta:
                                                                        <br />
                                                                        <asp:Label ID="lblEncuesta" runat="server" /></h4>
                                                                </div>
                                                                <div class="col-lg-4"></div>
                                                            </div>
                                                            <div class="row" style="margin-top: 10px" runat="server" id="divDatosEncuestado">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblDatosEncuestados" runat="server" Text="Datos del encuestado"></asp:Label>
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">
                                                                    <button id="btnDatosUsuario" type="button" class="btn btn-avances" onserverclick="btnDatosUsuario_ServerClick" style="width: 100%;" runat="server">
                                                                        Ingresar
                                                                    </button>
                                                                    <asp:Image ID="Image1" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>
                                                            <div class="row" style="margin-top: 10px">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblPrimerVideoSensibilizacion" Text="I Parte del curso" runat="server" />
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">
                                                                    <button id="btnPrimerVideoSensibilizacion" type="button" class="btn btn-avances" onserverclick="btnPrimerVideoSensibilizacion_ServerClick"
                                                                        style="width: 100%;" runat="server">
                                                                        <img src="../Content/icons/completado.png" style="width: 20px; height: 20px" />
                                                                        / Ingresar
                                                                    </button>
                                                                    <asp:Image ID="imgPrimerVideoSensibilizacion" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>

                                                            <!-- PRIMERA RETROALIMENTACIÓN DE LA SENSIBILIZACIÓN -->
                                                            <div class="row" style="margin-top: 10px">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblPrimerRetroalimentacion" Text="I Retroalimentación" runat="server" />
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">
                                                                    <button id="btnPrimerRetroalimentacion" type="button" class="btn btn-avances" onserverclick="btnPrimerRetroalimentacion_ServerClick"
                                                                        style="width: 100%;" runat="server">
                                                                        Ingresar</button>
                                                                    <asp:Image ID="imgPrimerRetroalimentacion" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>

                                                            <!-- SEGUNDO VIDEO DE LA SENSIBILIZACIÓN -->
                                                            <div class="row" style="margin-top: 10px">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblSegundoVideoSensibilizacion" Text="II Parte del curso" runat="server" />
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">
                                                                    <button id="btnSegundoVideoSensibilizacion" type="button" class="btn btn-avances" onserverclick="btnSegundoVideoSensibilizacion_ServerClick"
                                                                        style="width: 100%;" runat="server">
                                                                        <img src="../Content/icons/completado.png" style="width: 20px; height: 20px" />
                                                                        / Ingresar</button>
                                                                    <asp:Image ID="imgSegundoVideoSensibilizacion" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>

                                                            <!-- SEGUNDA RETROALIMENTACIÓN DE LA SENSIBILIZACIÓN -->
                                                            <div class="row" style="margin-top: 10px">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblSegundaRetroalimentacion" Text="II Retroalimentación" runat="server" />
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">
                                                                    <button id="btnSegundaRetroalimentacion" type="button" class="btn btn-avances" onserverclick="btnSegundaRetroalimentacion_ServerClick"
                                                                        style="width: 100%;" runat="server">
                                                                        Ingresar</button>
                                                                    <asp:Image ID="imgSegundaRetroalimentacion" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>

                                                            <!-- GUIA I -->
                                                            <div class="row" style="margin-top: 10px">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblGuiaITitulo" Text="Guia Referencia I.- Acontecimientos Traumaticos" runat="server" />
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">

                                                                    <button id="btnGuiaI" onserverclick="btnGuiaI_ServerClick" type="button" class="btn btn-avances"
                                                                        style="width: 100%;" runat="server">
                                                                        Ingresar
                                                                    </button>

                                                                    <asp:Image ID="imgGuiaI" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>

                                                            <!-- GUIA II -->
                                                            <div class="row" style="margin-top: 10px">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblGuiaIITitulo" Text="Guia Referencia II.- Factores de Riesgo Psicosocial" runat="server" />
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">
                                                                    <button id="btnGuiaII" onserverclick="btnGuiaII_ServerClick" type="button" class="btn btn-avances"
                                                                        style="width: 100%; background-color: #000080; color: white;" runat="server">
                                                                        Ingresar</button>
                                                                    <asp:Image ID="imgGuiaII" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>

                                                            <!-- GUIA III -->
                                                            <div class="row" style="margin-top: 10px">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblGuiaIIITitulo" Text="Guia Referencia III.- Evaluación del Entorno Psicosocial" runat="server" />
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">
                                                                    <button id="btnGuiaIII" onserverclick="btnGuiaIII_ServerClick" type="button" class="btn btn-avances"
                                                                        style="width: 100%;" runat="server">
                                                                        Ingresar</button>
                                                                    <asp:Image ID="imgGuiaIII" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>

                                                            <!-- GUIA V -->
                                                            <div class="row" style="margin-top: 10px">
                                                                <div class="col-lg-3 col-0 col-sm-0"></div>
                                                                <div class="col-lg-3 col-6 col-sm-6" style="text-align: left">
                                                                    <asp:Label ID="lblGuiaVTitulo" Text="Guia Referencia V.- Datos del Trabajador" runat="server" />
                                                                </div>
                                                                <div class="col-lg-2 col-6 col-sm-6" style="text-align: right">
                                                                    <button id="btnGuiaV" onserverclick="btnGuiaV_ServerClick" type="button" class="btn btn-avances"
                                                                        style="width: 100%;" runat="server">
                                                                        Ingresar</button>
                                                                    <asp:Image ID="imgGuiaV" ImageUrl="../Content/icons/completado.png" Visible="false" runat="server" />
                                                                </div>
                                                                <div class="col-lg-4 col-0 col-sm-0"></div>
                                                            </div>

                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- END: SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->

                                    </ul>
                                </div>

                                <!-- /.card-body -->
                                <form runat="server">

                                    <dx:ASPxCallbackPanel ID="cbActualizarNumeroAccesos" OnCallback="cbActualizarNumeroAccesos_Callback"
                                        ClientInstanceName="cbActualizarNumeroAccesos" runat="server">
                                        <PanelCollection>
                                            <dx:PanelContent runat="server">
                                            </dx:PanelContent>
                                        </PanelCollection>
                                    </dx:ASPxCallbackPanel>

                                    <dx:ASPxHiddenField ID="hiddenUltimoSistemaOperativo" runat="server" ClientInstanceName="hiddenUltimoSistemaOperativo"></dx:ASPxHiddenField>
                                    <dx:ASPxHiddenField ID="hiddenUltimoNavegador" runat="server" ClientInstanceName="hiddenUltimoNavegador"></dx:ASPxHiddenField>
                                    <dx:ASPxHiddenField ID="hiddenBandera" runat="server" ClientInstanceName="hiddenBandera"></dx:ASPxHiddenField>

                                    <div class="card-footer clearfix">
                                        <button id="btnSalir" onserverclick="btnSalir_ServerClick" type="button" class="btn float-left btnSalir" style="width: 100px; margin-right: 2px;" runat="server">Salir</button>
                                    </div>
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
                    <!-- /.row (main row) -->
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- ./wrapper -->

    <script src="../Content/js/jquery.min.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>

    <script>
        $(document).ready(function () {
            $('[data-toggle="popover"]').popover();
        });
    </script>

    <!-- SCRIPT -->
    <script type="text/javascript">
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

            if ( /* !leftWindow  && */ (!from || from.nodeName === 'HTML')) {
                // Haz lo que quieras aquí

                var MostrarMensaje = "";
                var Bandera = "";
                Bandera = hiddenBandera.Get("Bandera");

                if (Bandera && MostrarMensaje != 1) {
                    var mensaje = confirm('¿Desea salir de la página?');
                    if (mensaje) {
                        MostrarMensaje = 1;
                        cbActualizarNumeroAccesos.PerformCallback();
                        location.href = "Acceso.aspx";
                    }
                }
                
                // localStorage.setItem( 'leftWindow', true );
            }
        });

    </script>

</body>
</html>
