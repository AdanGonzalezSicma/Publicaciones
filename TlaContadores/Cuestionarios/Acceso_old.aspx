<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceso_old.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Acceso" %>

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
    <%=CargarTema() %>
 <%--   <style>
        /*Clase para manipular el color de la barra superior*/
        .section-banner { background: rgba(67,191,199,1); }
     /* clase para cambiar el color de letra del banner superior*/
        .section-banner h5,h3 { color:white }
      /* clase para cambiar el color del borde del banner superior*/
     .borde{border-right:3px solid red;}
        /*Clase para manipular el color de fondo del header del card*/
        .card-header { background-color: rgba(67,191,199,1) }
          /*Clase para manipular el color de la letra y el tamaño del header*/
        .card-title { color: white; float: none; font-size: 25px }
          /*Clase para manipular el color de letra del form*/
        .form-group { color: navy }
          /*Clase para manipular el color de fondo, borde y letra del boton*/
        .button-primary, .button-primary { background-color: #f88017; border-color: #f88017; color: #fff }
         /*Clase para manipular el color de fondo, borde y letra del boton en hover*/
            .button-primary.button-ujarak::before { color: #ffffff; background-color: #151515; border-color: #151515; }
            /*Clase para manipular el color de fondo del footer*/
            .card-footer{ background-color: rgba(67,191,199,1) }

    </style>--%>
    <div class="wrapper" style="background-color: #fff;">
  <style>
      .card{
          margin-top:15%
      }
      @media screen and (max-width: 600px) {
 .card{
          margin-top:5%
      }
}
         @media screen and (max-width: 1400px) {
            h3 {
                font-size: 18px !important;
                padding-top:10px
            }
             h5 {
                font-size: 15px !important;
                  padding-top:10px
            }
            
        }
         @media screen and (min-width: 1401px) {
            h3 {
                font-size: 25px !important
            }
            
            
        }
         input{
             font-family:Poppins, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif
         }
         
  </style>
        <script type="text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=CheckBox1.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        </script>
        <!-- Content Wrapper. Contains page content -->
        <div class="content">
            <div class="container-fluid section section-banner text-center d-none d-xl-block">

                <div class="row text-center" style="padding:0.5%; margin-top:0px!important">
                    <div class="col-lg-4 col-md-5 borde"><h3> ¡Plataforma Nom-035!</h3></div>
                     <div class="col-lg-5 col-md-5  borde"><h5 style="text-transform:none;">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                     <div class="col-lg-3 col-md-2"><button class="button button-primary button-ujarak" style="padding: 9px 20px 9px!important; min-width:90px" onserverclick="btnSalir_ServerClick" runat="server"> Salir</button></div>
                </div>
            </div>
             <!-- Top Banner--

            <!-- Main content -->
            <section class="content">
                <div class="container">
                 
                   
                    <!-- Main row -->
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <!-- Left col -->
                        <section class="col-lg-6 connectedSortable">

                            <!-- TO DO List -->
                            <form runat="server">
                            <div class="card" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                                <div class="card-header text-center">
                                    <h3 class="card-title text-center">
                                       <b> <i class="ion ion-clipboard mr-1"></i>
                                        NOM-035-STPS-2018</b>
                                    </h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                 
                                    <ul class="todo-list" data-widget="todo-list">

                                        <!-- SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->
                                        <li style="background-color: white; border:none">
                                            <div class="icheck-primary d-inline ml-2">
                                                <div class="form-group" >
                                                    

                                                        <div style="text-align: center;">
                                                            <div class="row">
                                                               <div class="col-lg-5 text-left">
                                                                   <asp:Label Text="Código de empresa:" runat="server"  />
                                                               </div>
                                                                <div class="col-lg-7">
                                                                    <asp:TextBox ID="txtCodigoEmpresa" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC" required />
                                                                </div>
                                                            </div>
                                                          
                                                        </div>
                                                        <br />

                                                    <div style="text-align: center;">
                                                        <div class="row">
                                                           <div class="col-lg-5 text-left">
                                                               <asp:Label Text="Código de centro de trabajo:" runat="server"  />
                                                           </div>
                                                            <div class="col-lg-7">
                                                                
                                                                <asp:TextBox ID="txtCodigoArea" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC" required />
                                                            </div>
                                                        </div>
                                                       
                                                    </div>
                                                    <br />
                                                    <div style="text-align: center;">
                                                        <div class="row">
                                                            <div class="col-lg-5"></div>
                                                            <div class="col-lg-7">
                                                                <asp:Button Text="Buscar departamento" runat="server" class="button button-primary button-ujarak" Style="width: 100%; padding: 8px 33px 8px;" OnClick="Unnamed_Click"  />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div style="text-align: center;" runat="server" id="divBuscar" visible="false">
                                                        <div class="row">
                                                            <div class="col-lg-5 text-left">
                                                                <asp:Label Text="Departamento:" runat="server"  />
                                                            </div>
                                                            <div class="col-lg-7">
                                                                <asp:DropDownList ID="ddlDepartamento" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC"></asp:DropDownList>                                                                
                                                            </div>
                                                            <div class="col-lg-5"></div>
                                                            <div class="col-lg-7">
                                                                <br />
                                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                                                <asp:CustomValidator ID="CustomValidator1" runat="server" ValidationGroup="Ingresar" Display="None" ClientValidationFunction="ValidateCheckBox"></asp:CustomValidator>
                                                                <a href="/../terminos-condiciones.html" target="_blank">Aceptar Términos y Condiciones</a>
                                                                <br />  
                                                            </div>
                                                            <asp:Label Text="" ID="lblErrorIngresar" ForeColor="Red" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                
                                                </div>  </li>
                                        <!-- END: SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->

                                    </ul>
                                            </div>
                                      
                                 <div class="card-footer clearfix" style=" border-bottom-right-radius:5px; border-bottom-left-radius:5px ">
                                        <button id="btnIngresar" visible="false" onserverclick="btnIngresar_ServerClick" type="button" class="button button-primary button-ujarak" style="width: 100%; padding: 8px 33px 8px;" runat="server" validationgroup="Ingresar">Ingresar</button>
                                                                
                                        <button visible="false" id="btnSalir" type="button" class="btn float-left" style="width: 100px; background-color: #43bfc7; color: white; margin-right: 2px;" runat="server">Salir</button>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                   
                                </form>

                        </section>
                           <div class="col-lg-3"></div>
                            </div>
                            <!-- /.card -->

                     


                        <!-- /.Left col -->
                        <!-- right col (We are only adding the ID to make the widgets sortable)-->
                        <section class="col-lg-5 connectedSortable">
                        </section>
                        <!-- right col -->
                    </div>          <!-- /.container-fluid -->
            </section>
                    <!-- /.row (main row) -->
                </div>
      
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

 
    <!-- ./wrapper -->

  <%--  <script src="../Content/plugins/jquery/jquery.min.js"></script>
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
