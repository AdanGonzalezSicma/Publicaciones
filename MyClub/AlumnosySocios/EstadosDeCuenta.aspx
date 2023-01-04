<%@ Page Title="" Language="C#" MasterPageFile="~/Site-Alumnos.Master" AutoEventWireup="true" CodeBehind="EstadosDeCuenta.aspx.cs" Inherits="Sistema_web.AlumnosySocios.EstadosDeCuenta" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.XtraReports.v18.1.Web.WebForms, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenMonto" ClientInstanceName="hiddenMonto" runat="server"></dx:ASPxHiddenField>
    <script>    
        var visibleIndex;
        var idDocument;
        function OpenComprobante() {
            document.getElementById("ContentPlaceHolder1_popupComprobante_txtFechaComprobante").required = true;
            document.getElementById("ContentPlaceHolder1_popupComprobante_txtConcepto").required = true;
            document.getElementById("ContentPlaceHolder1_popupComprobante_txtImporte").required = true;
            document.getElementById("ContentPlaceHolder1_popupComprobante_txtReferencia").required = true;
            popupComprobante.Show();
        }
        function OpenPagos() {

        }
        function QuitarRequired() {
            document.getElementById("ContentPlaceHolder1_popupComprobante_txtFechaComprobante").required = false;
            document.getElementById("ContentPlaceHolder1_popupComprobante_txtConcepto").required = false;
            document.getElementById("ContentPlaceHolder1_popupComprobante_txtImporte").required = false;
            document.getElementById("ContentPlaceHolder1_popupComprobante_txtReferencia").required = false;
            LoadingSiteMaster.Show();
        }
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
      }
         window.onload = function active() {
            var act = document.getElementById("EstadoCuenta");
            if (act.className.match("nav-item")) {
                act.className = "nav-item active";
            } else { 
                act.remove.className("active");
            }

         }
    </script>
    <style>
        #pagos {
            background-image: url(/Content/images/MasControlCLUB-logoTransparente2.png);
            background-repeat: no-repeat;
            background-position-x: center;
            background-size: 80%;
            min-height: 500px
             }
    
      

        @media screen and (max-width: 760px) {
            .hei {
                margin-top: 20px
            }
        }

        @media screen and (min-width:761px) {
            .hei {
                margin-top: 100px
            }
        }
    </style>
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 col-lg-10 col-md-6">
                    <h3 class="m-0" style="padding: 15px"><b>Estados de Cuenta</b></h3>
                </div>

            </div>
        </div>
    </div>
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8 col-md-6 col-sm-12">
                <%=CargarPDF() %>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12" id="pagos" style="align-content: center;">
                <div class="row" id="divComprobanteSubido" runat="server">
                    <br />
                    <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                        <br />
                        <img src="../Content/images/tick.png" style="width: 30%" />
                        <br />
                        <h3 class="text-success"><b>¡No hay pagos pendientes!</b></h3>
                        <br />
                        <%--<a href="#" class="btn btn-primary" style="border: none"><i class="fa fa-download"></i>Descargar Comprobante</a>--%>
                    </div>
                </div>
                <div class="row hei" id="divPagoPendiente" runat="server">

                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <dx:ASPxButton ID="btnComprobante" AutoPostBack="false" runat="server" Text="Comprobante" CssClass="btn btn-primary" Style="margin-bottom: 20px; width: 100%; border: none" Height="50px">
                            <ClientSideEvents Click="OpenComprobante" />
                        </dx:ASPxButton>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <dx:ASPxButton ID="btnPagar" AutoPostBack="false" Text="Pagar" runat="server" CssClass="btn btn-primary" Style="margin-bottom: 20px; width: 100%; border: none" Height="50px" OnClick="btnPagar_Click">
                            <ClientSideEvents Click="QuitarRequired" />
                        </dx:ASPxButton>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <dx:ASPxPopupControl
        ID="popupComprobante"
        ClientInstanceName="popupComprobante"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Comprobante de pago" ShowProgressPanel="True" BrowseButton-Text="Subir comprobante" Modal="true">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Fecha:</label>
                                <asp:TextBox ID="txtFechaComprobante" runat="server" CssClass="form-control" TextMode="date"></asp:TextBox>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <asp:RadioButton ID="rbtnAcademia" Checked="true" GroupName="cosa" runat="server" Text="Academia" />
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <asp:RadioButton ID="rbtnPersonalizado" GroupName="cosa" runat="server" Text="Personalizado" />
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Concepto:</label>
                                <asp:TextBox ID="txtConcepto" runat="server" CssClass="form-control" MaxLength="100"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Importe:</label>
                                <asp:TextBox ID="txtImporte" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Referencia:</label>
                                <asp:TextBox ID="txtReferencia" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                            </div>

                            <dx:ASPxUploadControl
                                ID="uploadComprobante"
                                UploadStorage="FileSystem"
                                ShowUploadButton="true"
                                ClientInstanceName="uploadComprobante"
                                runat="server"
                                OnGenerateFileNameInStorage="uploadComprobante_GenerateFileNameInStorage"
                                OnFileUploadComplete="uploadComprobante_FileUploadComplete"
                                UploadMode="Standard" FileUploadMode="OnPageLoad"
                                Width="100%">
                                <UploadButton Text="Subir comprobante"></UploadButton>
                                <ValidationSettings AllowedFileExtensions=".pdf, .jpg, .jpeg, .png"></ValidationSettings>
                                <FileSystemSettings
                                    UploadFolder="~/AlumnosySocios/Comprobantes"
                                    GenerateUniqueFileNamePrefix="true"></FileSystemSettings>
                            </dx:ASPxUploadControl>
                        </div>
                    </div>
                    <br />
                </div>

            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
</asp:Content>
