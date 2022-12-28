<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClaveVisualizacion.aspx.cs" Inherits="CreandoProductividad.Cursos.ClaveVisualizacion" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Import Namespace="CreandoProductividad.Models" %>
<%@ Import Namespace="CreandoProductividad.Class" %>


<!DOCTYPE html>
<html style="background-color: #fff;">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>NOM-035</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- icono de pestaña -->
   <link href="../Content/img/nom.png" rel="icon" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
   
    <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/css/main.min.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.min.css" rel="stylesheet" />

    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
<%-- <style>
     /*clase para modificar el header*/
        /*.card-header { background-color: #f88017; color: white; }*/
         /*@media screen and (max-width: 600px) { #informacion { text-align:center } }*/
         /*clase para modificar el footer*/
        /*.card-footer{ background-color: #f88017; }*/
        /*clase para modificar el boton de comenzar*/
        /*.btnComenzar{ background-color: #43bfc7;  color: white; }*/
         /*clase para modificar el boton de salir*/
        /*.btnSalir{ background-color: #43bfc7; color: white; }*/
         /*clases para modificar la seccion donde aparece la informacion de la empresa, centro de trabajo y curso*/
        /*.jumbotron{ background-color:#43bfc7!important }*/
        /*.jumbotron h5{ color:#000080 }*/
         /*clases para modificar el texto del body donde aparece el formulario*/
         /*#avance label{ color:#000080 }*/
         /*#avance p{ color:#000080 }*/
           
</style>--%>
    <%=CargarTema(Convert.ToInt32(Request.QueryString["Matriz"].ToString())) %>
    <form runat="server">
            
    <div class="content" id="contenido">
        <div class="container">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <div class="card" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                        <div class="card-header">
                            <h3 class="card-title text-center" style=" float: none; font-size:20px">
                                <b> <i class="ion ion-clipboard mr-1"></i>Bienvenido a NOM-035-STPS-2018</b>
                            </h3>
                        </div>
                        <div class="card-body">
                            <div class="row">

                                <div class="col-lg-12">
                                    <div class="jumbotron" style=" padding: 2rem 1rem!important;">
                                        <div class="row">
                                            <div class="col-lg-2">
                                                <img src="<%: Session["UrlImagen"]  %>" alt="IMAGEN" id="perfil" style=" box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12); " width="100%" />
                                            </div>
                                            <div id="informacion" class="col-lg-10 col-sm-12" style="padding-top:10px">
                                                

                                                <h6><b>  Empresa : </b><%: Session["NombreEmpresa"] %></h6>
                                                <h6><b>  Centro de Trabajo : </b><%: Session["CentroTrabajo"] %></h6>
                                                <h6><b>  Curso : </b><%: Session["NombreDelCurso"] %></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-lg-2"></div>
                                <div class="col-lg-8" id="avance">
                                        <div class="text-center">
                                            <p style="font-size:18px">Por Favor ingrese la siguiente información para acceder al curso</p>
                                        </div>
                                        <div class="form-group" id="conCuestionario" runat="server">
                                            <label id="lblCuestionario" runat="server">Numero de Encuesta:</label>
                                            <input id="txtCuestionario" runat="server" type="text" class="form-control" placeholder="Ingrese la clave del cuestionario" maxlength="14">
                                        </div>
                                        <div class="form-group" id="conPass" runat="server">
                                            <label id="lblPass" runat="server" for="pwd">PIN de seguridad:</label>
                                            <input id="txtPass" runat="server" type="password" class="form-control" placeholder="Ingrese el PIN de seguridad" maxlength="10">
                                        </div>
                                        <div class="form-group" id="conNombre" runat="server">
                                            <label id="lblNombre" runat="server" >Nombre:</label>
                                            <input id="txtNombre" runat="server" type="text" class="form-control" placeholder="Ingrese su Nombre" maxlength="100">
                                        </div>
                                        <div class="form-group" id="conDepartamento" runat="server">
                                            <label id="lblDepartamento" runat="server">Departamento:</label>
                                            <asp:DropDownList ID="cmbDepartamento" runat="server" CssClass="form-control" Width="100%"></asp:DropDownList>

                                        </div>
                                        <div class="form-group" id="conPuesto" runat="server">
                                            <label id="lblPuesto" runat="server">Puesto:</label>
                                            <input id="txtPuesto" runat="server" type="text" class="form-control" placeholder="Ingrese su puesto" maxlength="100">
                                        </div>



                                </div>
                                <div class="col-lg-2"></div>
                            </div>
                            <label id="lblMensaje" runat="server" visible="false"></label>
                        </div>
                        <div class="card-footer">
                            <asp:Button Text="Comenzar" ID="btnComenzo" OnClick="btnComenzo_Click" runat="server" CssClass="btn float-right btnComenzar" style="width: 100px; margin-right: 2px;" />
                            <asp:Button Text="Salir" ID="btnSali" OnClick="btnSali_Click" runat="server" CssClass="btn float-left btnSalir" style="width: 100px; margin-right: 2px;"/>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1"></div>
            </div>
            </div>
        </div>
                                    </form>


    <script src="../Content/plugins/jquery/jquery.min.js"></script>
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
    </script>

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