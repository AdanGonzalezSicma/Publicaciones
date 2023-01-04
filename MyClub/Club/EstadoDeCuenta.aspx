<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EstadoDeCuenta.aspx.cs" Inherits="Sistema_web.Club.EstadoDeCuenta" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenAlumno" ClientInstanceName="hiddenAlumno" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenMembrecia" ClientInstanceName="hiddenMembrecia" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenSoloPagados" ClientInstanceName="hiddenSoloPagados" runat="server"></dx:ASPxHiddenField>
    <script>
         window.onload = function active() {
            var act = document.getElementById("Estadosdecuenta");
            if (act.className.match("nav-item")) {
                act.className = "nav-item active";
            } else { 
                act.remove.className("active");
             }
                 var act2 = document.getElementById("label4");
            if (act2.className.match("tab4")) {
                act2.className ="tab active";
            } else {
                act2.remove.className("active");
            }

        }
        function OnToolbarItemClick(s,e) {
            if (e.item.name == "Correo") {
                if (gridEstadoDeCuenta.GetSelectedRowCount() > 0) {
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtFechaComprobante").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtConcepto").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtImporte").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtReferencia").required = false;
                    //Hay registros seleccionados
                    popupEnvioCorreo.Show();
                }
                else {
                    popupInfo.Show();
                    //No ha seleccionado ninguno de ellos
                }
            }
            if (e.item.name == "Comprobante") {
                var visibleIndex = gridEstadoDeCuenta.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    hiddenAlumno.Set("hiddenAlumno", gridEstadoDeCuenta.GetRowKey(visibleIndex));
                    hiddenMembrecia.Set("hiddenMembrecia", gridEstadoDeCuenta.GetRowKey(visibleIndex));
                    hiddenSoloPagados.Set("hiddenSoloPagados", gridEstadoDeCuenta.GetRowKey(visibleIndex));
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtFechaComprobante").required = true;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtConcepto").required = true;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtImporte").required = true;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtReferencia").required = true;
                    popupComprobante.Show();
                }
            }
            if (e.item.name == "EstadoCuenta") {
                var visibleIndex = gridEstadoDeCuenta.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    hiddenAlumno.Set("hiddenAlumno", gridEstadoDeCuenta.GetRowKey(visibleIndex));
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtFechaComprobante").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtConcepto").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtImporte").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtReferencia").required = false;
                    popupImprimir.Show();
                }
            }
        }
        function cargarReporte() {
            popupImprimir.Hide();
              LoadingSiteMaster.Show();
        setTimeout(ocultarCarga, 2000);
        }
        function ocultarCarga() {
            popupEnvioCorreo.Hide();
                LoadingSiteMaster.Hide();
        }
        function ocultar() {
            popupComprobante.Hide();
              LoadingSiteMaster.Show();

        }
        function CerrarSubirComprobante() {
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtFechaComprobante").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtConcepto").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtImporte").required = false;
                    document.getElementById("ContentPlaceHolder1_popupComprobante_txtReferencia").required = false;
            popupComprobante.Hide();
        }
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
      }
    </script>
       <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 col-lg-10 col-md-6">
                    <h3 class="m-0" style="padding: 15px"><b>Estado de Cuenta</b></h3>
                </div>
             
            </div>
        </div>
    </div>
    <br />
    <style>
        .dxbButton_Material{
            box-shadow:none!important
        }
         @media screen and (min-width: 780px) {
 .popupImprimir{
            height:200px!important
        } 
 /*.popupInfo{
      height:200px!important
 }*/
 /*.popupEnviarCorreo{
      height:200px!important
 }*/
 .popupComprobantePago{
      height:500px!important
 }
}
        
        @media screen and (max-width: 779px) {
 .popupImprimir{
            height:280px!important
        }
 /*.popupInfo{
       height:280px!important
 }*/
  /*.popupEnviarCorreo{
       height:280px!important
 }*/
  .popupComprobantePago{
       height:500px!important
 }
}
        .dxgvADR .dxgvADCC {
    white-space:normal!important
}
    </style>
    <dx:ASPxGridView 
        ID="gridEstadoDeCuenta" 
        ClientInstanceName="gridEstadoDeCuenta" 
        runat="server"  KeyFieldName="OIDAlumno"
        AutoGenerateColumns="False" 
        DataSourceID="SqlDSEstadoDeCuenta" 
        Width="100%">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" ShowGroupPanel="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm>
                <SettingsAdaptivity Mode="OnWindowInnerWidth" />
            </EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>

        <Columns>
            <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0" Width="50px"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="Membrecia" ReadOnly="True" VisibleIndex="1"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="6" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDAlumno" ReadOnly="True" VisibleIndex="7" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="INICIAL" ReadOnly="True" VisibleIndex="8" Caption="Inicial">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CARGOS" ReadOnly="True" VisibleIndex="9" Caption="Cargos">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ABONOS" ReadOnly="True" VisibleIndex="10" Caption="Abonos">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NombreAlumno" ReadOnly="True" VisibleIndex="2" Caption="Nombre del alumno"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="AnioNac" ReadOnly="True" VisibleIndex="3" Caption="A&#241;o de Nac."></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CORREO" ReadOnly="True" VisibleIndex="4" Caption="Correo"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TELEFONO" ReadOnly="True" VisibleIndex="5" Caption="Tel&#233;fono"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Saldo" ReadOnly="True" VisibleIndex="11" Caption="Saldo">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="12"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="FechaUltEstadoCuenta" Caption="&#218;lt. Estado cuenta" VisibleIndex="13">
                <PropertiesDateEdit DisplayFormatString=""></PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar EnableAdaptivity="True" ItemAlign="Right"  Name="ToolEstadoCuenta">
                <Items>
                    <dx:GridViewToolbarItem Name="Correo" Text="Enviar Correo" BeginGroup="True">
                         <Image Height="32px" Url="~/Content/iconos/enviar-por-correo.png" UrlChecked="~/Content/iconos/enviar-por-correo.png" UrlDisabled="~/Content/iconos/enviar-por-correo.png" UrlHottracked="~/Content/iconos/enviar-por-correo.png" UrlSelected="~/Content/iconos/enviar-por-correo.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="Comprobante" Text="Subir comprobante" AdaptivePriority="1" BeginGroup="True">
                        <Image Height="32px" Url="~/Content/iconos/subir.png" UrlChecked="~/Content/iconos/subir.png" UrlDisabled="~/Content/iconos/subir.png" UrlHottracked="~/Content/iconos/subir.png" UrlSelected="~/Content/iconos/subir.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="EstadoCuenta" Text="Ver Estado de cuenta" AdaptivePriority="2" BeginGroup="True">
                         <Image Height="32px" Url="~/Content/iconos/estadoCuenta.png" UrlChecked="~/Content/iconos/estadoCuenta.png" UrlDisabled="~/Content/iconos/estadoCuenta.png" UrlHottracked="~/Content/iconos/estadoCuenta.png" UrlSelected="~/Content/iconos/estadoCuenta.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSEstadoDeCuenta" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="spEstadoDeCuentaClub" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter SessionField="FechaDesdeEstC" Name="FECHAINICIAL" Type="DateTime"></asp:SessionParameter>
            <asp:SessionParameter SessionField="FechaHastaEstC" Name="FECHAFINAL" Type="DateTime"></asp:SessionParameter>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub" Type="Int32"></asp:SessionParameter>
            <asp:Parameter DefaultValue="0" Name="OIDMembrecia" Type="Int32"></asp:Parameter>
            <asp:Parameter DefaultValue="0" Name="SoloPagados" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <dx:ASPxPopupControl ID="popupImprimir" runat="server" ClientInstanceName="popupImprimir"
        Modal="true"
        CloseOnEscape="true" HeaderText="Imprimir Estado de Cuenta"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" CssClass="popupImprimir">
           <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
          <ContentCollection>
