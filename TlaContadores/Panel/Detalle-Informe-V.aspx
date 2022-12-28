<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalle-Informe-V.aspx.cs" Inherits="CreandoProductividad.Panel.Detalle_Informe_V" %>

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
     <style>
        .dxmLite_Material .dxctToolbar_Material.dxm-main.dxmtb {
    background-color: #f4f5f8;
    padding-top: 18px;
    padding-bottom: 18px;
    border-width: 0;
}
        .dxpLite_Material {
            color:white
              }
    </style>
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0"  style="padding-top: 15px;font-weight:600">Detalle Guía V</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item" style="color: white">Resultados</li>
                        <li class="breadcrumb-item active" style="color: white">Detalle Guía V</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />
    <a class="btn btn-primary" data-toggle="tooltip" title="Más información"  href="/manual-usuario/Cuestionarios/reportes.html#DetalleguiaV"><i class="fas fa-question-circle" style="color:white; font-size:25px"></i></a>
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
        <SettingsSearchPanel Visible="True" />

        <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Orden" VisibleIndex="0" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NombreUnidad" VisibleIndex="1" Caption="Centro de trabajo">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Agrupacion" VisibleIndex="2" Caption="Act Principal">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumEncuesta" VisibleIndex="3" Caption="N&#250;m. Encuesta">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Pregunta" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Respuesta" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="7" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaInicio" VisibleIndex="8" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaTermino" VisibleIndex="9" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Guia" VisibleIndex="4" Caption="Gu&#237;a"></dx:GridViewDataTextColumn>
        </Columns>
        <Styles>
            <Header BackColor="#43BFC7" ForeColor="White">
            </Header>
            <PagerBottomPanel BackColor="#43BFC7">
            </PagerBottomPanel>
        </Styles>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDSDetalle" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT        dbo.CatNOMReferencia5Respuestas.Orden, dbo.CatNOMUnidadesEvaluar.NombreUnidad, dbo.CatNOMReferencia5.Agrupacion, dbo.OpeNOMEncuestas.NumEncuesta, 'Guía V' as 'Guia', dbo.CatNOMReferencia5.Descripcion AS Pregunta, 
                         dbo.CatNOMReferencia5Respuestas.Descripcion AS Respuesta, dbo.OpeNOMEncuestas.OIDEmpresa, dbo.OpeNOMEncuestas.FechaInicio, dbo.OpeNOMEncuestas.FechaTermino
FROM            dbo.OpeNOMRespuestasReferencia5 INNER JOIN
                         dbo.CatNOMReferencia5 ON dbo.OpeNOMRespuestasReferencia5.OIDPreguntaRef5 = dbo.CatNOMReferencia5.OIDPregunta INNER JOIN
                         dbo.CatNOMReferencia5Respuestas ON dbo.OpeNOMRespuestasReferencia5.OIDRespuestaRef5 = dbo.CatNOMReferencia5Respuestas.OIDRespuesta INNER JOIN
                         dbo.OpeNOMEncuestas ON dbo.OpeNOMRespuestasReferencia5.OIDEncuesta = dbo.OpeNOMEncuestas.OIDEncuesta INNER JOIN
                         dbo.CatNOMUnidadesEvaluar ON dbo.OpeNOMEncuestas.OIDUnidad = dbo.CatNOMUnidadesEvaluar.OIDUnidadEvaluar
						  Where OIDEmpresa = @OIDEmpresa">
        <SelectParameters>
            <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" />
        </SelectParameters>
    </asp:SqlDataSource>
   <br />
    <br />
    <br />
    <br /><br />
    <br />
</asp:Content>
