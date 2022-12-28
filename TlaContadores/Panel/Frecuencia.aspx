<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Frecuencia.aspx.cs" Inherits="CreandoProductividad.Panel.Frecuencia" %>

<%@ Register Assembly="DevExpress.XtraCharts.v18.1.Web, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxGauges.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGauges" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/fonts/ionicons.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenObservacion" ClientInstanceName="hiddenObservacion" runat="server"></dx:ASPxHiddenField>

    <input type="hidden" name="hiddenTitulo" id="hiddenTitulo" value="" />
    <!-- DISTRACTOR CARGANDO -->
    <dx:ASPxLoadingPanel ID="ASPxLoadingPanel1" runat="server" ClientInstanceName="LoadingPanel" Modal="True"></dx:ASPxLoadingPanel>

    
    <script type="text/javascript">    
        function distractor() {
            LoadingPanel.Show();
        }
        google.charts.load('current', { 'packages': ['corechart'] });

        <%=CargarGoogleCategoria()%>
        <%=CargarGoogleDominios()%>
        //google.charts.setOnLoadCallback(drawDimensionChart);
        //function drawDimensionChart() {
        //    var data = new google.visualization.arrayToDataTable([['Dominios', 'Puntuacion', { role: 'annotation' },{ role: "style" } ], ['Prueba1',5,5,"#b87333"],['Prueba2',1,1,"Red"],['Prueba3',15,15,"Blue"],['Prueba4',10,10,"Gold"]]);
        //    var options = {
        //        title: "Ambiente de trabajo",legend: { position: "none" }
        //    };
        //    var chart = new google.visualization.ColumnChart(document.getElementById('chart_Dimension'));
        //    chart.draw(data, options);
        //    window.addEventListener('resize', drawDimensionChart, false);
        //}

        function Abrir() {
            callbackObservaciones.PerformCallback();
        }
   
      



    </script>
    <style>
        @media screen and (max-width: 1400px) {
            .small-box h3 {
                font-size: 20px;
            }

            .small-box p {
                font-size: 17px;
            }

            .small-box {
                height: 100% !important;
                margin-bottom: 0px !important
            }
        }

        text {
            fill: navy;
        }

        .btn-danger {
            border-radius: 0.35rem
        }
        
        h1{
            font-size: 30px
        }
        @media screen and (max-width: 600px) {
   h1{
       font-size:18px
   }
    .small-box h3 {
                font-size: 18px!important;
            }
      .small-box p {
                font-size: 14px;
            }
      h3{
            font-size: 18px!important;
      }
  
}
    </style>
    <div class="content-header" style="background-color: white">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 frecuenciaTitle">
                    <br />
                    <h1 class="m-0 text-center frecuenciaFont" style="text-shadow: 1px 2px navy"><b>Resultados de la aplicación por frecuencia</b></h1>
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
    <section class="content" style="background-color: white">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-12">
                    <div class="small-box bg-primary" style="height: 80%!important">
                        <div class="inner">
                            <h3>
                                <asp:Label ID="lblNumCentrosTrabajo" runat="server" Text="0"></asp:Label></h3>
                            <p>Número de centros de trabajo</p>

                        </div>
                        <div class="icon">
                            <i class="fas fa-chart-bar"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-12 ">
                    <div class="small-box bg-warning" style="height: 80%!important">
                        <div class="inner">
                            <h3>Evaluaciones </h3>
                            <p style="font-size: 13px">
                                <b>Totales: </b>
                                <asp:Label ID="lblTotalEmpleados" runat="server" Text="0"></asp:Label>, 
                                <b>Iniciadas:</b>
                                <asp:Label ID="lblEncuestasIniciadas" runat="server" Text="0"> </asp:Label>,
                                <b>Terminadas:</b>
                                <asp:Label ID="lblEncuestasTerminadas" runat="server" Text="0"></asp:Label>,
                                <b>Pendientes:</b>
                                <asp:Label ID="lblEncuestasPendientes" runat="server" Text="0"> </asp:Label>
                                <br />
                                <b>Pendientes: GUIA I:</b>
                                <asp:Label ID="lblEncuestasPendientesGuiaI" runat="server" Text="0"> </asp:Label>,
                                <b>GUIA II/III:</b>
                                <asp:Label ID="lblEncuestasPendientesGuía2y3" runat="server" Text="0"> </asp:Label>,
                                <b>GUIA V:</b>
                                <asp:Label ID="lblEncuestasPendientesGuia5" runat="server" Text="0"> </asp:Label>
                                <%--<asp:Label ID="lblEncuestasTotales" runat="server" Text="Label"></asp:Label> Faltantes--%>
                                <%--Contestadas: <asp:Label ID="lblEncuestasContestadas" runat="server" Text="Label"></asp:Label>--%>
                            </p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-chart-bar"></i>
                        </div>

                    </div>
                </div>

                <asp:Panel ID="pnlRiesgo" runat="server">
                    <div id="divRiesgo" runat="server" style="height: 80%!important">
                        <div class="inner">
                            <h3>
                                <asp:Label ID="lblTextoRiesgo" runat="server" Text=""></asp:Label></h3>
                            <p><asp:Label ID="lblPuntuacionGuiaII" runat="server" Text=""></asp:Label><br />
                            <asp:Label ID="lblPuntuacionGuiaIII" runat="server" Text=""></asp:Label></p>
                        </div>
                        <div id="divIconRiesgo" runat="server" class="icon">
                            <i class="fas fa-exclamation-circle"></i>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="pnlEventosTraumaticos" runat="server" class="col-lg-3 col-12">
                    <div id="divEventosTraumaticos" runat="server" style="height: 80%!important">
                        <div class="inner">
                            <h3>
                                <asp:Label ID="lvlEventos" runat="server" Text="0"></asp:Label></h3>
                            <p>
                                Acontecimientos traúmaticos
                            </p>
                        </div>
                        <div id="divIconEventos" runat="server" class="icon">
                            <i class="fas fa-exclamation-circle"></i>
                        </div>
                    </div>
                </asp:Panel>
            </div>
            <br />
            <div class="row text-center">

                <div class="col-12 col-lg-4 col-md-4 col-sm-12">
                    <dx:ASPxComboBox
                        ID="ddlGuia"
                        runat="server"
                        ClientInstanceName="ddlGuia"
                        NullText="Todos los centros de trabajo"
                        Height="100%"
                        ValueField="OIDUnidadEvaluar"
                        TextField="NombreUnidad"
                        Width="100%"
                        DataSourceID="SqlDSUnidad"
                        Border-BorderColor="#424242"
                        Border-BorderStyle="Solid"
                        Border-BorderWidth="2px"
                        Font-Size="Larger"
                        ForeColor="Navy"
                        Font-Bold="True" ValueType="System.Int32">
                    </dx:ASPxComboBox>
                    <asp:SqlDataSource ID="SqlDSUnidad" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDUnidadEvaluar], [NombreUnidad] FROM [CatNOMUnidadesEvaluar] WHERE ([idEmpresa] = @idEmpresa) UNION SELECT  0, 'Todos los centros de trabajo' AS name">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="idEmpresa" Type="Int32"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

                <div class="col-12 col-lg-4 col-md-4 col-sm-12">
                    <dx:ASPxComboBox
                        ID="ddlArea"
                        Height="100%"
                        ValueField="OIDDepartamento"
                        TextField="Departamento" NullText="Todas las áreas"
                        Width="100%"
                        runat="server"
                        Border-BorderColor="#424242"
                        Border-BorderStyle="Solid"
                        Border-BorderWidth="2px"
                        Font-Size="Larger"
                        ForeColor="Navy"
                        Font-Bold="True"
                        DataSourceID="SqlDSAreas">
                    </dx:ASPxComboBox>
                    <asp:SqlDataSource runat="server" ID="SqlDSAreas" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDDepartamento], [Departamento] FROM [CatNomDepartamento] WHERE ([OIDEmpresa] = @OIDEmpresa) UNION SELECT  0, 'Todas las áreas' AS name ORDER BY [Departamento]">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-12 col-lg-2 col-md-2 col-sm-12">
                    <asp:Button ID="btnFiltrar" runat="server" CssClass="btn btn-primary" Text="Filtrar" OnClick="btnFiltrar_Click" OnClientClick="distractor()" Width="100%" Font-Size="18px" />
                </div>
                <div class="col-12 col-lg-2 col-md-2 col-sm-12">
                    <asp:Button ID="btnReporte" runat="server" Text="Reporte" OnClick="btnReporte_Click" CssClass="btn btn-primary" Width="100%" Font-Size="18px" />
                </div>
            </div>
            <br />
            <br />
            <%--   <button id="btnObservaciones" type="button" class="btn button-primary" onclick="fncPopUPObservaciones()">Observaciones Categoria</button>
            <br />
            <button id="btnObservacionesDominio" type="button" class="btn button-primary" onclick="fncPopUPObservacionesDominio()">Observaciones Dominio</button>
            <br />--%>
            <div class="row  mb-2">
                <div class="col-sm-12 frecuenciaTitle">
                    <br />
                    <h3 class="text-center frecuenciaFont"><b>Resultados por Categoría</b></h3>
                    <br />
                </div>
            </div>
            <asp:Panel ID="pnlSinCategoria" runat="server" Visible="false">
                <h3 class="text-center">Sin datos para mostrar</h3>
            </asp:Panel>
            <div class="row text-center" style="background-color: white">
                <!-- Left col -->
                <%=CargarGraficosCategoria() %>
                <div class="table-responsive-sm  table-responsive-md table-responsive-lg table-responsive-xl col-lg-12 col-md-12 col-12">
                    <br />
                </div>
            </div>
            <div class="row  mb-2">
                <div class="col-sm-12 frecuenciaTitle">
                    <br />
                    <h3 class="text-center frecuenciaFont"><b>Resultados por Dominio</b></h3>
                    <br />
                </div>
            </div>
            <asp:Panel ID="pnlSinDominios" runat="server" Visible="false">
                <h3 class="text-center">Sin datos para mostrar</h3>
            </asp:Panel>
            <br />
            <div class="row text-center" style="align-content: center">
                <%=CargarGraficosDominios() %>
                <!-- Main row -->

                <div class="col-sm-12 frecuenciaTitle">
                    <asp:Panel ID="pnlResultadosDimension" runat="server" Width="100%" class="text-center frecuenciaTitle">
                        <br />
                        <h3 class="text-center frecuenciaFont"><b>Resultados por Dimensión</b></h3>
                        <br />
                    </asp:Panel>

                </div>
                <br />
                <div class="col-sm-12">
                    <br />
                    <asp:Panel ID="pnlDimensiones" runat="server" Width="100%">
                        <%= CargarTablaDimensiones() %>
                    </asp:Panel>

                    <asp:Panel ID="pnlSinDimension" runat="server" Visible="false">
                        <h3 class="text-center" style="text-align: center; vertical-align: middle; line-height: normal">Sin datos para mostrar</h3>
                    </asp:Panel>
                    <br />
                </div>
            </div>
        </div>
    </section>
    <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel"
        Modal="True">
    </dx:ASPxLoadingPanel>
    <asp:SqlDataSource ID="SqlDSResultadosCategoria1" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spResultadosCategorias1" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="IDEmpresaConsulta" SessionField="OIDEmpresaLogeada" Type="Int32" />
            <asp:Parameter Name="IDGuia" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>



    <dx:ASPxPopupControl
        ID="popupGraficas"
        ClientInstanceName="popupGraficas"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Observaciones" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="30%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div>
                    <asp:HiddenField ID="HiddenTit" runat="server" />
                    <asp:HiddenField ID="HiddenOID" runat="server" />
                </div>
                <div class="text-center">
                    <h4>
                        <b>
                            <label id="lblTitulo"></label>
                        </b>

                    </h4>
                </div>

                <p style="font-size: 15px">Ingrese la observación de este gráfico:</p>




                <dx:ASPxCallbackPanel ID="callbackObservaciones" ClientInstanceName="callbackObservaciones" runat="server" OnCallback="callbackObservaciones_Callback">
                    <PanelCollection>
                        <dx:PanelContent>

                            <asp:TextBox ID="txtObservaciones" TextMode="MultiLine" Rows="5" runat="server" Width="100%" BorderStyle="solid" BorderColor="LightGray" BorderWidth="1px" Style="resize: none"></asp:TextBox>

                        </dx:PanelContent>
                    </PanelCollection>

                </dx:ASPxCallbackPanel>
                <div class="text-right">

                    <%--<asp:Button Text="Aceptar" runat="server" ID="btnAceptarPopUP" CssClass="btn btn-danger" BackColor="#000080" ForeColor="white" BorderColor="#000080" BorderStyle="Solid" BorderWidth="2px" OnClick="btnAceptarPopUP_Click" OnClientClick="function (s, e) { popupGraficas.Hide(); }" Width="100px" Style="padding: 6px 13px 4px!important" />--%>

                    <dx:ASPxButton ID="btnAceptarPop" OnClick="btnAceptarPop_Click" runat="server" Text="Aceptar" AutoPostBack="false" BackColor="White" ForeColor="#000080" CssClass="btn-danger" Width="100px">
                        <ClientSideEvents Click="function (s, e) { popupGraficas.Hide(); LoadingPanel.Show(); }" />
                        <Border BorderColor="#000080" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>

                    <dx:ASPxButton ID="btnCancelar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#000080" CssClass="btn-danger" Width="100px">
                        <ClientSideEvents Click="function (s, e) { popupGraficas.Hide(); }" />
                        <Border BorderColor="#000080" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>








</asp:Content>
