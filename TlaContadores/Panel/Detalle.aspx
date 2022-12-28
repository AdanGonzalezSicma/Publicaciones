<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="CreandoProductividad.Panel.Detalle" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
          window.onload = function active() {
            var act = document.getElementById("enc");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
            var act2 = document.getElementById("Encuestas");
           
            if (act2.className.match("menum")) {
                act2.className = "menum active";
                 document.getElementById("radio-1").checked = true;
            } else {
                act2.remove.className("active");
                  document.getElementById("radio-1").checked = false;
            }
    
        }
    </script>
    <div class="content-header" >
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0"  style="padding-top: 15px;font-weight:600">Resultados a Detalle Guías II y III</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style=" padding-top:15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color:white" >Inicio</a></li>
                        <li class="breadcrumb-item" style="color:white">Resultados</li>
                        <li class="breadcrumb-item active" style="color:white">Detalle Guías II y III</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />
    <a class="btn btn-primary" data-toggle="tooltip" title="Más información" href="/manual-usuario/Cuestionarios/reportes.html#DetalleguiaII"><i class="fas fa-question-circle" style="color:white; font-size:25px"></i></a>
    <br />
    <dx:ASPxGridView ID="gridDetalle" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSDetalle" Width="100%">
<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <SettingsPager NumericButtonCount="20" PageSize="20">
            <PageSizeItemSettings Items="20, 50, 100, 200">
            </PageSizeItemSettings>
        </SettingsPager>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior AllowFocusedRow="True" />
        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
        <SettingsSearchPanel Visible="True"  />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="AllPages" VisibleIndex="0"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="CentroDeTrabajo" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ActPrincipoal" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumEncuesta" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Guia" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Categoria" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Dominio" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Dimension" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Pregunta" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Respuesta" VisibleIndex="9" ReadOnly="True">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Styles>
            <Header BackColor="#43BFC7" ForeColor="White">
            </Header>
        </Styles>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDSDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDEmpresa]
      ,[OIDGuia]
      ,[NombreUnidad] as 'CentroDeTrabajo'
      ,[ActPreponderante] as 'ActPrincipoal'
      ,[NumEncuesta]
      ,[DescGuia] as Guia
      ,[DescCategoria] as Categoria
      ,[DescDominio] as Dominio
      ,[DescDimension] as Dimension
      ,[Evento] as Pregunta
      ,[DescGuia] as 'Guia'
      ,[DescCategoria] as 'Categoria'
      ,[DescDominio] as 'Dominio'
      ,[DescDimension] as 'Dimension'
      ,[Evento] as 'Pregunta'
      ,Case  
		WHEN ValorRespuesta = 'S' THEN 'Si' 
		WHEN ValorRespuesta = 'N' THEN 'No' 
		WHEN ValorRespuesta = 0 THEN 'Nunca' 
		WHEN ValorRespuesta = 3 THEN 'Casi Siempre' 
		WHEN ValorRespuesta = 4 THEN 'Siempre' 
		END as Respuesta
  FROM [NOM035].[dbo].[VistaOpeNOMRespuestas] 
  Where OIDEmpresa = @OIDEmpresa and OIDGuia = 2 or OIDGuia = 3">
        <SelectParameters>
            <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" />
        </SelectParameters>
    </asp:SqlDataSource>

<%--    <dx:ASPxGridView ID="gridResultadosDetalle" ClientInstanceName="gridResultadosDetalle" runat="server" AutoGenerateColumns="False" Width="100%" DataSourceID="SqlDSResultadosDetalle">
        <ClientSideEvents RowDblClick="function(s, e) {
	}" />
<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior AllowFocusedRow="True" />
        <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="2" ColumnCount="2">
    <Items>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="DescEmpresa" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="NombreUnidad">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="ActPreponderante">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="NumEncuesta">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="DescGuia">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="DescCuestionario" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Indicaciones" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="DescCategoria">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="DescDominio">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="DescDimension">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Orden">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Evento">
        </dx:GridViewColumnLayoutItem>
        <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
        </dx:EditModeCommandLayoutItem>
    </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" Visible="False" VisibleIndex="0">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Empresa" FieldName="DescEmpresa" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDUnidadEvaluar" Visible="False" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Unidad" FieldName="NombreUnidad" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDActPreponderante" Visible="False" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ActPreponderante" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="No. Encuesta" FieldName="NumEncuesta" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDGuia" Visible="False" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Guía" FieldName="DescGuia" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDCuestionario" Visible="False" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDCategoria" Visible="False" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Categoria" FieldName="DescCategoria" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDDominio" Visible="False" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Dominio" FieldName="DescDominio" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDDimension" Visible="False" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Dimensión" FieldName="DescDimension" VisibleIndex="18">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Orden" VisibleIndex="19">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDPregunta" Visible="False" VisibleIndex="20">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Evento" VisibleIndex="21">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ValorRespuesta" Visible="False" VisibleIndex="22">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn Caption="Cuestionario" FieldName="DescCuestionario" VisibleIndex="10">
                <PropertiesMemoEdit Rows="5">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="Indicaciones" VisibleIndex="12">
                <PropertiesMemoEdit Rows="5">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDSResultadosDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDEmpresa], [DescEmpresa], [OIDUnidadEvaluar], [NombreUnidad], [OIDActPreponderante], [ActPreponderante], [NumEncuesta], [OIDGuia], [DescGuia], [OIDCuestionario], [DescCuestionario], [Indicaciones], [OIDCategoria], [DescCategoria], [OIDDominio], [DescDominio], [OIDDimension], [DescDimension], [Orden], [OIDPregunta], [Evento], [ValorRespuesta] FROM [VistaOpeNOMRespuestas] WHERE ([OIDEmpresa] = @OIDEmpresa)">
        <SelectParameters>
            <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
     <br />
    <br />
    <br />
    <br /><br />
    <br />
</asp:Content>
