<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfAcontecimientosTraumaticos.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.InfAcontecimientosTraumaticos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Import Namespace="CreandoProductividad.Models" %>
<%@ Import Namespace="CreandoProductividad.Class" %>

<%   
    HttpContext context = HttpContext.Current;
    TCIHerramientas oHerramientas = new TCIHerramientas();
    string CodigoEmpresa = string.Empty;
    string NombreEmpresa = string.Empty;
    string UrlImagen = string.Empty;
    string NumEncuesta = string.Empty;
    string CentroTrabajo = string.Empty;
    int OIDEmpresa = 0;
    int OIDEncuesta = 0;

    CentroTrabajo = context.Session["CentroTrabajo"].ToString();
    NumEncuesta = context.Session["NumEncuesta"].ToString();
    CodigoEmpresa = context.Session["CodigoEmpresa"].ToString();
    using (var oContext = new NOM035Entities())
    {
        var getEmpresa = oContext.OpeNOMEmpresas.Where(s => s.CodigoEmpresa == CodigoEmpresa).Select(sel => new
        {
            sel.OIDEmpresa,
            sel.Nombre,
            sel.ImagenNegocio
        }).ToList();
        if (getEmpresa.Count == 1)
        {
            OIDEmpresa = Convert.ToInt32(getEmpresa[0].OIDEmpresa);
            NombreEmpresa = getEmpresa[0].Nombre;
        }

        if (getEmpresa[0].ImagenNegocio != null)
            UrlImagen = oHerramientas.ObtenerUrlDeByteArray(getEmpresa[0].ImagenNegocio);
        else
            UrlImagen = "../Content/icons/imgPerfilEmpresa.jpg";

        var getOIDEncuesta = oContext.OpeNOMEncuestas.Where(s => s.NumEncuesta == NumEncuesta).Select(sel => new
        {
            sel.OIDEncuesta
        }).ToList();
        if (getOIDEncuesta.Count == 1)
            OIDEncuesta = Convert.ToInt32(getOIDEncuesta[0].OIDEncuesta);
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
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
     <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/css/main.min.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.min.css" rel="stylesheet" />
    <link href="../Content/img/nom.png" rel="icon" />
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper" style="background-color: #fff;">

        <!-- Content Wrapper. Contains page content -->
        <div class="content">

            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container">
                    <div class="row mb-2">
                        <div class="col-sm-12">
                            <h1 class="m-0 text-dark"></h1>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->

                    <div class="row ">
                        <div class="col-sm-12">
                            <%--<div class="card-header" style="background-color: royalblue"></div>
                    <p class="m-0">
                        <%= Indicaciones %>
                    </p>
                    <hr>--%>

                            <div class="card-header">
                                <h3 class="card-title text-center" style=" float: none; font-size: 25px"><b><i class="ion ion-clipboard mr-1"></i>NOM-035-STPS-2018</b>
                                </h3>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                       <style>
                      
          @media screen and (max-width: 600px) {
                            #informacion {
                               text-align:center
                            }
                            #btnAnterior{
                                font-size:12px;
                                width:100%;
                                margin-right: 2px; 
                               

                            }
                            #texto{
                                display:none
                            }
                             #btnSalir{
                                font-size:12px;
                                width:100%;
                                margin-right: 2px; 
                               

                            }
                              #btnGuardar{
                                font-size:12px;
                                width:100%;
                                margin-right: 2px; 
                               

                            }
                        }
                        @media screen and (min-width: 601px) {
                           
                            #btnAnterior{
                                font-size:1rem;
                                width:100px;
                                margin-right: 2px; 
                               

                            }
                            #btnSalir{
                                font-size:1rem;
                                width:100px;
                                margin-right: 2px; 
                               

                            }
                            #btnGuardar{
                                font-size:1rem;
                                width:100px;
                                margin-right: 2px; 
                               

                            }
                            #icon{
                                display:none
                            }
                        }
        /* estos son los id que se utilizan para cambiar el color de fondo de los botones y la letra, se separaron por si se necesitaba darle colores diferentes a cada uno*/
                /*#btnAnterior {
                    background-color: #43bfc7;
                    color: white;
                }

                #btnSalir {
                    background-color: #43bfc7;
                    color: white;
                }

                #btnGuardar {
                    background-color: #43bfc7;
                    color: white;
                }*/
                /*Clase que se utiliza para darle un color de fondo al card donde aparecen los datos de la empresa y al card donde aparecen los inputs*/
                /*.card-titulo {
                    background-color: #43bfc7;
                }*/
                 /*Clase que se utiliza para darle un color a la letra del card donde aparecen los datos de la empresa*/
                /*.card-titulo h4 {
                    color: #fff
                }
               
                 .card-titulo p {
                    color: #fff
                }*/
               
                /*Clase que se utiliza para el color de letra de las preguntas al card donde aparecen los inputs*/
                /*label {
                    color: #fff
                }*/
                
                /*Clase que se utiliza para darle el color de fondo al footer del card*/
                /*.card-footer {
                    background-color: #f88017;
                }*/
                /*Clase que se utiliza para darle el color de fondo y de letra al header de los 2 cards*/
                /*.card-header {
                    background-color:#f88017;
                    color:white;
                }*/
           
                    </style>
                    <%= CargarTema()%>
                    <div class="text-left">
                        <div class="card-body card-titulo" style="border-left:1px solid #e3e6f0; border-right:1px solid #e3e6f0; box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                            <div class="row">
                                <div class="col-lg-2 text-center">
                                    <img src="<%= UrlImagen %>" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12); width: 120px; height: 120px" alt="IMAGEN" />
                                </div>

                                <div id="informacion" class="col-lg-10">

                                    <h4><b><%= NombreEmpresa %></b></h4>
                                    <h4><b><%= CentroTrabajo %></b></h4>
                                    <h4><b>Acontecimientos Traumáticos Severos</b></h4>
                                    <p>INFORME DE ACONTECIMIENTOS TRAUMÁTICOS SEVEROS EN EL CENTRO DE TRABAJO</p>
                                </div>
                            </div>
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
                    <form runat="server">
                        <div class="row">
                            <!-- Left col -->
                            <section class="col-lg-12 connectedSortable">

                                <!-- TO DO List -->
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title text-center" style=" float: none; font-size: 20px"><b>
                                            <i class="ion ion-clipboard mr-1"></i>
                                            Indicaciones</b>
                                        </h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body" style="border:none">
                                        <div class="row">
                                            <div class=" col-lg-2 col-sm-0 col-md-0"></div>
                                            <div class=" col-lg-8 col-sm-12 col-md-12">
                                                <div class="card card-titulo" style=" box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;">
                                                    <div class="card-body ">
                                                        <div class="row">

                                                            <div class=" col-lg-5 col-sm-12 col-md-5">
                                                                <label style=" font-size:18px">Nombre del trabajador:</label><br />
                                                            </div>
                                                            <div class="col-lg-7 col-sm-12 col-md-7">
                                                                <asp:TextBox ID="txtNombreTrabajador" runat="server" Width="100%" style="border:1px solid #DCDCDC"/><br />
                                                                <asp:RequiredFieldValidator ID="req_txtNombreTrabajador" ForeColor="Red" runat="server" ValidationGroup="req_Form"
                                                                    ControlToValidate="txtNombreTrabajador" ErrorMessage="Es necesario ingresar este campo."></asp:RequiredFieldValidator>
                                                            </div>

                                                        </div>
                                                        <div class="row">
                                                            <div class=" col-lg-5 col-sm-12 col-md-5">
                                                                <label style=" font-size:18px">Nombre de trabajadores involucrados:</label><br />
                                                            </div>
                                                            <div class="col-lg-7 col-sm-12 col-md-7">
                                                                <asp:TextBox ID="txtNombreInvolucrados" runat="server" Width="100%" style="border:1px solid #DCDCDC"/><br />
                                                                <asp:RequiredFieldValidator ID="req_txtNombreInvolucrados" ForeColor="Red" runat="server" ValidationGroup="req_Form"
                                                                    ControlToValidate="txtNombreInvolucrados" ErrorMessage="Es necesario ingresar este campo."></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class=" col-lg-5 col-sm-12 col-md-5">
                                                                <label style=" font-size:18px">Fecha en que ocurrió el acontecimiento:</label>
                                                            </div>
                                                            <div class=" col-lg-7 col-sm-12 col-md-7">
                                                                <dx:ASPxDateEdit ID="dtFechaEvento" runat="server" Width="100%"></dx:ASPxDateEdit>
                                                          
                                                                <asp:RequiredFieldValidator ID="req_dtFechaEvento" ForeColor="Red" runat="server" ValidationGroup="req_Form"
                                                                    ControlToValidate="dtFechaEvento" ErrorMessage="Es necesario ingresar este campo."></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class=" col-lg-5 col-sm-12 col-md-5">
                                                                <label style="font-size:18px">Descripción del acontecimiento:</label><br />
                                                            </div>
                                                            <div class="col-lg-7 col-sm-12 col-md-7">
                                                                <asp:TextBox ID="txtDescripcionEvento" runat="server" Rows="3" Columns="50" TextMode="MultiLine"  Width="100%"  style="border:1px solid #DCDCDC"/><br />
                                                                <asp:RequiredFieldValidator ID="req_txtDescripcionEvento" ForeColor="Red" runat="server" ValidationGroup="req_Form"
                                                                    ControlToValidate="txtDescripcionEvento" ErrorMessage="Es necesario ingresar este campo."></asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>






                                                    </div>
                                                </div>
                                            </div>
                                            <div class=" col-lg-2 col-sm-0 col-md-0"></div>
                                        </div>


                                    </div>
                                    <style>
                                        #txtDescripcionEvento{
                                            resize: none;
                                        }
                                    </style>
                                    <!-- /.card-body -->

                                    <dx:ASPxHiddenField ID="hiddenValorRespuesta" runat="server" ClientInstanceName="hiddenValorRespuesta"></dx:ASPxHiddenField>

                                    <div class="card-footer clearfix">
                                        <div class="row">
                                            <div class="col-6 col-lg-6 col-md-6 col-sm-6">
                                                <div style="text-align: left;">
                                                    <button id="btnSalir" onserverclick="btnSalir_ServerClick" type="button" class="btn" style="width: 100px; margin-right: 2px;" runat="server">Salir</button>
                                                </div>
                                            </div>
                                            <div class="col-6 col-lg-6 col-md-6 col-sm-6">
                                                <button id="btnGuardar" onserverclick="btnGuardar_ServerClick" validationgroup="req_Form" type="button" class="btn float-right" style="width: 100px; margin-right: 2px; " runat="server">
                                                  <span id="texto"> Siguiente</span><i id="icon" class="fa fa-arrow-right"></i>
                                                </button>

                                            </div>
                                        </div>
                                      
                                        <!--<button id="btnAnterior" type="button" class="btn float-left" style="width: 100px; margin-right: 2px; background-color: #43bfc7; color: white;" runat="server">
                                            Anterior
                                        </button>-->

                                      
                                    </div>

                                </div>
                                <!-- /.card -->

                            </section>


                            <!-- /.Left col -->
                            <!-- right col (We are only adding the ID to make the widgets sortable)-->
                            <section class="col-lg-5 connectedSortable">
                            </section>
                            <!-- right col -->
                        </div>
                    </form>
                    <!-- /.row (main row) -->
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- ./wrapper -->

    <script src="../Content/js/jquery.min.js" type="text/javascript"></script>

    <!-- SCRIPT -->
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
