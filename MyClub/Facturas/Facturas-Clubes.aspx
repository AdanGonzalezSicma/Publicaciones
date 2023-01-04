<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Facturas-Clubes.aspx.cs" Inherits="Sistema_web.Facturas.Facturas_Clubes" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenPago" ClientInstanceName="hiddenPago" runat="server"></dx:ASPxHiddenField>
    <script>
        function OnToolbarItemClick(s,e) {
            if (e.item.name == "btnComprobar") {
                var visibleIndex = gridFacturasClubes.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    hiddenPago.Set("hiddenPago", gridFacturasClubes.GetRowKey(visibleIndex));
                    popupComprobante.Show();
                }
            }
            if (e.item.name == "btnDescargarComprobante") {
                var visibleIndex = gridFacturasClubes.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                gridFacturasClubes.GetRowValues(visibleIndex, 'Folio', getGuidTicket);
                    hiddenPago.Set("hiddenPago", gridFacturasClubes.GetRowKey(visibleIndex));
                    popupComprobante.Show();
                }
            }
        }
    </script>

    <dx:ASPxGridView ID="gridFacturasClubes" ClientInstanceName="gridFacturasClubes" Width="100%" runat="server" DataSourceID="SqlDSClubes" AutoGenerateColumns="False" KeyFieldName="Oid">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>
        <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <Columns>
            <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidMembresiaClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TipoMovimiento" VisibleIndex="3" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="4"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="5" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Concepto" VisibleIndex="6"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Importe" VisibleIndex="8" Visible="False">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Referencia" VisibleIndex="9"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PagoVerificado" ReadOnly="True" VisibleIndex="10"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="nuevoImporte" ReadOnly="True" VisibleIndex="7" Caption="Importe">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataHyperLinkColumn FieldName="Archivo" ReadOnly="True" VisibleIndex="11">
                <DataItemTemplate>
                    <asp:LinkButton ID="linkDownloadDoc" runat="server" CommandArgument='<%# Eval("Archivo") %>' Text='' OnClick="linkDownloadDoc_Click"><img src="/Content/images/pdf.png" alt="delete group" /></asp:LinkButton>
                </DataItemTemplate>
            </dx:GridViewDataHyperLinkColumn>

        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right">
                <Items>
                    <dx:GridViewToolbarItem Name="btnComprobar" BeginGroup="True" Text="Subir comprobante"></dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnDescargarComprobante" BeginGroup="True" Text="Descargar Comprobante"></dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSClubes" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="select CargosAbonos.[Oid], CargosAbonos.[OidClub], CargosAbonos.[OidMembresiaClub], CargosAbonos.[TipoMovimiento], CargosAbonos.[Fecha], CargosAbonos.[FechaRegistro], CargosAbonos.[Concepto], CargosAbonos.[Importe],
CargosAbonos.[Referencia], CargosAbonos.PagoVerificado,CargosAbonos.Archivo, 
CASE CargosAbonos.[TipoMovimiento]
When 'A' Then CargosAbonos.[Importe]-(CargosAbonos.[Importe]*(clubs.DescuentoAlumnoPorcentaje /100))
When 'C' Then CargosAbonos.[Importe]-(CargosAbonos.[Importe]*(clubs.DescuentoCuotaPorcentaje/100))
END as 'nuevoImporte' from
(SELECT [Oid], [OidClub], [OidMembresiaClub], [TipoMovimiento], [Fecha], [FechaRegistro], [Concepto], [Importe], [Referencia], 
CASE [PagoVerificado]
When 1 Then 'Pagado'
When 0 Then 'Pendiente'
Else 'Pendiente'
END as 'PagoVerificado'
,CASE WHEN Archivo is null then '#' else Archivo end as 'Archivo'
 FROM [OpeClubCargosAbonos]) as CargosAbonos
 left join
 (select DescuentoAlumnoPorcentaje, DescuentoCuotaPorcentaje, VigenciaDescuentoAlumno, VigenciaDescuentoCuota, OidClub from ClubClubs) as clubs
 on
 cargosabonos.OidClub = clubs.OIDClub
 WHERE CargosAbonos.[Importe] >0  ORDER BY [Fecha] DESC "></asp:SqlDataSource>
    <dx:ASPxPopupControl
        ID="popupComprobante"
        ClientInstanceName="popupComprobante"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Comprobante de pago" ShowProgressPanel="True" BrowseButton-Text="Subir comprobante">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <dx:ASPxUploadControl
                    ID="uploadComprobante"
                    UploadStorage="FileSystem"
                    ShowUploadButton="true"
                    ClientInstanceName="uploadComprobante"
                    runat="server"
                    OnGenerateFileNameInStorage="uploadComprobante_GenerateFileNameInStorage"
                    OnFileUploadComplete="uploadComprobante_FileUploadComplete"
                    UploadMode="Standard"
                    Width="280px">
                    <UploadButton Text="Subir comprobante"></UploadButton>
                    <ValidationSettings AllowedFileExtensions=".pdf, .jpg, .jpeg, .png"></ValidationSettings>
                    <FileSystemSettings
                        UploadFolder="~/Facturas/Comprobantes"
                        GenerateUniqueFileNamePrefix="true"></FileSystemSettings>
                </dx:ASPxUploadControl>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
      <br />
     <br />
    <br />
</asp:Content>
