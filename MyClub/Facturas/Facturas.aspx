<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Facturas.aspx.cs" Inherits="Sistema_web.Factutas.Facturas" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenCobro" ClientInstanceName="hiddenCobro" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenTipoCobro" ClientInstanceName="hiddenTipoCobro" runat="server"></dx:ASPxHiddenField>
    <script>
        var idDocumento;
        var visibleIndex;
        function onToolbarItemClick(s,e) {
            if (e.item.name == 'documents') {
                visibleIndex = gridFacturas.GetFocusedRowIndex();
                idDocumento = gridFacturas.GetRowKey(visibleIndex);
                hiddenCobro.Set("OIDCobro", idDocumento);
                callbackComprobante.PerformCallback();
                popupDocumentacion.Show();
            }
        }
        function ShowPreviewDocumento(input) {
            if (input.files && input.files[0]) {
                var extension = input.files[0].name.split('.').pop().toLowerCase();
                //var tamanio = input.files[0].size;
                //if (parseInt(tamanio) >= 300000) {
                //    alert('La imagen supera el máximo permitido de 300 kb');
                //    return;
                //}
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    if (extension == 'pdf') {
                        $("#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_iframeDocumento").attr('src', e.target.result);
                        $("#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_iframeDocumento").attr('Width', "100%");
                        $("#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_iframeDocumento").attr('height', '300px');
                        $('#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_imgDocumento').attr('src', '');
                        $('#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_imgDocumento').attr('height', '0');
                        hiddenTipoCobro.Set("TipoCobro", 1);
                    }
                    if (extension == 'jpg' || extension == 'jpeg' || extension == 'png') {
                        $('#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_imgDocumento').attr('src', e.target.result);
                        $('#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_imgDocumento').attr('height', '300px');
                        $("#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_iframeDocumento").attr('height', '0');
                        $("#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_iframeDocumento").attr('Width', '0');
                        $("#ContentPlaceHolder1_popupDocumentacion_callbackComprobante_iframeDocumento").attr('src', '');
                        hiddenTipoCobro.Set("TipoCobro", 2);
                    }
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
        function HidePopup() {
            popupDocumentacion.Hide();
        }
    </script>
     <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Facturas</b></h3>
                   
                </div>

            </div>
        </div>
    </div>
    <br />
    <div class="container-fluid" style="background-color:#f8f9fc">
        <div class="row">
            <div class="col-md-9 col-lg-9 col-sm-12" style="padding-bottom:20px">
                <dx:ASPxGridView ID="gridFacturas" ClientInstanceName="gridFacturas" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSFacturas" KeyFieldName="Oid" Width="100%">
                    <ClientSideEvents ToolbarItemClick="onToolbarItemClick"></ClientSideEvents>

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

                    <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>

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
                        <dx:GridViewDataTextColumn FieldName="Importe" VisibleIndex="7" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Referencia" VisibleIndex="9"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="PagoVerificado" VisibleIndex="10" ReadOnly="True"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="nuevoImporte" ReadOnly="True" VisibleIndex="8" Caption="Importe">
                            <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataHyperLinkColumn FieldName="Link" ReadOnly="True" Caption="Opciones" VisibleIndex="11">
                            <PropertiesHyperLinkEdit Text="PDF"></PropertiesHyperLinkEdit>
                        </dx:GridViewDataHyperLinkColumn>



                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="tooltipFacturas">
                            <Items>
                                <dx:GridViewToolbarItem Name="documents" BeginGroup="True" Text="Subir Comprobante">
                                    <Image UrlChecked="~/Content/iconos/exit.png" UrlDisabled="~/Content/iconos/exit.png" UrlHottracked="~/Content/iconos/exit.png" UrlSelected="~/Content/iconos/exit.png" Height="32px" Width="32px" Url="~/Content/iconos/exit.png"></Image>
                                </dx:GridViewToolbarItem>
                            </Items>
                        </dx:GridViewToolbar>
                    </Toolbars>
                </dx:ASPxGridView>
<asp:SqlDataSource runat="server" ID="SqlDSFacturas" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="select CargosAbonos.[Oid], CargosAbonos.[OidClub], CargosAbonos.[OidMembresiaClub], CargosAbonos.[TipoMovimiento], CargosAbonos.[Fecha], CargosAbonos.[FechaRegistro], CargosAbonos.[Concepto], CargosAbonos.[Importe],
CargosAbonos.[Referencia], CargosAbonos.PagoVerificado,CargosAbonos.Link, 
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
,'#' + CONVERT(varchar,OID) as 'Link'
 FROM [OpeClubCargosAbonos]) as CargosAbonos
 left join
 (select DescuentoAlumnoPorcentaje, DescuentoCuotaPorcentaje, VigenciaDescuentoAlumno, VigenciaDescuentoCuota, OidClub from ClubClubs) as clubs
 on
 cargosabonos.OidClub = clubs.OIDClub
 WHERE CargosAbonos.[OidClub] = @OidClub AND CargosAbonos.[Importe] >0  ORDER BY [Fecha] DESC "><SelectParameters>
<asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub"></asp:SessionParameter>
</SelectParameters>
</asp:SqlDataSource>
</div>
            <div class="col-md-3 col-lg-3 col-sm-12" style="padding-bottom:20px">
                <div class="card shadow-sm">
                   <%-- <div class="card-header">
    Pendientes
  </div>--%>
                    <div class="card-body">
                        <h5 class="card-title text-primary"><b>Saldo Pendiente</b></h5>
                        <p class="card-text">
                            <asp:Label ID="lblSaldoPendienteTotal" runat="server" Text="$0.00" Font-Size="20px"></asp:Label>
                        </p>
                        <asp:Button ID="btnPagar" runat="server" Text="Pagar" class="btn btn-primary btn-black" Style="width: 100%; border:none" OnClick="btnPagar_Click" />
                    </div>
                </div>
            </div>
            <dx:ASPxPopupControl 
                ID="popupDocumentacion" 
                ClientInstanceName="popupDocumentacion" 
                runat="server" 
                PopupHorizontalAlign="WindowCenter" 
                PopupVerticalAlign="WindowCenter" 
                HeaderText="Comprobante de pago" 
                HeaderStyle-BackColor="Navy" width="400px" Height="400px"
                HeaderStyle-ForeColor="White" FooterStyle-BackColor="#FAFAFA" FooterText="footer" ForeColor="Black">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" />
<FooterStyle BackColor="#000000" Border-BorderColor="#000000" Border-BorderStyle="Solid" Border-BorderWidth="1px" VerticalAlign="Bottom">
                <BorderTop BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                </FooterStyle>

<HeaderStyle></HeaderStyle>
                <ContentCollection>
                    <dx:PopupControlContentControl>

                        <div class="card" style="height: 100%; border:none">
                            <div class="card-body">
                                <dx:ASPxCallbackPanel ID="callbackComprobante" ClientInstanceName="callbackComprobante" runat="server" OnCallback="callbackComprobante_Callback">
                                    <PanelCollection>
                                        <dx:PanelContent>
                                        <asp:Label Text="Importe:" runat="server" Font-Bold="True" />
                                        <br />
                                            <br />
                                        <asp:Label Text="Referencia:" runat="server" Font-Bold="True" />
                                            <asp:Image ID="imgDocumento" runat="server" Width="100%" />
                                            <iframe id="iframeDocumento" width="0" height="0" style="border: none;" runat="server"></iframe>
                                        </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxCallbackPanel>
                            </div>
                            <div class="card-footer" style="border:none;background-color:white">
                                <asp:FileUpload ID="uploadComprobante" runat="server" class="form-control" onchange="ShowPreviewDocumento(this)" />
                                <br />
                                <div class="row">
                                    <div class="col-lg-12 text-right">
                                        <asp:Button ID="btnGuardarImagenPdf" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardarImagenPdf_Click" OnClientClick="HidePopup()" />
                                    </div>
                                </div>
                             
                            </div>
                        </div>
                    
                       
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxPopupControl>
        </div>

    </div>
      <br />
     <br />
    <br />
</asp:Content>
