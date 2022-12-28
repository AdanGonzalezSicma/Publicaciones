<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="CreandoProductividad.Cursos.Acceso" %>

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
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="../Content/img/nom.png" rel="icon" />
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
<%--    <style>
        /*Clase para manipular el color de la barra superior*/
        .section-banner { background: rgba(67,191,199,1); }      
        /* clase para cambiar el color de letra del banner superior*/
        .section-banner h5, h3 { color: white }
        /* clase para cambiar el color del borde del banner superior*/
        .borde { border-right: 3px solid #f88017; }
        .card-body span{ color:navy }
    </style>--%>
    <%= CargarTema(Convert.ToInt32(Request.QueryString["Matriz"].ToString())) %>
    <div class="wrapper" style="background-color: #fff;">

        <!-- Content Wrapper. Contains page content -->
        <div class="content">
              <!-- Top Banner-->
             <div class="container-fluid section section-banner text-center d-none d-xl-block">

                <div class="row text-center" style="padding:0.5%; margin-top:0px!important">
                    <div class="col-lg-4 col-md-5 borde"><h3 style="font-size:25px;"> ¡Plataforma NOM-035!</h3></div>
                     <div class="col-lg-5 col-md-5  borde"><h5 style="text-transform:none;">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                     <div class="col-lg-3 col-md-2"><button class="button button-primary button-ujarak" style="padding: 10px 23px 10px!important; min-width:100px" runat="server"> Salir</button></div>
                </div>
            </div>
            <!-- Top Banner-->
            <%--  <a class="section section-banner text-center d-none d-xl-block" href="../index.html"
                style="background: rgba(67,191,199,1);">
                <img src="../images/banner/banner-fg-02-1600x60-2.png"
                    srcset="../images/banner/banner-fg-02-1600x60-2.png 1x, ../images/banner/banner-fg-02-3200x120-2.png 2x" alt=""
                    width="1600" height="310"></a>
            <nav class="navbar navbar-light bg-light" >
                <a class="navbar-brand" href="#">
                    <img src="/docs/4.0/assets/brand/bootstrap-solid.svg" width="30" height="30" alt="">
                </a>
            </nav>--%>
            <!-- Main content -->
            <section class="content">
                <div class="container">
                    <br />
                    <br />
                    <!-- Main row -->
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <!-- Left col -->
                        <section class="col-lg-6 connectedSortable">

                            <!-- TO DO List -->
                            <form runat="server">
                                <div class="card" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                                    <div class="card-header text-center">
                                        <h3 class="card-title text-center" style="float: none; font-size: 25px">
                                            <b><i class="ion ion-clipboard mr-1"></i>
                                                NOM-035-STPS-2018</b>
                                        </h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">

                                        <ul class="todo-list" data-widget="todo-list">

                                            <!-- SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->
                                            <li>
                                                <div class="icheck-primary d-inline ml-2">
                                                    <div class="form-group" >


                                                        <div style="text-align: center;">
                                                            <div class="row">
                                                                <div class="col-lg-4 text-left">
                                                                    <asp:Label Text="Código de empresa:" runat="server" Font-Bold="False" Font-Size="Large" />
                                                                </div>
                                                                <div class="col-lg-8">
                                                                    <asp:TextBox ID="txtCodigoEmpresa" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC" />
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <br />

                                                        <div style="text-align: center;">
                                                            <div class="row">
                                                                <div class="col-lg-4 text-left">
                                                                    <asp:Label Text="Código de centro de trabajo:" runat="server" Font-Bold="False" Font-Size="Large" />
                                                                </div>
                                                                <div class="col-lg-8">

                                                                    <asp:TextBox ID="txtCodigoArea" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC" />
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <br />

                                                        <div style="text-align: center;">
                                                            <div class="row">
                                                                <div class="col-lg-4"></div>
                                                                <div class="col-lg-8">
                                                                    <button id="btnIngresar" onserverclick="btnIngresar_ServerClick" type="button" class="button button-primary button-ujarak" style="width: 100%" runat="server">Ingresar</button>
                                                                    <asp:Label Text="" ID="lblErrorIngresar" ForeColor="Red" runat="server" />
                                                                </div>
                                                            </div>
                                                            <dx:ASPxLabel ID="lblError" runat="server" Text="" ForeColor="Red"></dx:ASPxLabel>
                                                        </div>
                                                    </div>


                                                </div>
                                            </li>
                                            <!-- END: SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->

                                        </ul>
                                    </div>

                                    <div class="card-footer clearfix" style=" border-bottom-right-radius: 5px; border-bottom-left-radius: 5px">
                                        <h3 class="card-title">
                                            <br />
                                        </h3>
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
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.row (main row) -->
        </div>

        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <!-- ./wrapper -->

    <script>

        setInterval(function () {
            $('#Error').hide();
        }, 5000);

    </script>

</body>
</html>