<dx:PopupControlContentControl runat="server">
    <div class="container">
        <div class="row">
             <div class="col-lg-6 col-md-6 col-sm-12">
                   <div class="form-group">
                            <label>Desde:</label>
                            <input type="date" class="form-control" id="fechaD" runat="server">
                        </div>
             </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                  <div class="form-group">
                            <label>Desde:</label>
                            <input type="date" class="form-control" id="fechaH" runat="server">
                        </div>
            </div>
        </div>
        <div class="row">
                    <div class="col-lg-12 text-right">

                        <dx:ASPxButton ID="btnImprimir" runat="server" Text="Imprimir" CssClass="btn-primary" Border-BorderStyle="None" OnClick="btnImprimir_Click" BackColor="#0090bf">
                            <ClientSideEvents Click="cargarReporte" />
                             <Border BorderColor="#0090bf" BorderStyle="Solid" BorderWidth="3px" />
                        </dx:ASPxButton>
                    </div>
                </div>
                    <br />
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
        HeaderText="Comprobante de pago" ShowProgressPanel="True" BrowseButton-Text="Subir comprobante"  Modal="true" CssClass="popupComprobantePago">
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
                            <asp:TextBox ID="txtImporte" runat="server" onkeypress="return isNumberKey(event)" CssClass="form-control" MaxLength="10"></asp:TextBox>
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
                    <UploadButton Text="Subir comprobante" ></UploadButton>
                    <ClientSideEvents FileUploadComplete="CerrarSubirComprobante" />
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


    <dx:ASPxPopupControl ID="popupEnvioCorreo" ClientInstanceName="popupEnvioCorreo" Modal="true"
        CloseOnEscape="true" HeaderText="Enviar por correo"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        runat="server"  CssClass="popupEnviarCorreo">
           <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter"  />
        <ContentCollection>
