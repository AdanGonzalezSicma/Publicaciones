<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Facturas-Alumnos.aspx.cs" Inherits="Sistema_web.Facturas.Facturas_Alumnos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenPago" ClientInstanceName="hiddenPago" runat="server"></dx:ASPxHiddenField>
    <script>
         window.onload = function active() {
            var act = document.getElementById("Estadosdecuenta");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
        function OnToolbarItemClick(s,e) {
            if (e.item.name == "btnComprobar") {
                var visibleIndex = gridPagosAlumnos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    hiddenPago.Set("hiddenPago", gridPagosAlumnos.GetRowKey(visibleIndex));
                    popupComprobante.Show();
                }
            }
            if (e.item.name == "btnDescargarComprobante") {
                var visibleIndex = gridPagosAlumnos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                gridPagosAlumnos.GetRowValues(visibleIndex, 'Folio', getGuidTicket);
                    hiddenPago.Set("hiddenPago", gridPagosAlumnos.GetRowKey(visibleIndex));
                    popupComprobante.Show();
                }
            }
            if (e.item.name == "btnImprimir") {
                var visibleIndex = gridPagosAlumnos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    hiddenPago.Set("hiddenPago", gridPagosAlumnos.GetRowKey(visibleIndex));
                    popupImprimir.Show();
                }
            }
            if (e.item.name == "btnEnviarC") {
                var visibleIndex = gridPagosAlumnos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtPara").required = true;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtAsunto").required = true;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtDesdeCuandoCorreo").required = true;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtHastaCuandoCorreo").required = true;
                    hiddenPago.Set("hiddenPago", gridPagosAlumnos.GetRowKey(visibleIndex));

                    popupCorreo.Show();
                }
            }
        }
        function cargarReporte() {
              LoadingPanel.Show();
        setTimeout(ocultarCarga, 2000);
        }
        function cargarReporteCorreo() {
            var validacion = document.getElementById("ContentPlaceHolder1_popupCorreo_txtPara").value;
            if (validacion != "") {
            popupCorreo.Hide();
              LoadingPanel.Show();
        setTimeout(ocultarCargaCorreo, 2000);
            }
        }
        function ocultarCarga() {
                LoadingPanel.Hide();
        }
        function ocultarCargaCorreo() {
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtPara").required = false;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtAsunto").required = false;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtDesdeCuandoCorreo").required = false;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtHastaCuandoCorreo").required = false;
                LoadingPanel.Hide();
        }
        function ocultarpopupcorreo() {
            popupCorreo.Hide();
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtPara").required = false;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtAsunto").required = false;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtDesdeCuandoCorreo").required = false;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtHastaCuandoCorreo").required = false;
        }
        
    
    </script>
    <dx:ASPxGridView ID="gridPagosAlumnos" ClientInstanceName="gridPagosAlumnos" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDPagosAlumnos" KeyFieldName="OIDCargoAbono">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDCargoAbono" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDAlumno" VisibleIndex="4" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="3" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDAlumno" VisibleIndex="5" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Folio" VisibleIndex="6"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="7"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Concepto" VisibleIndex="9" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Importe" VisibleIndex="10" PropertiesTextEdit-DisplayFormatString="c">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TipoMovimiento" VisibleIndex="11" Visible="False"></dx:GridViewDataTextColumn>


            <dx:GridViewDataTextColumn FieldName="alumno" VisibleIndex="12" ReadOnly="True" Caption="Alumno"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Concepto" VisibleIndex="8"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PagoVerificado" VisibleIndex="14"></dx:GridViewDataTextColumn>
            <dx:GridViewDataHyperLinkColumn FieldName="Archivo" Caption="Comprobante" VisibleIndex="13">
                <DataItemTemplate>
                    <asp:LinkButton ID="linkDownloadDoc" runat="server" CommandArgument='<%# Eval("Archivo") %>' Text='' OnClick="linkDownloadDoc_Click"><img src="/Content/images/pdf.png" alt="delete group" /></asp:LinkButton>
                </DataItemTemplate>
            </dx:GridViewDataHyperLinkColumn>

        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right">
                <Items>
                    <dx:GridViewToolbarItem Name="btnComprobar" BeginGroup="True" Text="Subir comprobante" Image-Height="32px">
                        <Image Height="32px" Url="~/Content/Iconos/subir.png" UrlChecked="~/Content/Iconos/subir.png" UrlDisabled="~/Content/Iconos/subir.png" UrlHottracked="~/Content/Iconos/subir.png" UrlSelected="~/Content/Iconos/subir.png" Width="32px"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnImprimir" Text="Imprimir Estado de Cuenta" BeginGroup="True" Image-Height="32px">
                        <Image UrlChecked="~/Content/Iconos/Imprimir.png" UrlDisabled="~/Content/Iconos/Imprimir.png" UrlHottracked="~/Content/Iconos/Imprimir.png" UrlSelected="~/Content/Iconos/Imprimir.png" Height="32px" Width="32px" Url="~/Content/Iconos/Imprimir.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEnviarC" Text="Enviar por correo" BeginGroup="True" Image-Height="32px">
                        <Image UrlChecked="~/Content/Iconos/enviar-por-correo.png" UrlDisabled="~/Content/Iconos/enviar-por-correo.png" UrlHottracked="~/Content/Iconos/enviar-por-correo.png" UrlSelected="~/Content/Iconos/enviar-por-correo.png" Height="32px" Width="32px" Url="~/Content/Iconos/enviar-por-correo.png"></Image>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDPagosAlumnos" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="spMembreciasCargosAbonosAlumnosClub" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
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
                        UploadFolder="~/AlumnosySocios/Comprobantes"
                        GenerateUniqueFileNamePrefix="true"></FileSystemSettings>
                </dx:ASPxUploadControl>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxLoadingPanel ID="LoadingPanel" ClientInstanceName="LoadingPanel" Modal="true" Text="Enviando" runat="server"></dx:ASPxLoadingPanel>


    <dx:ASPxPopupControl ID="popupImprimir" ClientInstanceName="popupImprimir" runat="server" PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Imprimir Estado de Cuenta">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="form-group">
                            <label>Desde:</label>
                            <input type="date" class="form-control" id="fechaD" runat="server">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="form-group">
                            <label>Hasta:</label>
                            <input type="date" class="form-control" id="fechaH" runat="server">
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-12 text-right">

                        <dx:ASPxButton ID="btnImprimir" runat="server" Text="Imprimir" CssClass="btn-primary" Border-BorderStyle="None" OnClick="btnImprimir_Click">
                            <ClientSideEvents Click="cargarReporte" />
                        </dx:ASPxButton>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>


    <dx:ASPxPopupControl ID="popupCorreo" Modal="true"
        CloseOnEscape="true" HeaderText="Enviar por correo"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        ClientInstanceName="popupCorreo" runat="server">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Destinatario</label>
                                <asp:TextBox ID="txtPara" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Con Copia</label>
                                <asp:TextBox ID="txtCC" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Asunto</label>
                                <asp:TextBox ID="txtAsunto" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Desde:</label>
                                <input type="date" class="form-control" id="txtDesdeCuandoCorreo" runat="server">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Hasta:</label>
                                <input type="date" class="form-control" id="txtHastaCuandoCorreo" runat="server">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12 text-right">
                            <dx:ASPxButton ID="btnEnviar" runat="server" Text="Enviar" AutoPostBack="false" Width="100" CssClass="btn-primary" OnClick="btnEnviar_Click">
                                <ClientSideEvents Click="cargarReporteCorreo" />
                            </dx:ASPxButton>
                            <%--<input type="button" value="Confirmar" style="background-color: #FF3547; width:100%;"  class="btn-danger"  onclick="fncConfirmarSuspension()"  runat="server" onserverclick="btnAgregarEditar_Click"/>--%>
                            <dx:ASPxButton ID="btnCancelar" runat="server" Text="Cancelar" AutoPostBack="false" Width="100" CssClass="btn-primary">
                                <ClientSideEvents Click="ocultarpopupcorreo" />
                            </dx:ASPxButton>
                        </div>
                    </div>
                    <br />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
      <br />
     <br />
    <br />
</asp:Content>
