<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cargos-Abonos.aspx.cs" Inherits="Sistema_web.Membresias.Cargos_Abonos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="dtFecha2" ClientInstanceName="dtFecha2" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="idAlumno" ClientInstanceName="idAlumno" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenCargosAbonos" ClientInstanceName="hiddenCargosAbonos" runat="server"></dx:ASPxHiddenField>
     <script>
         var visibleIndex;
         var idDocumeno;
       window.onload = function active() {
            var act = document.getElementById("Membresias");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
           }
           var act2 = document.getElementById("label4");
            if (act2.className.match("tab4")) {
                act2.className ="tab active";
            } else {
                ac2t.remove.className("active");
            }
    
         }
         function OnToolbarItemClick(s,e) {
    console.log(e.item )
             if (e.item.name == "Eliminar") {
                 visibleIndex = gridCargosAbono.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    idDocumento = gridCargosAbono.GetRowKey(visibleIndex);
                    hiddenCargosAbonos.Set("hiddenCargosAbonos", idDocumeno);
                    popupEliminar.Show();
                }
             }
             if (e.item.name == "Editar") {
                 visibleIndex = gridCargosAbono.GetFocusedRowIndex();
                console.log(visibleIndex);
             }

                   

             if (e.item.name == "Pagar") {
                    visibleIndex = gridCargosAbono.GetFocusedRowIndex();
                    console.log('aqui si llega');
              //      gridCargosAbono.GetRowValues(visibleIndex, 'Alumno;', getNumEncuesta);
 gridCargosAbono.GetRowValues(visibleIndex, 'Folio;Fecha;OIDAlumno;TipoCargo;TipoMovimiento;FechaDePago;Concepto;Origen;Importe;Referencia;PagoVerificado;NombreCompleto;CodigoExterno', getNumEncuesta);
             }


         }
 function OnRowToolbarItemClick(s,e) {
                 visibleIndex = gridCargosAbono.GetFocusedRowIndex();
 gridCargosAbono.GetRowValues(visibleIndex, 'Folio;Fecha;OIDAlumno;TipoCargo;TipoMovimiento;FechaDePago;Concepto;Origen;Importe;Referencia;PagoVerificado;NombreCompleto;CodigoExterno', getValorCargoAbono);
}
function getValorCargoAbono(value){
console.log(value[4])
if(value[4]==='C')
console.log('ACTIVAR BOTON PAGAR');
}
   


         function getNumEncuesta(value) {
console.log(value)
                        var Folio = value[0];
                        var Fecha = value[1];
                        var OIDAlumno = value[2];
                        var TipoCargo = value[3];
                        var TipoMovimiento = value[4];
                        var FechaDePago = value[5];
                        var Concepto = value[6];
                        var Origen = value[7];
                        var Importe = value[8];
                        var Referencia = value[9];
                        var PagoVerificado = value[10];
                        var Usuario = value[11];
                        var CodigoExterno = value[12];
                            var dtFecha = document.getElementById('ContentPlaceHolder1_popupPagar_dtFechaPago_I');
                            var txtAlumno = document.getElementById('ContentPlaceHolder1_popupPagar_txtAlumno_I');

                            var txtOrigen = document.getElementById('ContentPlaceHolder1_popupPagar_txtOrigen_I');
                            var txtTipoMovimiento = document.getElementById('ContentPlaceHolder1_popupPagar_txtTipoMovimiento_I');
                            var txtConcepto = document.getElementById('ContentPlaceHolder1_popupPagar_txtConcepto_I');
                            var txtImporte = document.getElementById('ContentPlaceHolder1_popupPagar_txtImporte_I');
                            var txtCargoMensual = document.getElementById('ContentPlaceHolder1_popupPagar_txtCargoMensual_I');
                            var checkPago = document.getElementById('ContentPlaceHolder1_popupPagar_checkPago_S_D');
                        dtFecha.value =formatDate( FechaDePago);
                    dtFecha2.Set("dtFecha2", formatDate( FechaDePago));

                        document.getElementById('ContentPlaceHolder1_popupPagar_lblidalumn').innerText  = OIDAlumno;
                    idAlumno.Set("idAlumno", OIDAlumno);
                        txtAlumno.value = Usuario;
                        txtOrigen.value = TipoCargo=="A"?"Academia":"A";
                        txtTipoMovimiento.value =  "ABONO";
                        txtConcepto.value = "Pago – "+ Concepto;
                        txtImporte.value = Importe;
                        txtCargoMensual.value = Referencia;
                        popupPagar.Show();
                }
                function padTo2Digits(num) {
                  return num.toString().padStart(2, '0');
                }

                function formatDate(date) {
                  return [
                    padTo2Digits(date.getDate()),
                    padTo2Digits(date.getMonth() + 1),
                    date.getFullYear(),
                  ].join('/');
                }


        function fncCancelarPagar(){
                popupPagar.Hide();        
gridCargosAbono.Refresh();
}

          function fncCerrarSinComprobante() {
           popupSinComprobante.Hide();
        }
     </script>
           <style>
         .dxbButton_Material{
            box-shadow:none!important
        }
         
         
          @media screen and (max-width: 600px) {
.dxflGroupCell_Material {
    padding: 0 7px;
}
.dxgvPopupEditForm_Material {
     padding: 0!important; 
    margin: 0!important;
}
.dxflCLLSys .dxflCaptionCell_Material, *[dir="rtl"].dxflFormLayout_Material .dxflCLRSys .dxflCaptionCell_Material {
    padding-left: 0px;
   padding-right: 0px; 
}
}
    </style>
              <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Cargos y abonos</b></h3>
                </div>
            
            </div>
        </div>
    </div>
    <br />

    <dx:ASPxGridView 
        ID="gridCargosAbono" 
        ClientInstanceName="gridCargosAbono" 
        runat="server" 
        Width="100%" 
        AutoGenerateColumns="False" 
        DataSourceID="SqlDSCargosAbonos"  OnRowUpdating="gridCargosAbono_RowUpdating"
        KeyFieldName="OIDCargoAbono" 
        OnRowInserting="gridCargosAbono_RowInserting" 
        OnInitNewRow="gridCargosAbono_InitNewRow">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" FocusedRowChanged="OnRowToolbarItemClick" />
        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>

       <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" VerticalAlign="WindowCenter"></SettingsAdaptivity>
            </EditForm>
        </SettingsPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Folio" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Fecha" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="OIDAlumno" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="TipoCargo" ColSpan="2" ColumnSpan="2" Caption="Origen Movimiento"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="TipoMovimiento" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaRegistro" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Concepto" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Origen" ColSpan="2" ColumnSpan="2" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Importe" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Referencia" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="PagoVerificado" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Usuario" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="CodigoExterno" ColSpan="1" Visible="false"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDCargoAbono" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDClub" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Folio" VisibleIndex="4" ReadOnly="true">
                <PropertiesTextEdit>
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="7" Visible="false" Caption="Fecha Pago">
                <PropertiesDateEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaDePago" VisibleIndex="8" ReadOnly="true">
                <PropertiesDateEdit>
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Concepto" VisibleIndex="9">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Importe" VisibleIndex="10">
                <PropertiesTextEdit DisplayFormatString="c">

                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Origen" VisibleIndex="11" Visible="false" ReadOnly="true">
                <PropertiesTextEdit>
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Referencia" VisibleIndex="12">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="PagoVerificado" VisibleIndex="13">
                <PropertiesCheckEdit ValueGrayed="False"></PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="Usuario" VisibleIndex="14" ReadOnly="true" Visible="false">
                <PropertiesTextEdit>
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CodigoExterno" VisibleIndex="15" Visible="false"></dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OIDAlumno" Caption="Alumno" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlDSAlumnos" TextField="NombreCompleto" ValueField="OIDAlumnos">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>


            <dx:GridViewDataComboBoxColumn FieldName="TipoMovimiento" VisibleIndex="5">
                <PropertiesComboBox>
                    <Items>
                        <dx:ListEditItem Text="Cargo" Value='C'></dx:ListEditItem>
                        <dx:ListEditItem Text="Abono" Value='A'></dx:ListEditItem>
                    </Items>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="TipoCargo" VisibleIndex="6">
                <PropertiesComboBox>
                    <Items>
                        <dx:ListEditItem Text="Academia" Value="A"></dx:ListEditItem>
                        <dx:ListEditItem Text="Personalizado" Value="P"></dx:ListEditItem>
                    </Items>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataHyperLinkColumn FieldName="Archivo" Caption="Comprobante" VisibleIndex="16">
                <DataItemTemplate>
                    <asp:LinkButton ID="linkDownloadDoc" runat="server" CommandArgument='<%# Eval("Archivo") %>' Text='' OnClick="linkDownloadDoc_Click"><img src='/Content/images/pdf.png' alt="delete group" /></asp:LinkButton>
                </DataItemTemplate>
            </dx:GridViewDataHyperLinkColumn>
            <dx:GridViewDataTextColumn FieldName="NombreCompleto" Visible="False" VisibleIndex="17"></dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarCargosAbono">
                <Items>
                    <dx:GridViewToolbarItem    BeginGroup="True" Name="Pagar" Text="Pagar">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/pago.png" UrlChecked="~/Content/iconos/pago.png" UrlDisabled="~/Content/iconos/pago.png" UrlHottracked="~/Content/iconos/pago.png" UrlSelected="~/Content/iconos/pago.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="New" BeginGroup="True" Name="Nuevo" Text="Nuevo">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Name="Editar" Text="Editar" Command="Edit">
                        <Image Height="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="Eliminar" BeginGroup="True" Enabled="False" Text="Eliminar">
                        <Image UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Height="32px" Width="32px" Url="~/Content/iconos/delete-icono.png"></Image>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
        <SettingsCommandButton>
            <NewButton ButtonType="Image" RenderMode="Image" >
                <Image AlternateText="Nuevo" Height="32px" ToolTip="Nuevo" Url="~/Content/iconos/new.png" Width="32px">
                </Image>
            </NewButton>
            <UpdateButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/iconos/save.png" Width="32px">
                </Image>
            </UpdateButton>
            <CancelButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/iconos/cancel2.png" Width="32px">
                </Image>
            </CancelButton>
            <EditButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Editar" Height="32px" ToolTip="Editar" Url="~/Content/iconos/edit.png" Width="32px">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image" RenderMode="Image" Styles-Style-CssClass="btnDelete">
                <Image AlternateText="Eliminar" Height="32px" Url="~/Content/iconos/delete.png" Width="32px">
                </Image>

                <Styles>
                    <Style CssClass="btnDelete"></Style>
                </Styles>
            </DeleteButton>
        </SettingsCommandButton>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSCargosAbonos" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT A.[OIDCargoAbono], 