<dx:PopupControlContentControl runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
<h5 style="color:black!important">¿Desea enviar sus estados de cuenta a los alumnos seleccionados y una copia a sus tutores?</h5>
            </div>
        </div>
 <br />
    <div class="row">
        <div class="col-lg-12 text-right">
<dx:ASPxButton ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="btn-primary" BackColor="#0090bf">
        <ClientSideEvents Click="function(){popupEnvioCorreo.Hide(); LoadingSiteMaster.Show();}" />
    <Border BorderColor="#0090bf" BorderStyle="Solid" BorderWidth="3px" />
    </dx:ASPxButton>
    <dx:ASPxButton ID="btnCalcelar" runat="server" Text="Cancelar" AutoPostBack="false"  CssClass=" btn-primary" BackColor="White" ForeColor="#0090bf">
         <Border BorderColor="#0090bf" BorderStyle="Solid" BorderWidth="3px" />
        <ClientSideEvents Click="function(){popupEnvioCorreo.Hide();}" />
    </dx:ASPxButton>
        </div>
    </div>

    </div>
    <br />
   
    
        </dx:PopupControlContentControl>
</ContentCollection>
    </dx:ASPxPopupControl>

    <dx:ASPxPopupControl ID="popupInfo" runat="server"  PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Importante!" ShowProgressPanel="True" BrowseButton-Text="Información"  Modal="true" ClientInstanceName="popupInfo" CssClass="popupInfo">
         <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" >
<Paddings Padding="0px" PaddingTop="12px"></Paddings>
         </ContentStyle>
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None"/>
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl>
               <div class="container-fluid">
  <div class="row">
 <h5 style="padding-left:10px; padding-right:10px">Es necesario seleccionar al menos un alumno para poder realizar el envio de correo</h5>

                   </div>
               </div>
                 
                          
                    
                    <div class="row" style="padding-left:10px; padding-right:10px">
                        <div class="col-lg-12 text-right">
                             <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Aceptar" AutoPostBack="false"  CssClass=" btn-primary">
          <Border  BorderColor="#0090bf" BorderStyle="Solid" BorderWidth="3px" />
        <ClientSideEvents Click="function(){popupInfo.Hide();}" />
    </dx:ASPxButton>
                        </div>
                    </div>
                    <br />
             
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <br />
    <br /> <br />
    <br /><br /> <br />
    <br />
</asp:Content>
