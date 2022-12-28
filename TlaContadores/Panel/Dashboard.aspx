<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CreandoProductividad.Panel.Dashboard" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script>
      
        window.onload = function active() {
            var act = document.getElementById("res");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
            var act2 = document.getElementById("resultados");
           
            if (act2.className.match("menum")) {
                act2.className = "menum active";
                 document.getElementById("radio-0").checked = true;
            } else {
                act2.remove.className("active");
                  document.getElementById("radio-0").checked = false;
            }
    
        }
 
</script>
    <style>
        .question {
            height: 25px;
            width: 25px;
            background: #ccc;
            font-size: 20px;
            line-height: 25px;
            text-align: center;
            border-radius: 50%;
            cursor: pointer;
        }
    </style>
      <dx:ASPxLoadingPanel ID="LoadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="LoadingPanel" Modal="true" runat="server" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
   
    <script src="/Content/vendor/chart.js/Chart.min.js"></script>
    <script>

        function Abrir() {
            callbackObservaciones.PerformCallback();
        }
        function distractor() {
            LoadingPanel.Show();
        }
        function AbrirModal() {
            popupAvisoGuias.Show();
        }
        function CerrarAvisoGuias() {
            popupAvisoGuias.Hide();
        }
    </script>


    <style>
        @media screen and (max-width: 600px) {
            .padding {
                padding-bottom: 10px !important;
            }
        }
    </style>
    
    <div class="content-header" style="background-color: #f7f8fb">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 frecuenciaTitle">
                    <br />
                    <h1 class="m-0 text-center frecuenciaFont" style="text-shadow: 1px 2px navy; font-size: 30px; font-weight:600">Resultados de la aplicación por frecuencia</h1>
                    <br />
                </div>
                <div class="col-sm-6" style="margin-top: 5px">
                    <a href="/manual-usuario/Cuestionarios/Resultados.html#resultados" class="btn btn-primary" data-toggle="tooltip" title="Más información"><i class="fas fa-question-circle" style="color: white; font-size: 25px"></i></a>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio
                        </a></li>
                        <li class="breadcrumb-item active">Gráficas
                            <%--<div class="question">?</div>--%>
                        </li>
                    </ol>
                </div>

            </div>
        </div>
    </div>

    <section class="content" style="background-color: #f7f8fb">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-7 col-md-12 col-sm-12" style="padding-bottom:10px">
                   
                            <div class="row">
                                <div class="col-xl-12 col-lg-12">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6"  style="padding-bottom:10px">
                                            <div class="card <%--shadow--%>">
                                                 <div class="card-header">
                           Evaluaciones
                       </div>
                                                <!-- Card Body -->
                                                <div class="card-body">
                                                    <div class="chart-pie">
                                                        <canvas id="myPieChart"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-xl-6 col-lg-6 col-md-6">
                                            <div class="row" >
                                                <div class="col-lg-12" style="padding-bottom:10px">
                                                    <div class="card border-left-info <%--shadow--%> h-100 py-2" title="Encuestas totales">
                                                        <div class="card-body">
                                                            <div class="row no-gutters align-items-center">
                                                                <div class="col mr-2">
                                                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                                        Encuestas totales
                                                                    </div>
                                                                    <div class="row no-gutters align-items-center">
                                                                        <div class="col-auto">
                                                                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                                                <asp:Label ID="lblTotalEncuestas" runat="server" Text="0"></asp:Label></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-auto">
                                                                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                            <div class="row">
                                                  <div class="col-lg-12" style="padding-bottom:10px">
                                                      <div class="card border-left-info <%--shadow--%> h-100 py-2" title="Encuestas iniciadas correctamente">
                                                          <div class="card-body">
                                                              <div class="row no-gutters align-items-center">
                                                                  <div class="col mr-2">
                                                                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                                         Encuestas iniciadas
                                                                      </div>
                                                                      <div class="row no-gutters align-items-center">
                                                                          <div class="col-auto">
                                                                              <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                                                  <asp:Label ID="lblEncuestasIniciadas" runat="server" Text="0"> </asp:Label></div>
                                                                          </div>
                                                                      </div>
                                                                  </div>
                                                                  <div class="col-auto">
                                                                      <i class="fas fa-edit fa-2x text-gray-300"></i>
                                                                  </div>
                                                              </div>
                                                          </div>
                                                      </div>
                                                  </div>
                                            </div>
                                            <div class="row">
                                                  <div class="col-lg-12" >
                                                      <div class="card border-left-info <%--shadow--%> h-100 py-2" title="Encuestas terminadas correctamente">
                                                          <div class="card-body">
                                                              <div class="row no-gutters align-items-center">
                                                                  <div class="col mr-2">
                                                                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                                          Encuestas terminadas
                                                                      </div>
                                                                      <div class="row no-gutters align-items-center">
                                                                          <div class="col-auto">
                                                                              <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                                                  <asp:Label ID="lblEncuestasTerminadas" runat="server" Text="0"></asp:Label></div>
                                                                          </div>
                                                                      </div>
                                                                  </div>
                                                                  <div class="col-auto">
                                                                      <i class="fas fa-check-circle fa-2x text-gray-300"></i>
                                                                  </div>
                                                              </div>
                                                          </div>
                                                      </div>
                                                  </div>
                                            </div>
                                          
                                        </div>
                                    </div>


                                </div>
                            </div>
                    
                </div>
                <div class="col-lg-5 col-md-12 col-sm-12 " style="height: 100%">
                    <div class="row">
                        <div class="col-lg-6 col-md-12" style="padding-bottom:10px">
                            <div class="card border-left-primary <%--shadow--%> py-2" style="height:100%" title="Número de centros de trabajo dentro de la empresa">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Número de centros de trabajo
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <asp:Label ID="lblNumCentrosTrabajo" runat="server" Text="0"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-building fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12" style="padding-bottom:10px">
                            <div class="card border-left-warning <%--shadow--%> py-2" style="height: 100%" title="Número de departamentos dentro de la empresa">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Número de departamentos
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <asp:Label ID="lblDepartamentos" runat="server" Text="0"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-sitemap fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-12" style="padding-bottom:10px">
                            <div class="card border-left-success <%--shadow--%> py-2" style="height: 100%" title="Número de empleados a los que se les aplicarán las encuestas">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Total empleados
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                        <asp:Label ID="lblTotalEmpleados" runat="server" Text="0"></asp:Label></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12" style="padding-bottom:10px">
                            <div class="card border-left-danger <%--shadow--%> py-2" style="height: 100%" title="Acontecimientos traumáticos severos en un rango de 30 días">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                Acontecimientos traumáticos
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <asp:Label ID="lvlEventos" runat="server" Text="0"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                           
                                            <i class="fas fa-exclamation-triangle fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                         <div class="row">
                        <div class="col-lg-6 col-md-12" style="padding-bottom:10px">
                            <div class="card border-left-info <%--shadow--%> py-2" style="height: 100%" title="Constancias DC-3 emitidas">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                               Constacias DC-3
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                        <asp:Label ID="lblConstanciaDC3" runat="server" Text="Label"></asp:Label></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-file-invoice fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12" style="padding-bottom:10px">
                            <div class="card border-left-secondary <%--shadow--%> py-2" style="height: 100%" title="Observaciones tomadas del reporte general">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">
                                                Observaciones
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <asp:Label ID="lblObservaciones" runat="server" Text="0"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-eye fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            </div>
              <br />
          
            <div class="row text-center">

                <div class="col-12 col-lg-4 col-md-4 col-sm-12 padding">
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
                      title="Centros de trabajo dentro de la empresa"
                       font-weight="700"
                        ForeColor="#5a5c69"
                        Font-Bold="false" ValueType="System.Int32" CssClass="form-control">
                    </dx:ASPxComboBox>
                    <asp:SqlDataSource ID="SqlDSUnidad" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDUnidadEvaluar], [NombreUnidad] FROM [CatNOMUnidadesEvaluar] WHERE ([idEmpresa] = @idEmpresa) UNION SELECT  0, 'Todos los centros de trabajo' AS name">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="idEmpresa" Type="Int32"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-12 col-lg-4 col-md-4 col-sm-12 padding">
                    <dx:ASPxComboBox
                        ID="ddlArea"
                        Height="100%"
                        ValueField="OIDDepartamento"
                        TextField="Departamento" NullText="Todas las áreas"
                        Width="100%"
                        runat="server"
                      title="Departamentos dentro de la empresa"
                         font-weight="700"
                        ForeColor="#5a5c69"
                       Font-Bold="false"
                        DataSourceID="SqlDSAreas" CssClass="form-control">
                    </dx:ASPxComboBox>
                    <asp:SqlDataSource runat="server" ID="SqlDSAreas" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDDepartamento], [Departamento] FROM [CatNomDepartamento] WHERE ([OIDEmpresa] = @OIDEmpresa) UNION SELECT  0, 'Todas las áreas' AS name ORDER BY [Departamento]">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-12 col-lg-2 col-md-2 col-sm-12 padding">
                    <asp:Button ID="btnFiltrar" runat="server" CssClass="btn btn-primary" Text="Filtrar" OnClick="btnFiltrar_Click" OnClientClick="distractor()" Width="100%" Font-Size="18px" ToolTip="Filtra los resultados en baseal centro de trabajo y departamentos" />
                </div>
                <div class="col-12 col-lg-2 col-md-2 col-sm-12 padding">
                    <input type="button" value="Reporte" onclick="AbrirModal()" class="btn btn-primary" style="width: 100%; font-size: 18px" title="Abre una pestaña nueva con el reporte general de resultados." />
                    <%--<asp:Button ID="btnReporte" runat="server" Text="Reporte" OnClientClick="AbrirModal()"  />--%>
                </div>
            </div>
            <br />

      </div>
    </section>
    <div class="container-fluid">
  <div class="row">
        <div class="col-sm-12 frecuenciaTitle">
            <br />
            <h1 class="m-0 text-center frecuenciaFont" style="font-size: 30px;font-weight:600">Resultados de la aplicación por Categoría</h1>
            <br />
        </div>
    </div>
    <br />
    <br />
    <asp:Panel ID="pnlSinCategoria" runat="server" Visible="false">
        <h3 class="text-center">Sin datos para mostrar</h3>
    </asp:Panel>

    <div class="row">
        <%=GraficosCategoria() %>
    </div>
    <div class="row">
        <div class="col-sm-12 frecuenciaTitle">
            <br />
            <h1 class="m-0 text-center frecuenciaFont"  style="font-size: 30px;font-weight:600">Resultados de la aplicación por Dominio</h1>
            <br />
        </div>
    </div>
    <br />
    <br />
    <asp:Panel ID="pnlSinDominios" runat="server" Visible="false">
        <h3 class="text-center">Sin datos para mostrar</h3>
    </asp:Panel>
    <div class="row">
        <%=GraficosDominio() %>
    </div>
    <div class="row">
        <div class="col-sm-12 frecuenciaTitle">
            <br />
            <h1 class="m-0 text-center frecuenciaFont"  style="font-size: 30px;font-weight:600">Resultados de la aplicación por Dimensión</h1>
            <br />
        </div>
    </div>
    <br />
    <br />
    <asp:Panel ID="pnlSinDimension" runat="server" Visible="false">
        <h3 class="text-center" style="text-align: center; vertical-align: middle; line-height: normal">Sin datos para mostrar</h3>
    </asp:Panel>
    <%=TablaDimensiones() %>
    </div>
  

    <%--<dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel"
        Modal="True">
    </dx:ASPxLoadingPanel>--%>
    <asp:SqlDataSource ID="SqlDSResultadosCategoria1" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spResultadosCategorias1" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="IDEmpresaConsulta" SessionField="OIDEmpresaLogeada" Type="Int32" />
            <asp:Parameter Name="IDGuia" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <%=CargarJavascriptCategorias() %>
    <%=CargarJavascriptDominios() %>
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
        <HeaderStyle BackColor="#045FAC" Font-Bold="False" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div>
                    <asp:HiddenField ID="HiddenTit" runat="server" />
                    <asp:HiddenField ID="HiddenOID" runat="server" />
                </div>
                <div class="text-left">
                    <h5>
                        
                            <label id="lblTitulo"></label>
                        

                    </h5>
                </div>

                <p style="font-size: 15px">Ingrese la observación de este gráfico:</p>




                <dx:ASPxCallbackPanel ID="callbackObservaciones" ClientInstanceName="callbackObservaciones" runat="server" OnCallback="callbackObservaciones_Callback">
                    <PanelCollection>
                        <dx:PanelContent>

                            <asp:TextBox ID="txtObservaciones" TextMode="MultiLine" Rows="4" runat="server" Width="100%"  Style="resize: none" CssClass="form-control"></asp:TextBox>
                            <br />

                        </dx:PanelContent>
                    </PanelCollection>

                </dx:ASPxCallbackPanel>
                <div class="text-right">

                    <%--<asp:Button Text="Aceptar" runat="server" ID="btnAceptarPopUP" CssClass="btn btn-danger" BackColor="#000080" ForeColor="white" BorderColor="#000080" BorderStyle="Solid" BorderWidth="2px" OnClick="btnAceptarPopUP_Click" OnClientClick="function (s, e) { popupGraficas.Hide(); }" Width="100px" Style="padding: 6px 13px 4px!important" />--%>
  <dx:ASPxButton ID="btnCancelar" runat="server" Text="Cancelar" AutoPostBack="false"  CssClass="btn btn-danger" Width="100px" BackColor="#FF3547">
                        <ClientSideEvents Click="function (s, e) { popupGraficas.Hide(); }" />
                        
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnAceptarPop" OnClick="btnAceptarPop_Click" runat="server" Text="Aceptar" AutoPostBack="false"  CssClass="btn btn-primary" Width="100px">
                        <ClientSideEvents Click="function (s, e) { popupGraficas.Hide(); LoadingPanel.Show(); }" />
                       
                    </dx:ASPxButton>

                  
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupAvisoGuias"
        ClientInstanceName="popupAvisoGuias"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="717px" HeaderText="Ventana emergente">
          <SettingsAdaptivity Mode="OnWindowInnerWidth" />
          <HeaderStyle BackColor="#045FAC" Font-Bold="False" ForeColor="White" Border-BorderStyle="None" />
        <HeaderImage IconID="support_info_32x32">
        </HeaderImage>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                  <h5 >Se abrirá una nueva pestaña donde se mostrará el reporte</h5>
               <h5 style="color:red">Nota: si no se muestra, siga las siguientes instrucciones:</h5>
                
                <p style="padding-left:10px">1.- Haz clic en el siguiente ícono que aparece en la barra de dirección. </p>
               <p style="padding-left:10px">2.- Selecciona la opción de permitir siempre ventanas emergentes y redirecciones. </p>
                <div class="text-center">
  <img src="../Content/img/ventana.png" style="width: 50px" />
                </div>

                <div style="text-align: right">
                    <br />
                    <asp:Button ID="btnGuias" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnGuias_Click" OnClientClick="CerrarAvisoGuias()" AutoPostBack="false" BackColor="#045FAC" />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <!-- #region datatables files -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
    <%--<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>--%>
    <!-- #endregion -->
    <!-- Bootstrap core JavaScript-->
    <%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
    <!-- Bootstrap core JavaScript-->
    <%-- <script src="/Content/vendor/jquery/jquery.min.js"></script>--%>
    <script src="/Content/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="/Content/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="/Content/js/sb-admin-2.min.js"></script>
    <!-- Page level plugins -->
    <script src="/Content/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/js/chart-pie-demo.js"></script>
    <%-- <script src="/Content/vendor/datatables/dataTables.bootstrap4.min.js"></script>--%>
    <!-- Page level custom scripts -->
    <%-- <script src="/Content/js/demo/datatables-demo.js"></script>--%>
    <script>
            Chart.pluginService.register({
      beforeDraw: function(chart) {
        if (chart.config.options.elements.center) {
          // Get ctx from string
          var ctx = chart.chart.ctx;

          // Get options from the center object in options
          var centerConfig = chart.config.options.elements.center;
          var fontStyle = centerConfig.fontStyle || 'Arial';
          var txt = centerConfig.text;
          var color = centerConfig.color || '#000';
          var maxFontSize = centerConfig.maxFontSize || 75;
          var sidePadding = centerConfig.sidePadding || 20;
          var sidePaddingCalculated = (sidePadding / 100) * (chart.innerRadius * 2)
          // Start with a base font of 30px
          ctx.font = "30px " + fontStyle;

          // Get the width of the string and also the width of the element minus 10 to give it 5px side padding
          var stringWidth = ctx.measureText(txt).width;
          var elementWidth = (chart.innerRadius * 2) - sidePaddingCalculated;

          // Find out how much the font can grow in width.
          var widthRatio = elementWidth / stringWidth;
          var newFontSize = Math.floor(30 * widthRatio);
          var elementHeight = (chart.innerRadius * 2);

          // Pick a new font size so it will not be larger than the height of label.
          var fontSizeToUse = Math.min(newFontSize, elementHeight, maxFontSize);
          var minFontSize = centerConfig.minFontSize;
          var lineHeight = centerConfig.lineHeight || 25;
          var wrapText = false;

          if (minFontSize === undefined) {
            minFontSize = 20;
          }

          if (minFontSize && fontSizeToUse < minFontSize) {
            fontSizeToUse = minFontSize;
            wrapText = true;
          }

          // Set font settings to draw it correctly.
          ctx.textAlign = 'center';
          ctx.textBaseline = 'middle';
          var centerX = ((chart.chartArea.left + chart.chartArea.right) / 2);
          var centerY = ((chart.chartArea.top + chart.chartArea.bottom) / 2);
          ctx.font = fontSizeToUse + "px " + fontStyle;
          ctx.fillStyle = color;

          if (!wrapText) {
            ctx.fillText(txt, centerX, centerY);
            return;
          }

          var words = txt.split(' ');
          var line = '';
          var lines = [];

          // Break words up into multiple lines if necessary
          for (var n = 0; n < words.length; n++) {
            var testLine = line + words[n] + ' ';
            var metrics = ctx.measureText(testLine);
            var testWidth = metrics.width;
            if (testWidth > elementWidth && n > 0) {
              lines.push(line);
              line = words[n] + ' ';
            } else {
              line = testLine;
            }
          }

          // Move the center up depending on line height and number of lines
          centerY -= (lines.length / 2) * lineHeight;

          for (var n = 0; n < lines.length; n++) {
            ctx.fillText(lines[n], centerX, centerY);
            centerY += lineHeight;
          }
          //Draw text in center
          ctx.fillText(line, centerX, centerY);
        }
      }
            });
        // Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
        var ctx = document.getElementById("myPieChart");
        //http://jsfiddle.net/kdvuxbtj/
    </script>
<%=GraficaPorcentajeAvance() %>
    <br />
    <br />
    <br />   <br />
    <br />
    <br />
</asp:Content>
