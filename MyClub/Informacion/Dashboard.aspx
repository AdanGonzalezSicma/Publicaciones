<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Sistema_web.Informacion.Dashboard" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%=CargarTema() %>
    <style>
        @media screen and (min-width: 600px) {
            #Vmovil {
                display: none;
            }
        }
    </style>
    <script>
        function cargarReporte() {
            LoadingPanel.Show();
        }
         window.onload = function active() {
            var act = document.getElementById("dash");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
             }
             var act2 = document.getElementById("label1");
            if (act2.className.match("tab1")) {
                act2.className ="tab active";
            } else {
                act2.remove.className("active");
            }
    
        }
    </script>
    <%--<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>--%>
    
    <dx:aspxloadingpanel id="LoadingPanel" runat="server" clientinstancename="LoadingPanel" modal="True" text="Generando reporte"></dx:aspxloadingpanel>
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 col-lg-10 col-md-6">
                    <h3 class="m-0" style="padding: 15px"><b>Dashboard</b></h3>
                </div>
                <div class="col-sm-12 col-lg-2 col-md-6">
                    <asp:LinkButton ID="btnReporte" runat="server" OnClientClick="cargarReporte()" class=" d-sm-inline-block btn btn-sm btn-primary shadow-sm" Style="margin: 15px; border: none" OnClick="btnReporte_Click"><i class="fas fa-download fa-sm text-white-50"></i>Generar Reporte</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="container-fluid">

   
    <div class="row">
        <div class="col-lg-2 col-md-3 col-sm-12"></div>
        <div class="col-lg-4 col-md-3 col-sm-12" style="margin-bottom: 10px">
            <label for="sel1"><b style="color: #424242">Filtrar por Año:</b></label>
            <asp:DropDownList ID="ddlDesdeAnio" runat="server" class="form-control">
                <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                <asp:ListItem Selected="True" Text="2023" Value="2023"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-lg-4 col-md-3 col-sm-12" style="margin-bottom: 10px">
            <div class="form-group">
                <label for="sel1"><b style="color: #424242">Filtrar por Mes:</b></label>
                <asp:DropDownList ID="ddlDesdeMes" runat="server" class="form-control">
                    <asp:ListItem Selected="False" Text="Enero" Value="1"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Febrero" Value="2"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Marzo" Value="3"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Abril" Value="4"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Mayo" Value="5"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Junio" Value="6"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Julio" Value="7"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Agosto" Value="8"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Septiembre" Value="9"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Octubre" Value="10"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Noviembre" Value="11"></asp:ListItem>
                    <asp:ListItem Selected="False" Text="Diciembre" Value="12"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-2 col-md-3 col-sm-12" style="margin-top: 5px">
            <div class="form-group">
                <label for="sel1"></label>
                <div class="input-group-append">
                    <button class="btn  btn-primary" type="submit" style="/*background-color: #0090bf; border: #2e3192; */ width: 100%; border: none"><i class="fa fa-filter" aria-hidden="true"></i>Filtrar</button>
                </div>
            </div>
        </div>

    </div>
    <br />
    <div class="row" runat="server" id="divUsuarioNormal">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Centros de Entrenamiento</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblCentrosEntrenamientoNormal" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-building fa-2x text-gray-300"></i>


                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Total de Alumnos</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblTotalAlumnosNormal" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user-friends  fa-2x text-gray-300"></i>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Alumnos con Membrecías</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblAlumnosMembreciasNormal" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-id-card-alt fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Personalizados Activos</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblEntrenamientosPersonalizadosNormal" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div class="col-auto">

                            <i class="fas fa-dumbbell fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Eventos Totales</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblEventosTotalesNormal" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar-alt fa-2x text-gray-300"></i>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" runat="server" id="divUsuarioAdministrador">
        <div class="col-lg-3 col-md-12 col-sm-12">
            <div class="card shadow-sm" style="border-left: 5px solid #0090bf">

                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Centros de entrenamiento</div>
                            <asp:Label ID="lblCentrosEntrenamiento" runat="server" Text="0" class="h5 mb-0 font-weight-bold text-gray-800"></asp:Label>
                            <br id="Vmovil" />
                            <br id="Vmovil" />
                        </div>
                        <div class="col-lg-6  col-md-12 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Total de alumnos</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblTotalAlumnos" runat="server" Text="0"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>

                    </div>
                    <hr />
                    <div class="row">

                        <div class="col-lg-6  col-md-12 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Académia activos</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblAlumnosMembrecias" runat="server" Text="0"></asp:Label>
                            </div>
                        </div>
                        <div class="col-lg-6  col-md-12 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Personalizados activos</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblEntrenamientosPersonalizados" runat="server" Text="0"></asp:Label>
                                <br id="Vmovil" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card shadow-sm" style="border-left: 5px solid #f7aa00">
                <div class="card-body">
                    <div class="text-xs font-weight-bold text-primary  mb-1">Total de Eventos</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                        <asp:Label ID="lblTotalEventos" runat="server" Text="0"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12 col-sm-12">
            <div class="card shadow-sm" style="border-left: 5px solid #0090bf">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Académias del mes (Cargos)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblMembreciasMesCargos" runat="server" Text="0" class="text-sm  font-weight-bold text-gray-800"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Membresías del mes (Pagos)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblMembreciasMesPagos" runat="server" Text="0" class="text-sm  font-weight-bold text-gray-800"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Membresías del mes (Saldos)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblMembreciasMesDiferencia" runat="server" Text="0" class="text-sm  font-weight-bold text-gray-800"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Personalizados del Mes (Cargos)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblPersonalizadosMesCargos" runat="server" Text="0"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary mb-1">Personalizados del Mes (Pagos)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblPersonalizadosMesPagos" runat="server" Text="0"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Personalizados del Mes (Diferencia)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblPersonalizadosMesDiferencia" runat="server" Text="0"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Otros Ingresos del Mes (Cargos)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblOtrosIngresosMesCargos" runat="server" Text="0"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Otros Ingresos del Mes (Pagos)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblOtrosIngresosMesPagos" runat="server" Text="0"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="text-xs font-weight-bold text-primary  mb-1">Otros Ingresos del Mes (Diferencia)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:Label ID="lblOtrosIngresosMesDiferencia" runat="server" Text="0"></asp:Label>
                                <br id="Vmovil" />
                                <br id="Vmovil" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-12 col-sm-12">
            <div class="card shadow-sm" style="border-left: 5px solid red">
                <div class="card-body">
                    <div class="text-xs font-weight-bold text-primary  mb-1" title="Total de los Cargos del año, hasta el mes seleccionado">Cargos totales del ejercicio</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                        <asp:Label ID="lblIngresostotalesejercicio" runat="server" Text="$0"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="card shadow-sm" style="border-left: 5px solid #f7aa00">
                <div class="card-body">
                    <div class="text-xs font-weight-bold text-primary  mb-1">Abonos Totales del Ejercicio</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                        <asp:Label ID="lblTotalingresosMes" runat="server" Text="$0"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="card shadow-sm" style="border-left: 5px solid #6a037a">
                <div class="card-body">
                    <div class="text-xs font-weight-bold text-primary  mb-1" title="Ingresos totales del ejercicio entre la cantidad de meses de la búesqueda">Ingreso Mensual Promedio</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                        <asp:Label ID="lblIngresimensualpromedio" runat="server" Text="$0"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    </div>
    <div class="row">
        <div class="col-sm-12 col-lg-4">
            <div class="card shadow-sm mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between headergraph">
                    <h6 class="m-0 font-weight-bold text-primary"><a style="color: white">Ingreso de Alumnos Anuales (ene-dic)</a></h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-pie pt-4 pb-2">
                        <canvas id="BarChartComparaAlumnosAnuales"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-am-12 col-lg-4">
            <div class="card shadow-sm mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between headergraph">
                    <h6 class="m-0 font-weight-bold text-primary"><a style="color: white">Estadístico de Cargos (ene-dic)</a></h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-pie pt-4 pb-2">
                        <canvas id="BarChartComparaCargos"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-lg-4">
            <div class="card shadow-sm mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between headergraph">
                    <h6 class="m-0 font-weight-bold text-primary"><a style="color: white">Estadístico de Ingresos (ene-dic)</a></h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-pie pt-4 pb-2">
                        <canvas id="BarChartComparaIngresos"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
    </div>
    <div class="row">
    </div>
    <script src="/Content/vendor/chart.js/Chart.min.js"></script>

    <%=GenerarGraficas() %>
      <br />
     <br />
    <br /> </div>
</asp:Content>