(RTRIM(B.Nombre) + ' ' + RTRIM(B.Apellidos)) AS NombreCompleto,
A.[OIDClub], 
A.[OIDAlumno], 
A.[Folio], 
A.[TipoMovimiento], 
A.[TipoCargo], 
A.[Fecha], 
A.[Fecha] AS [FechaDePago], 
A.[Concepto], 
A.[Importe], 
A.[Origen], 
A.[Referencia], 
A.[PagoVerificado], 
A.[Usuario], 
A.[Archivo], 
A.[CodigoExterno] FROM [ClubAlumnosCargosAbonos] AS A
INNER JOIN ClubAlumnos AS B
ON A.OIDAlumno=B.OIDAlumnos
WHERE (A.[OIDClub] = 
100)
--@OIDClub) 
ORDER BY A.[OIDCargoAbono] DESC" InsertCommand="INSERT INTO [dbo].[ClubAlumnosCargosAbonos]
           ([OIDClub]
           ,[OIDAlumno]
           ,[Folio]
           ,[TipoMovimiento]
           ,[TipoCargo]
           ,[Fecha]
           ,[FechaRegistro]
           ,[Concepto]
           ,[Importe]
           ,[Origen]
           ,[Referencia]
           ,[PagoVerificado]
           ,[Usuario]
           ,[CodigoExterno])
     VALUES
           (@OIDClub
           ,@OIDAlumno
           ,@Folio
           ,@TipoMovimiento
           ,@TipoCargo
           ,@Fecha
           ,@FechaRegistro
           ,@Concepto
           ,@Importe
           ,@Origen
           ,@Referencia
           ,@PagoVerificado
           ,@Usuario
           ,@CodigoExterno)"
        UpdateCommand="UPDATE [dbo].[ClubAlumnosCargosAbonos]
   SET [Folio] = @Folio
      ,[TipoMovimiento] = @TipoMovimiento
      ,[TipoCargo] = @TipoCargo
      ,[Fecha] = @Fecha
      ,[Concepto] = @Concepto
      ,[Importe] = @Importe
      ,[Origen] = @Origen
      ,[Referencia] = @Referencia
      ,[PagoVerificado] = @PagoVerificado
      ,[Usuario] = @Usuario
      ,[CodigoExterno] = @CodigoExterno
 WHERE OIDCargoAbono = @OIDCargoAbono">
        <InsertParameters>
            <asp:Parameter Name="OIDClub"></asp:Parameter>
            <asp:Parameter Name="OIDAlumno"></asp:Parameter>
            <asp:Parameter Name="Folio"></asp:Parameter>
            <asp:Parameter Name="TipoMovimiento"></asp:Parameter>
            <asp:Parameter Name="TipoCargo"></asp:Parameter>
            <asp:Parameter Name="Fecha"></asp:Parameter>
            <asp:Parameter Name="FechaRegistro"></asp:Parameter>
            <asp:Parameter Name="Concepto"></asp:Parameter>
            <asp:Parameter Name="Importe"></asp:Parameter>
            <asp:Parameter Name="Origen"></asp:Parameter>
            <asp:Parameter Name="Referencia"></asp:Parameter>
            <asp:Parameter Name="PagoVerificado"></asp:Parameter>
            <asp:Parameter Name="Usuario"></asp:Parameter>
            <asp:Parameter Name="CodigoExterno"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Folio"></asp:Parameter>
            <asp:Parameter Name="TipoMovimiento"></asp:Parameter>
            <asp:Parameter Name="TipoCargo"></asp:Parameter>
            <asp:Parameter Name="Fecha"></asp:Parameter>
            <asp:Parameter Name="Concepto"></asp:Parameter>
            <asp:Parameter Name="Importe"></asp:Parameter>
            <asp:Parameter Name="Origen"></asp:Parameter>
            <asp:Parameter Name="Referencia"></asp:Parameter>
            <asp:Parameter Name="PagoVerificado"></asp:Parameter>
            <asp:Parameter Name="Usuario"></asp:Parameter>
            <asp:Parameter Name="CodigoExterno"></asp:Parameter>
            <asp:Parameter Name="OIDCargoAbono"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSAlumnos" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT OIDAlumnos, LTRIM(RTRIM(Apellidos)) +' ' + RTRIM(Nombre)  as 'NombreCompleto' from ClubAlumnos where OidClub = @OidClub and activo = 1">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <dx:ASPxPopupControl
        ID="popupEliminar"
        ClientInstanceName="popupEliminar"
        runat="server"
        Modal="true"
        CloseOnEscape="true" HeaderText="¡Advertencia!"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Font-Bold="False"  Width="650px">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <p>¿Está seguro de continuar con la eliminación de este cargo/abono? <br />
                    Si el cargo fue verificado no será eliminado</p>
                <div class="buttonsContainer">
                    <dx:ASPxButton ID="btnEliminarTutor" AutoPostBack="false" runat="server" Text="Confirmar" Width="100" BackColor="#FF3547" CssClass="btn-danger" OnClick="btnEliminarTutor_Click">
                        <ClientSideEvents Click="fncConfirmarEliminar" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCancelarTutor" runat="server" Text="Cancelar" AutoPostBack="false" Width="100" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="fncCancelarEliminar" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <dx:ASPxPopupControl
        ID="popupPagar"
        ClientInstanceName="popupPagar"
        runat="server"
        Modal="true"
        CloseOnEscape="true" 
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Font-Bold="False"  Width="550px" HeaderText="Realizar Pago">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" >
<Paddings Padding="0px" PaddingTop="12px"></Paddings>
        </ContentStyle>
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" BackColor="#f7aa00" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container-fluid" style="padding: 10px">
                    <div class="row" style="margin-bottom:5px">
                        <div class="col-lg-3 col-md-4 col-sm-12">
                            <asp:Label ID="Label1" runat="server" Text="Fecha Pago"></asp:Label>

                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <dx:ASPxDateEdit ID="dtFechaPago" runat="server" Width="100%"></dx:ASPxDateEdit>

                        </div>
                    </div>
                    <div class="row" style="margin-bottom:5px">
                        <div class="col-lg-3 col-md-4 col-sm-12">
                            <asp:Label ID="Label2" runat="server" Text="Alumno"></asp:Label>

                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-12" style="margin-bottom:5px">
                            <dx:ASPxTextBox ID="txtAlumno" runat="server" Width="100%"></dx:ASPxTextBox>
                            <label id="lblidalumn" runat="server" hidden></label>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom:5px">
                        <div class="col-lg-3 col-md-4 col-sm-12">
                            <asp:Label ID="Label3" runat="server" Text="Origen Movimiento"></asp:Label>

                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <dx:ASPxTextBox ID="txtOrigen" runat="server" Width="100%"></dx:ASPxTextBox>

                        </div>
                    </div>

                    <div class="row" style="margin-bottom:5px">
                        <div class="col-lg-3 col-md-4 col-sm-12">
                            <asp:Label ID="Label4" runat="server" Text="Tipo Movimiento"></asp:Label>

                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <dx:ASPxTextBox ID="txtTipoMovimiento" runat="server" Width="100%"></dx:ASPxTextBox>

                        </div>
                    </div>
                    <div class="row" style="margin-bottom:5px">
                        <div class="col-lg-3 col-md-4 col-sm-12">
                            <asp:Label ID="Label5" runat="server" Text="Concepto"></asp:Label>

                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <dx:ASPxTextBox ID="txtConcepto" runat="server" Width="100%"></dx:ASPxTextBox>

                        </div>
                    </div>

                    <div class="row" style="margin-bottom:5px">
                        <div class="col-lg-3 col-md-4 col-sm-12">
                            <asp:Label ID="Label6" runat="server" Text="Importe"></asp:Label>
                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <dx:ASPxTextBox ID="txtImporte" runat="server" Width="100%"></dx:ASPxTextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom:5px">
                        <div class="col-lg-3 col-md-4 col-sm-12">
                            <asp:Label ID="Label7" runat="server" Text="Referencia"></asp:Label>
                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <dx:ASPxTextBox ID="txtCargoMensual" runat="server" Width="100%"></dx:ASPxTextBox>
                        </div>
                    </div>
                    <div class="row" style="margin-bottom:5px">
                        <div class="col-lg-3 col-md-4 col-sm-12">
                            <asp:Label ID="Label8" runat="server" Text="Pago Verificado"></asp:Label>
                        </div>
                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <dx:ASPxCheckBox ID="checkPago" runat="server"></dx:ASPxCheckBox>
                        </div>
                    </div>


                    <div class="row" style="margin-bottom:5px">
                        <div class="col-12">
                            <asp:Label ID="lblTxtMensaje" runat="server" Text="" Visible="false"></asp:Label></div>
                    </div>
                    <div class="row text-right">
                        <div class="col-12">
                            <div class="buttonsContainer">
                              
                                <%--<asp:Button ID="btnConfirmar" runat="server" Text="Button" OnClick="btnConfirmar_Click" OnClientClick="function (s, e) { popupPagar.Hide(); }"  BackColor="#FF3547" ForeColor="White" CssClass="btn btn-danger fondo"  Width="100"/>--%>
                                <asp:ImageButton   ID="btnConfirmar23" runat="server" Text="Button" OnClick="btnConfirmar_Click" OnClientClick="function (s, e) { popupPagar.Hide(); }" CssClass="btn"  Width="60px" ImageUrl="/Content/iconos/save.png" ToolTip="Guardar" />
                                <dx:ASPxButton ID="btnCancelarPagar" runat="server" AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                                    <ClientSideEvents Click="fncCancelarPagar" />
                                      <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/iconos/cancel2.png" Width="32px">
                                </Image>
                                   
                                </dx:ASPxButton>
                            </div>
                        </div>
                    </div>
                </div>






            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>



    <dx:ASPxPopupControl ID="popupSinComprobante"
        ClientInstanceName="popupSinComprobante"
        runat="server"
        Modal="true"
        CloseOnEscape="true" HeaderText="¡Pagar!"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Font-Bold="False" Width="650px">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
         <ContentCollection>
            <dx:PopupControlContentControl> 
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
<h5>Este cargo/abono no tiene un comprobante vinculado</h5>
                        </div>
                    </div> 
                    <div class="row">
                     <div class="col-lg-12">
 <div class="buttonsContainer text-right">
                    <dx:ASPxButton ID="btnAceptar" AutoPostBack="false" runat="server" Text="Confirmar" Width="100"  CssClass="btn-primary" >
                         <ClientSideEvents Click="fncCerrarSinComprobante" />
                        <Border BorderColor="#0090bf"  BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                   
                </div>
                     </div>
                 </div>
                    <br />
                </div>
                
                 
            </dx:PopupControlContentControl>

         </ContentCollection>
        
    </dx:ASPxPopupControl>
      <br />
    <br />
    <br /><br />     <br />
    <br />
    <script>
   function getCargoAbono(value){
                        var Folio = value[0];
                        var Fecha = value[1];
                        var OIDAlumno = value[2];
                        var TipoCargo = value[3];
                        var TipoMovimiento = value[4];
                        var FechaDePago = value[5];
                        var Concepto = value[6];
                        var Origen = value[7];
                        var Importe = value[8];
                        var Referencia = value[9];
                        var PagoVerificado = value[10];
                        var Usuario = value[11];
                        var CodigoExterno = value[12];
                            var dtFecha = document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor4_I');
                            var txtAlumno = document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor13_I');

                            var txtOrigen = document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor15_I');
                            var txtTipoMovimiento = document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor14_I');
                            var txtConcepto = document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor6_I');
                            var txtImporte = document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor7_I');
                            var txtCargoMensual = document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor9_I');
                            var checkPago = document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor10_S_D');
                        //dtFecha2.Set("dtFecha2", formatDate( FechaDePago));

                        idAlumno.Set("idAlumno", OIDAlumno);
                        //txtAlumno.value = Usuario;
                        //txtOrigen.value = TipoCargo=="A"?"Academia":"A";
                        //txtTipoMovimiento.value =  "ABONO";
                        //txtConcepto.value = "Pago – "+ Concepto;
                        //txtImporte.value = Importe;
                        //txtCargoMensual.value = Referencia;
document.getElementById('ContentPlaceHolder1_gridCargosAbono_DXPEForm_DXEFL_DXEditor9_I').value = Referencia;
        }
      

    </script>   
</asp:Content>
