<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosPersonales.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.DatosPersonales" %>

<!DOCTYPE html>

<html style="background-color: #fff;">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TLA Contadores</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../Content/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <%--<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">--%>
    <link href="../css/ionicons.min.css" rel="stylesheet" />
    <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/css/main.min.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.min.css" rel="stylesheet" />

    <link href="../Content/img/icono3-t.png" rel="icon" />
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <form id="form1" runat="server">
        <div class="wrapper" style="background-color: #fff;">
            <div class="content">
                <div class="content-header">
                    <div class="container">
                        <div class="row mb-2">
                            <div class="col-sm-12">
                                <h1 class="m-0 text-dark"></h1>
                            </div>
                            <!-- /.col -->
                        </div>
                        <div class="row ">
                            <div class="col-sm-12">
                                <div class="card-header">
                                    <h3 class="card-title text-center" style="float: none; font-size: 25px"><b>NOM-035-STPS-2018</b>
                                    </h3>
                                </div>
                            </div>
                            <!-- /.col -->
                        </div>
                        <style>
                textarea {
                    border: 1px solid lightgray;
                    width: 100%;
                    resize: none
                }

                    textarea:focus {
                        border: 1px solid #43bfc7;
                        width: 100%
                    }

                input[type="text" i] {
                    border: 1px solid lightgray;
                    width: 100%;
                    height: 50px
                }

                    input[type="text" i]:focus {
                        border: 1px solid #43bfc7;
                        width: 100%
                    }

                @media screen and (max-width: 600px) {
                    #informacion {
                        text-align: center
                    }

                    #btnAnterior {
                        font-size: 12px;
                        width: 100%;
                        margin-right: 2px;
                    }

                    #texto {
                        display: none
                    }

                    #btnSalir {
                        font-size: 12px;
                        width: 100%;
                        margin-right: 2px;
                    }

                    #btnGuardar {
                        font-size: 12px;
                        width: 100%;
                        margin-right: 2px;
                    }
                }

                @media screen and (min-width: 601px) {

                    #btnAnterior {
                        font-size: 1rem;
                        width: 100px;
                        margin-right: 2px;
                    }

                    #btnSalir {
                        font-size: 1rem;
                        width: 100px;
                        margin-right: 2px;
                    }

                    #btnGuardar {
                        font-size: 1rem;
                        width: 100px;
                        margin-right: 2px;
                    }

                    #icon {
                        display: none
                    }
                }
            </style>
                        <%=CargarTema() %>
                        <div class="text-left">
                            <div class="card-body card-titulo">
                                <div class="row">
                                    <div class="col-lg-2 text-center">
                                        <%--<img src="<%= UrlImagen %>" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12); width: 120px; height: 120px" alt="IMAGEN" />--%>
                                    </div>
                                    <div id="informacion" class="col-lg-10">
                                        <%--<h4><b><%= NombreEmpresa %></b></h4>--%>
                                        <%--<h4><b><%= CentroTrabajo %></b></h4>--%>
                                        <h4>Informe de referencia V</h4>
                                        <h4>Datos Laborales</h4>
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
                                <div class="card">
                                    <div class="card-header card-indicaciones">
                                        <h3 class="card-title">
                                            <i class="ion ion-clipboard mr-1"></i>
                                            Indicaciones
                                        </h3>
                                    </div>
                                    <div class="card-body">
                                        <div>
                                        </div>
                                        <ul class="todo-list" data-widget="todo-list">
                                            <li>
                                                <div class="icheck-primary d-inline ml-2">
                                                    <div class="form-group">
                                                        <asp:Label ID="lblError" ForeColor="Red" runat="server" />

                                                        <div id="myForm" class="validar_form">
                                                            <label for="exampleFormControlInput1">
                                                                <input type="hidden" id="5" value="5" />
                                                                Nombre completo:
                                                            </label>
                                                            <br>
                                                            <div class="respuestas">
                                                                <div class="row">
                                                                    <div class="col-sm-12 col-lg-6 col-md-8" style="color: #000080">
                                                                        <asp:TextBox ID="txtNombreCompleto" runat="server" MaxLength="100"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <asp:RequiredFieldValidator ID="reqtxtNombreCompleto" ControlToValidate="txtNombreCompleto" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <br />
                                                            <label for="exampleFormControlInput1">
                                                                <input type="hidden" id="6" value="6" />
                                                                Puesto:
                                                            </label>
                                                            <br>
                                                            <div class="respuestas">
                                                                <div class="row">
                                                                    <div class="col-sm-12 col-lg-6 col-md-8" style="color: #000080">
                                                                        <asp:TextBox ID="txtNombrePuesto" runat="server" MaxLength="50"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <asp:RequiredFieldValidator ID="reqtxtNombrePuesto" ControlToValidate="txtNombrePuesto" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <br />
                                                            <label for="exampleFormControlInput1">
                                                                <input type="hidden" id="6" value="6" />
                                                                CURP:
                                                            </label>
                                                            <br>
                                                            <div class="respuestas">
                                                                <div class="row">
                                                                    <div class="col-sm-12 col-lg-6 col-md-8" style="color: #000080">
                                                                        <asp:TextBox ID="txtCurp" runat="server" MaxLength="13" style="text-transform:uppercase"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <asp:RequiredFieldValidator ID="reqtxtCurp" ControlToValidate="txtCurp" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                            </div>
                                                            <br />
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <input type="hidden" id="Contador" value="10" />
                                        <div class="card-footer clearfix">
                                            <div class="row">
                                                <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center"></div>
                                                <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center"></div>
                                                <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar"  class="btn" OnClick="btnGuardar_Click"/>
                                                </div>
                                            </div>
                                            <asp:Label ID="lblGuardar" Text="Guardar" runat="server" Visible="false" />
                                        </div>
                                </div>
                            </section>
                            <section class="col-lg-5 connectedSortable">
                            </section>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </form>
</body>
</html>
