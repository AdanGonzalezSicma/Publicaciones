<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="CreandoProductividad.Panel.Resultados" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/fonts/ionicons.min.css" rel="stylesheet" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">                
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawDimensionChart);
        function drawDimensionChart() {
            var data = new google.visualization.arrayToDataTable(<%= CargarGraficaDimensiones() %>);
            var options;
            var chart = new google.visualization.ColumnChart(document.getElementById('chart_Dimension'));
            chart.draw(data, options);
            window.addEventListener('resize', drawDimensionChart, false);
        }
        $(window).resize(function () {
            drawChart();
        });
    </script>
    <style>
        @media screen and (max-width: 1400px) {
.small-box h3{
font-size:20px;
}
.small-box p{
font-size:15px;
}
.small-box{
height:100%
}
} 
    </style>

    <div class="content-header" style="background-color: white">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12" style="background-color: #43bfc7">
                    <br />
                    <h1 class="m-0 text-center" style="color: white; text-shadow: 1px 2px navy; font-size: 30px"><b>Resultados de la aplicación por promedio</b></h1>
                    <br />
                </div>
                <div class="col-sm-6"></div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio
                            </a></li>
                        <li class="breadcrumb-item active">Gráficas</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Main content -->
    <section class="content" style="background-color: white">
        <div class="container-fluid">
            <div class="row">
                <!-- ./Panel Superior -->
                <div class="col-lg-3 col-12">
                    <div class="small-box bg-primary">
                        <div class="inner">
                            <h3>
                                <asp:Label ID="lblNumCentrosTrabajo" runat="server" Text="Label"></asp:Label></h3>
                            <p>Número de centros de trabajo</p>
                        </div>
                        <div class="icon">
                           <i class="fas fa-chart-bar"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-12 ">
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3>
                                <asp:Label ID="lblEncuestasContestadas" runat="server" Text="Label"></asp:Label>
                                de
                                <asp:Label ID="lblEncuestasTotales" runat="server" Text="Label"></asp:Label></h3>

                            <p>Evaluaciones Contestadas</p>
                        </div>
                        <div class="icon">
                           <i class="fas fa-chart-bar"></i>
                        </div>

                    </div>
                </div>
                <asp:Panel ID="pnlRiesgo" runat="server">
                    <div id="divRiesgo" runat="server">
                        <div class="inner">
                            <h3>
                                <asp:Label ID="lblTextoRiesgo" runat="server" Text=""></asp:Label></h3>
                            <p>
                                <asp:Label ID="lblPuntuacion" runat="server" Text=""></asp:Label>
                            </p>
                        </div>
                        <div class="icon">
                           <i class="fas fa-exclamation-circle"></i>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlEventosTraumaticos" runat="server" Visible="false" class="col-lg-3 col-12 ">
                    <div class="small-box bg-danger">
                        <div class="inner">
                            <h3>
                                <asp:Label ID="lvlEventos" runat="server" Text="Label" ></asp:Label></h3>
                            <p>
                                Acontecimientos traúmaticos
                            </p>
                        </div>
                        <div class="icon">
                           <i class="fas fa-exclamation-circle"></i>
                        </div>
                    </div>
                </asp:Panel>
                <!-- ./Panel Superior -->
            </div>
            <br />
            <div class="row text-center">
                <!-- /.Panel de Filtro -->
                <div class="col-12 col-lg-3 col-md-3 col-sm-12"></div>
                <div class="col-12 col-lg-6 col-md-6 col-xl-6">
                    <dx:ASPxComboBox
                        ID="ddlGuia"
                        runat="server"
                        ClientInstanceName="ddlGuia"
                        AutoPostBack="True"
                        OnTextChanged="ddlGuia_TextChanged"
                        ClientSideEvents-TextChanged="function(){LoadingPanel.Show();}"
                        NullText="Seleccionar una Guía" Height="100%"
                        ValueField="OIDGuia"
                        TextField="Nombre"
                        Width="100%" DataSourceID="SqlDSGuia" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid" Border-BorderWidth="2px" Font-Size="Larger" ForeColor="navy" Font-Bold="True">
                    </dx:ASPxComboBox>
                    <asp:SqlDataSource ID="SqlDSGuia" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDGuia], RTRIM([Nombre]) as Nombre FROM [CatNOMEncuestasGuias] WHERE (([Activo] = @Activo) AND ([OIDGuia] &gt; @OIDGuia) AND ([OIDGuia] &lt; @OIDGuia2))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean" />
                            <asp:Parameter DefaultValue="1" Name="OIDGuia" Type="Int64" />
                            <asp:Parameter DefaultValue="4" Name="OIDGuia2" Type="Int64" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <!-- /.Panel de Filtro -->
                <div class="col-12 col-lg-3 col-md-3 col-sm-12"></div>
            </div>
            <br />
            <div class="row  mb-2">
                <div class="col-sm-12" style="background-color: #43bfc7">
                    <br />
                    <h3 style="color: #fff; text-shadow: 1px 2px navy;" class="text-center"><b>Resultados por Categoría</b></h3>
                    <br />
                </div>
            </div>

            <asp:Panel ID="pnlSinCategoria" runat="server" Visible="false">
                <h3 class="text-center">Sin datos para mostrar</h3> 
            </asp:Panel>
            <div class="row text-center" style="background-color: white">
                <!-- Left col -->
                <asp:Panel ID="pnlCategorias" runat="server" class="col-lg-12 col-md-12 col-xl-12 col-12 connectedSortable">
                    <section>
                    </section>
                </asp:Panel>
                <div class="table-responsive-sm  table-responsive-md table-responsive-lg table-responsive-xl col-lg-12 col-md-12 col-12">
                    <br />
                    <br />
                    <%= CargarTableCategorias() %>
                </div>
            </div>
            <!-- Main row -->
             <div class="row  mb-2">
                <div class="col-sm-12" style="background-color: #43bfc7">
                    <br />
                    <h3 style="color: #fff; text-shadow: 1px 2px navy;" class="text-center"><b>Resultados por Dominio</b></h3>
                    <br />
                </div>
            </div>
           
            <asp:Panel ID="pnlSinDominios" runat="server" Visible="false">
                <h3 class="text-center">Sin datos para mostrar</h3> 
            </asp:Panel>
            <br />
            <div class="row text-center" style="align-content:center">
                <asp:Panel ID="pnlDominiosGauge" runat="server" class="col-lg-12 col-md-12 col-xl-12 col-12 connectedSortable">
                    <section>
                    </section>
                </asp:Panel>

                <asp:Panel ID="pnlDominios" runat="server" Width="100%">
                    <div class="table-responsive-sm  table-responsive-md table-responsive-lg table-responsive-xl col-xl-12 col-lg-12 col-md-12 col-12">
                        <%= CargarTableDominios() %>
                    </div>
                </asp:Panel>
                <!-- Main row -->
           
                <div class="col-sm-12" style="background-color: #43bfc7">
                       <asp:Panel ID="pnlResultadosDimension" runat="server" Width="100%" class="text-center" BackColor="#43bfc7">
                    <br />
                    <h3 style="color: #fff; text-shadow: 1px 2px navy;"><b>Resultados por Dimensión</b></h3>
                    <br />
                </asp:Panel>

                </div>
           <br />
                 <div class="col-sm-12">
                    <asp:Panel ID="pnlSinDimension" runat="server" Visible="false" >
                        <h3 class="text-center" style="text-align: center; vertical-align: middle; line-height: normal">Sin datos para mostrar</h3>
                    </asp:Panel>
                </div>
           

                <div id="chart_Dimension" style="width: 100%; height: 500px;"></div>

                <asp:Panel ID="pnlDimensiones" runat="server" Width="100%">
                    <div class="table-responsive-sm  table-responsive-md table-responsive-lg table-responsive-xl col-11 col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <br />
                                <%= CargarTablaDimensiones() %>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </section><!-- LOADING PANEL -->
    <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel"
        Modal="True">
    </dx:ASPxLoadingPanel>
    <asp:SqlDataSource ID="SqlDSResultadosCategoria1" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spResultadosCategorias1" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="IDEmpresaConsulta" SessionField="OIDEmpresaLogeada" Type="Int32" />
            <asp:Parameter Name="IDGuia" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
