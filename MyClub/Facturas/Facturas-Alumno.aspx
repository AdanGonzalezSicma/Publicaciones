<%@ Page Title="" Language="C#" MasterPageFile="~/Site-Alumnos.Master" AutoEventWireup="true" CodeBehind="Facturas-Alumno.aspx.cs" Inherits="Sistema_web.Facturas.Facturas_Alumno" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenPago" ClientInstanceName="hiddenPago" runat="server"></dx:ASPxHiddenField>
    <script>
        var delayInMilliseconds = 1000; //1 second
        function OnToolbarItemClick(s,e) {
            if (e.item.name == "btnComprobar") {
                var visibleIndex = gridCargosAbonos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    hiddenPago.Set("hiddenPago", gridCargosAbonos.GetRowKey(visibleIndex));
                    popupComprobante.Show();
                }
            }
            if (e.item.name == "btnDescargarComprobante") {
                var visibleIndex = gridCargosAbonos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                gridCargosAbonos.GetRowValues(visibleIndex, 'Folio', getGuidTicket);
                    hiddenPago.Set("hiddenPago", gridCargosAbonos.GetRowKey(visibleIndex));
                    popupComprobante.Show();
                }
            }
            if (e.item.name == "btnImprimir") {
                var visibleIndex = gridCargosAbonos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    hiddenPago.Set("hiddenPago", gridCargosAbonos.GetRowKey(visibleIndex));
                    popupImprimir.Show();
                }
            }
            if (e.item.name == "btnEnviarC") {
                var visibleIndex = gridCargosAbonos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtPara").required = true;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtAsunto").required = true;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtDesdeCuandoCorreo").required = true;
                    document.getElementById("ContentPlaceHolder1_popupCorreo_txtHastaCuandoCorreo").required = true;
                    hiddenPago.Set("hiddenPago", gridCargosAbonos.GetRowKey(visibleIndex));

                    popupCorreo.Show();
                }
            }
        }
         window.onload = function active() {
                //LoadingPanel.Hide();
            var act = document.getElementById("EstadoCuenta");
            if (act.className.match("nav-item")) {
                act.className = "nav-item active";
            } else {
                act.remove.className("active");
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
    <style>
        #pagos{
            background-image:url(/Content/images/MasControlCLUB-logoTransparente.png);
            background-repeat:no-repeat;
            background-position-x:center;
            background-size:80%;
            min-height:600px
            
        }
    </style>
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
    <div class="row">
        <div class="col-lg-8">
   <dx:ASPxGridView ID="gridCargosAbonos" ClientInstanceName="gridCargosAbonos" Width="100%" runat="server" DataSourceID="SqlDSCargosAbonosAlumno" AutoGenerateColumns="False" KeyFieldName="OIDCargoAbono">
        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

       <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

       <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

       <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
       <Columns>
           <dx:GridViewDataTextColumn FieldName="OIDCargoAbono" ReadOnly="True" VisibleIndex="1" Visible="False">
               <EditFormSettings Visible="False"></EditFormSettings>
           </dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="OidAlumno" VisibleIndex="3" Visible="False"></dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="Folio" VisibleIndex="4"></dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="TipoMovimiento" VisibleIndex="5" Visible="False"></dx:GridViewDataTextColumn>
           <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="6"></dx:GridViewDataDateColumn>
           <dx:GridViewDataTextColumn FieldName="Concepto" VisibleIndex="7"></dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="Importe" VisibleIndex="8">
               <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
           </dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="PagpVerificado" Caption="Pago verificado" ReadOnly="True" VisibleIndex="9"></dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="Archivo" Caption="Comprobante" ReadOnly="True" VisibleIndex="10">
               <DataItemTemplate>
                   <asp:LinkButton ID="linkDownloadDoc" runat="server" CommandArgument='<%# Eval("Archivo") %>' Text='' OnClick="linkDownloadDoc_Click"><img src="/Content/images/pdf.png" alt="delete group" /></asp:LinkButton>
               </DataItemTemplate>
           </dx:GridViewDataTextColumn>
           <dx:GridViewDataTextColumn FieldName="TipoCargo" ReadOnly="True" VisibleIndex="11" Visible="False"></dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right"  Name="ToolFact">
                <Items>
                    <dx:GridViewToolbarItem Name="btnComprobar" BeginGroup="True" Text="Subir comprobante" Image-Height="32px">
<Image Height="32px" Url="~/Content/Iconos/subir.png" UrlChecked="~/Content/Iconos/subir.png" UrlDisabled="~/Content/Iconos/subir.png" UrlHottracked="~/Content/Iconos/subir.png" UrlSelected="~/Content/Iconos/subir.png" Width="32px"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnImprimir"  Text="Imprimir Estado de Cuenta" BeginGroup="True" Image-Height="32px">
                        <Image UrlChecked="~/Content/Iconos/Imprimir.png" UrlDisabled="~/Content/Iconos/Imprimir.png" UrlHottracked="~/Content/Iconos/Imprimir.png" UrlSelected="~/Content/Iconos/Imprimir.png" Height="32px" Width="32px" Url="~/Content/Iconos/Imprimir.png"></Image>
                    </dx:GridViewToolbarItem>
                      <dx:GridViewToolbarItem Name="btnEnviarC" Text="Enviar por correo" BeginGroup="True" Image-Height="32px">
                        <Image UrlChecked="~/Content/Iconos/enviar-por-correo.png" UrlDisabled="~/Content/Iconos/enviar-por-correo.png" UrlHottracked="~/Content/Iconos/enviar-por-correo.png" UrlSelected="~/Content/Iconos/enviar-por-correo.png" Height="32px" Width="32px" Url="~/Content/Iconos/enviar-por-correo.png"></Image>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
    </dx:ASPxGridView>
        </div>
        <div class="col-lg-4" id="pagos">
            <br />
            <br /><br />
            
            <div class="card shadow-sm">
                <div class="card-header">Nuevo pago</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4><b>Concepto:</b></h4>
                            <p>Inscripcion - Mensual - Insc P22 - Febrero</p>
                            <p>	Cargo extra Inscripcion - Mensual - Insc P22 - Febrero</p>
                        </div>
                        <div class="col-lg-12">
                            <div class="alert alert-warning">
                                <div class="row">
                                    <div class="col-lg-8">

                                        <asp:RadioButton ID="rbtnTotal" runat="server" ValidationGroup="Pagos" Checked="true" />
                                        Total a pagar:
                            <br />
                                        <%--       <asp:RadioButton ID="rbtnPersonalizado" runat="server" ValidationGroup="Pagos" />
                            Pagar otra cantidad: --%>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:Label ID="lblTotalApagar" runat="server" Text="$0.00"></asp:Label><br />
                                        <%--<asp:TextBox ID="txtTotalPersonalizado" runat="server" Width="100%" class="form-control" Text="$0.00" /><br />--%>
                                    </div>
                                </div>
                             
                            </div>
                        </div>
                       
                        
                    </div>
                </div>
                <div class="card-footer text-right" style="background-color:white; border:none">
                    <asp:Button ID="btnPagar" Text="Aceptar" runat="server" class="btn btn-primary" OnClick="btnPagar_Click" BorderStyle="None" Width="100%"/>
                </div>
            </div>
            <br />
            <br />
          <%--  <div class="text-center col-sm-0">
                <br />
                <br />
                <img src="/Content/images/MasControlCLUB.png" class="imagenL" style="width: 60%" />
            </div>--%>
        </div>
    </div>
    <dx:ASPxLoadingPanel ID="LoadingPanel" ClientInstanceName="LoadingPanel" Modal="true" Text="Enviando" runat="server"></dx:ASPxLoadingPanel>

    <asp:SqlDataSource runat="server" ID="SqlDSCargosAbonosAlumno" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="spMembreciasCargosAbonosAlumnos" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDAlumno" Name="OidMembresiaAlumno" Type="Int32"></asp:SessionParameter>
            <asp:SessionParameter SessionField="OIDClub" Name="oidClubDeportivo" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

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
