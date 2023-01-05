<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="Sistema_web.Membresias.Alumnos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenAlumno" ClientInstanceName="hiddenAlumno" runat="server"></dx:ASPxHiddenField>
    <script>
        var visibleIndex;
        var idDocumeno;
        window.onload = function active() {
            var act = document.getElementById("Membresias");
            if (act.className.match("nav-item")) {
                act.className = "nav-item active";
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
        function fncConfirmarEliminar() {
            visibleIndex = gridAlumnosMembrecias.GetFocusedRowIndex();
            if (visibleIndex > -1) {
                idDocumeno = gridAlumnosMembrecias.GetRowKey(visibleIndex);
                hiddenAlumno.Set("hiddenAlumno", idDocumeno);
            popupEliminar.Hide();
            }
        }
        function fncCancelarEliminar() {
            popupEliminar.Hide();
        }
        function fncConfirmarSuspension() {
            visibleIndex = gridAlumnosMembrecias.GetFocusedRowIndex();
            if (visibleIndex > -1) {
                idDocumeno = gridAlumnosMembrecias.GetRowKey(visibleIndex);
                hiddenAlumno.Set("hiddenAlumno", idDocumeno);
            popupSuspender.Hide();
            }
        }
        function fncCancelarSuspension() {
            popupSuspender.Hide();
        }
        function OnToolbarItemClick(s, e) {
            if (e.item.name=="btnAplicarCargos") {
                popupPagar.Show();
            }
            
            if (e.item.name=="btnNuevo") {
                popupNuevo.Show();
            }
            if (e.item.name == "btnEliminar") {
                visibleIndex = gridAlumnosMembrecias.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    idDocumento = gridAlumnosMembrecias.GetRowKey(visibleIndex);
                    popupEliminar.Show();
                }
            }
            if (e.item.name == "btnSuspender") {
                visibleIndex = gridAlumnosMembrecias.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    idDocumento = gridAlumnosMembrecias.GetRowKey(visibleIndex);
                    hiddenAlumno.Set("hiddenAlumno", idDocumento);
                    callBackSuspension.PerformCallback();
                     document.getElementById("ContentPlaceHolder1_popupSuspender_callBackSuspension_txtFechaSuspension").required = true;
                     document.getElementById("ContentPlaceHolder1_popupSuspender_callBackSuspension_txtUsuarioSuspension").required = true;
                     document.getElementById("ContentPlaceHolder1_popupSuspender_callBackSuspension_txtMotivoSuspension").required = true;
                     document.getElementById("ContentPlaceHolder1_popupBaja_callbackBaja_txtFechaBaja").required = false;
                     document.getElementById("ContentPlaceHolder1_popupBaja_callbackBaja_txtUsuarioBaja").required = false;
                     document.getElementById("ContentPlaceHolder1_popupBaja_callbackBaja_txtMotivoBaja").required = false;
                    popupSuspender.Show();
                }
            }
            if (e.item.name == "btnBaja") {
                visibleIndex = gridAlumnosMembrecias.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    idDocumento = gridAlumnosMembrecias.GetRowKey(visibleIndex);
                    hiddenAlumno.Set("hiddenAlumno", idDocumento);
                    callbackBaja.PerformCallback();
                     document.getElementById("ContentPlaceHolder1_popupSuspender_callBackSuspension_txtFechaSuspension").required = false;
                     document.getElementById("ContentPlaceHolder1_popupSuspender_callBackSuspension_txtUsuarioSuspension").required = false;
                     document.getElementById("ContentPlaceHolder1_popupSuspender_callBackSuspension_txtMotivoSuspension").required = false;
                     document.getElementById("ContentPlaceHolder1_popupBaja_callbackBaja_txtFechaBaja").required = true;
                     document.getElementById("ContentPlaceHolder1_popupBaja_callbackBaja_txtUsuarioBaja").required = true;
                     document.getElementById("ContentPlaceHolder1_popupBaja_callbackBaja_txtMotivoBaja").required = true;
                    popupBaja.Show();
                }
            }
        }
        function fncConfirmarBaja() {
            visibleIndex = gridAlumnosMembrecias.GetFocusedRowIndex();
            if (visibleIndex > -1) {
                idDocumeno = gridAlumnosMembrecias.GetRowKey(visibleIndex);
                hiddenAlumno.Set("hiddenAlumno", idDocumeno);
            //popupBaja.Hide();
            }
        }
        function fncCancelarBaja() {
            popupBaja.Hide();
        }
        function fncCancelarMembrecia() {
            popupNuevo.Hide();
        }
        function fncConfirmarMembrecia() {
            popupNuevo.Hide();
        }
         function onlyDotsAndNumbers(txt, event) {
                var charCode = (event.which) ? event.which : event.keyCode
                if (charCode == 46) {
                    if (txt.value.indexOf(".") < 0)
                        return true;
                    else
                        return false;
                }

                if (txt.value.indexOf(".") > 0) {
                    var txtlen = txt.value.length;
                    var dotpos = txt.value.indexOf(".");
                    //Change the number here to allow more decimal points than 2
                    if ((txtlen - dotpos) > 2)
                        return false;
                }

                if (charCode > 31 && (charCode < 48 || charCode > 57))
                    return false;

                return true;
            }
    </script>
    <style>
        .dxbButton_Material{
            box-shadow:none!important
        }
        .dxtcLite_Material > .dxtc-stripContainer .dxtc-link{
            padding:10px 11px 9px!important
        }
        .dxtcLite_Material.dxtc-top > .dxtc-stripContainer .dxtc-activeTab{
            font-size:12px!important
        }
        .dxtcLite_Material > .dxtc-stripContainer .dxtc-tab, .dxtcLite_Material > .dxtc-stripContainer .dxtc-activeTab, .dxtcLite_Material > .dxtc-stripContainer .dxtc-leftIndent, .dxtcLite_Material > .dxtc-stripContainer .dxtc-spacer, .dxtcLite_Material > .dxtc-stripContainer .dxtc-rightIndent, .dxtcLite_Material > .dxtc-stripContainer .dxtc-sbWrapper, .dxtcLite_Material > .dxtc-stripContainer .dxtc-sbIndent, .dxtcLite_Material > .dxtc-stripContainer .dxtc-sbSpacer{
             font-size:12px!important
        }
        .dxgvPopupEditForm_Material{
            padding:0px!important
        }
    </style>
    <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Alumnos con Membresía</b></h3>
                    
                </div>

            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView
        ID="gridAlumnosMembrecias"
        OnCellEditorInitialize="gridAlumnosMembrecias_CellEditorInitialize"
        OnStartRowEditing="gridAlumnosMembrecias_StartRowEditing"
        KeyFieldName="Oid"
        OnRowUpdating="gridAlumnosMembrecias_RowUpdating"
        OnDataBound="gridAlumnosMembrecias_DataBound"
        ClientInstanceName="gridAlumnosMembrecias"
        runat="server" SettingsExport-FileName="Listado membrecías de Alumnos" StylesExport-Cell-Font-Size="Medium"
        AutoGenerateColumns="False"
        DataSourceID="SqlDSAlumnosMembrecias"
        Width="100%">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>
        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="WYSIWYG" />
        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
  <SettingsText PopupEditFormCaption="Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

<StylesExport>
<Cell Font-Size="Medium"></Cell>
</StylesExport>

        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" />
            </EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewTabbedLayoutGroup ColSpan="1" Width="100%">
                    <Items>
                        <dx:GridViewLayoutGroup Caption="Membrec&#237;a" ColCount="1" ColSpan="1">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="Nombre" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Apellidos" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="OidMembresia" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="NumeroControlAsistencia" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Costo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="MontoDescuentoAutorizado" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="FechaRegistro" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Fecha Ultima Asistencia" ColSpan="1" Caption="Ultima asistencia"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Fecha Ultimo Cargo" ColSpan="1" Caption="Ultimo Cargo"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                        <dx:GridViewLayoutGroup Caption="Suspenci&#243;n" ColCount="1" ColSpan="1">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="Suspendido" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Fecha Suspension" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Usuario Suspension" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Motivo Suspension" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                        <dx:GridViewLayoutGroup Caption="Baja" ColCount="1" ColSpan="1">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="Baja" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Fecha Baja" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Usuario Baja" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Motivo Baja" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                    </Items>
                </dx:GridViewTabbedLayoutGroup>

                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>

        <Columns>
            <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="1" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Costo" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                <PropertiesTextEdit DisplayFormatString="c">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="4">
                <PropertiesTextEdit>
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellidos" VisibleIndex="6" ReadOnly="true">
                <PropertiesTextEdit>
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>

            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumeroControlAsistencia" VisibleIndex="8" Caption="N&#250;m. comtrol">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="9" Caption="Fecha Alta" ReadOnly="true">
                <PropertiesDateEdit>
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="MontoDescuentoAutorizado" VisibleIndex="10" Caption="Descuento autorizado">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="11" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidAlumno" CellStyle-HorizontalAlign="Center" VisibleIndex="12" Visible="False">
<CellStyle HorizontalAlign="Center"></CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidMembresia" Caption="Membrec&#237;a" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="SqlDSMembrecias" TextField="Descripcion" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>

            <dx:GridViewDataTextColumn FieldName="Oid" Visible="False" VisibleIndex="0"></dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn FieldName="MotivoSuspension" VisibleIndex="17" Visible="False" ReadOnly="true">
                <PropertiesMemoEdit Rows="5">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="MotivoBaja" VisibleIndex="21" Visible="False" ReadOnly="true">
                <PropertiesMemoEdit Rows="5">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="13">
                <PropertiesCheckEdit ValueGrayed="False">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="Suspendido" Visible="False" VisibleIndex="14">
                <PropertiesCheckEdit ValueGrayed="False">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="Baja" Visible="False" VisibleIndex="18">
                <PropertiesCheckEdit ValueGrayed="False">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="FechaUltimaAsistencia" ReadOnly="True" Visible="False" VisibleIndex="23">
                <PropertiesDateEdit DisplayFormatString="">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>

            <dx:GridViewDataDateColumn FieldName="FechaSuspension" ReadOnly="True" Visible="False" VisibleIndex="15">
                <PropertiesDateEdit DisplayFormatString="">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>

            <dx:GridViewDataDateColumn FieldName="FechaBaja" ReadOnly="True" Visible="False" VisibleIndex="19">
                <PropertiesDateEdit DisplayFormatString="">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaUltimoCargo" Visible="False" VisibleIndex="22">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataComboBoxColumn FieldName="UsuarioSuspension" ReadOnly="True" Visible="False" VisibleIndex="16">
                <PropertiesComboBox DataSourceID="SqlDSUsuarios" TextField="Correo" ValueField="OIDUsuario">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="UsuarioBaja" ReadOnly="True" Visible="False" VisibleIndex="20">
                <PropertiesComboBox DataSourceID="SqlDSUsuarios" TextField="Correo" ValueField="OIDUsuario">
                    <ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="AnioNac" Caption="A&#241;o Nacimiento" VisibleIndex="7"></dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarMAlumnos">
                <Items>
                    <dx:GridViewToolbarItem Name="btnAplicarCargos" Command="Custom" Text="Aplicar Cargos">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnNuevo" BeginGroup="True" Text="Nuevo">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEditar" BeginGroup="True" Text="Editar" Command="Edit">
                        <Image Height="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEliminar" BeginGroup="True" Text="Eliminar">
                        <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnSuspender" BeginGroup="True" Text="Suspender">
                        <Image Height="32px" Url="~/Content/iconos/suspender.png" UrlChecked="~/Content/iconos/suspender.png" UrlDisabled="~/Content/iconos/suspender.png" UrlHottracked="~/Content/iconos/suspender.png" UrlSelected="~/Content/iconos/suspender.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnBaja" BeginGroup="True" Text="Baja">
                        <Image Height="32px" Url="~/Content/iconos/menos.png" UrlChecked="~/Content/iconos/menos.png" UrlDisabled="~/Content/iconos/menos.png" UrlHottracked="~/Content/iconos/menos.png" UrlSelected="~/Content/iconos/menos.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="ExportToXlsx" Name="ExportarExcel" AdaptiveText="Exportar Excel" BeginGroup="True" Text="Exportar Excel">
                        <Image UrlChecked="~/Content/iconos/excel.png" UrlDisabled="~/Content/iconos/excel.png" UrlHottracked="~/Content/iconos/excel.png" UrlSelected="~/Content/iconos/excel.png" Height="32px" Width="32px" Url="~/Content/iconos/excel.png"></Image>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
         <SettingsCommandButton>
            <NewButton ButtonType="Image" RenderMode="Image">
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
                <Image AlternateText="Eliminar" Height="32px" Url="~/Content/icons/delete.png" Width="32px">
                </Image>

                <Styles>
                    <Style CssClass="btnDelete"></Style>
                </Styles>
            </DeleteButton>
        </SettingsCommandButton>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSAlumnosMembrecias" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT        dbo.ClubMembresiasAlumnos.Oid, dbo.ClubMembresias.Descripcion, dbo.ClubMembresias.Costo, dbo.ClubAlumnos.Nombre, dbo.ClubAlumnos.Apellidos, YEAR(dbo.ClubAlumnos.FechaNacimiento) as 'AnioNac', dbo.ClubMembresiasAlumnos.NumeroControlAsistencia, 
                         dbo.ClubMembresiasAlumnos.FechaAlta as 'FechaRegistro', dbo.ClubMembresiasAlumnos.MontoDescuentoAutorizado, dbo.ClubAlumnos.OidClub, dbo.ClubMembresiasAlumnos.OidAlumno, dbo.ClubMembresiasAlumnos.OidMembresia, 
                         dbo.ClubMembresiasAlumnos.Activo, dbo.ClubMembresiasAlumnos.Suspendido, dbo.ClubMembresiasAlumnos.FechaSuspension, dbo.ClubMembresiasAlumnos.UsuarioSuspension, 
                         dbo.ClubMembresiasAlumnos.MotivoSuspension, dbo.ClubMembresiasAlumnos.Baja, dbo.ClubMembresiasAlumnos.FechaBaja, dbo.ClubMembresiasAlumnos.UsuarioBaja, dbo.ClubMembresiasAlumnos.MotivoBaja, dbo.ClubMembresiasAlumnos.FechaUltimoCargo, dbo.ClubMembresiasAlumnos.FechaUltimaAsistencia
FROM            dbo.ClubMembresiasAlumnos INNER JOIN
                         dbo.ClubMembresias ON dbo.ClubMembresiasAlumnos.OidMembresia = dbo.ClubMembresias.Oid INNER JOIN
                         dbo.ClubAlumnos ON dbo.ClubMembresiasAlumnos.OidAlumno = dbo.ClubAlumnos.OIDAlumnos
where dbo.ClubAlumnos.OidClub = @OIDClub
AND dbo.ClubAlumnos.Activo=1
order by dbo.ClubAlumnos.Apellidos "
        UpdateCommand="UPDATE [dbo].[ClubMembresiasAlumnos]
   SET [OidAlumno] = @OidAlumno
      ,[OidMembresia] = @OidMembresia
      ,[NumeroControlAsistencia] = @NumeroControlAsistencia
      ,[MontoDescuentoAutorizado] = @MontoDescuentoAutorizado
      ,Activo= @Activo
      ,Suspendido= @Suspendido
      ,Baja= @Baja
      ,FechaSuspension = @FechaSuspension
      ,UsuarioSuspension = @UsuarioSuspension
      ,MotivoSuspension = @MotivoSuspension
      ,FechaBaja= @FechaBaja
      ,UsuarioBaja = @UsuarioBaja
      ,MotivoBaja = @MotivoBaja
where Oid = @Oid">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OidAlumno"></asp:Parameter>
            <asp:Parameter Name="OidMembresia"></asp:Parameter>
            <asp:Parameter Name="NumeroControlAsistencia"></asp:Parameter>
            <asp:Parameter Name="MontoDescuentoAutorizado"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="Suspendido"></asp:Parameter>
            <asp:Parameter Name="Baja"></asp:Parameter>
            <asp:Parameter Name="FechaSuspension"></asp:Parameter>
            <asp:Parameter Name="UsuarioSuspension"></asp:Parameter>
            <asp:Parameter Name="MotivoSuspension"></asp:Parameter>
            <asp:Parameter Name="FechaBaja"></asp:Parameter>
            <asp:Parameter Name="UsuarioBaja"></asp:Parameter>
            <asp:Parameter Name="MotivoBaja"></asp:Parameter>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
      <br />
     <br />
    <br />
    <dx:ASPxPopupControl
        ID="popupEliminar"
        ClientInstanceName="popupEliminar"
        runat="server"
        Modal="true"
        CloseOnEscape="true" HeaderText="¿Está seguro de continuar con la eliminación de esta membrecía?"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-12"> 
                        <h5 style="padding: 10px">Si el cargo fue verificado no se eliminará, sino que se suspenderá</h5>

  <div class="buttonsContainer text-right" style="padding: 10px">
                    <dx:ASPxButton ID="btnEliminarTutor" AutoPostBack="false" runat="server" Text="Confirmar" Width="100" BackColor="#FF3547" CssClass="btn-danger" OnClick="btnEliminarTutor_Click">
                        <ClientSideEvents Click="fncConfirmarEliminar" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCancelarTutor" runat="server" Text="Cancelar" AutoPostBack="false" Width="100" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="fncCancelarEliminar" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
                        </div>
                    </div>
             
              
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <asp:SqlDataSource ID="SqlDSMembrecias" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [Descripcion] FROM [ClubMembresias] WHERE ([OidClub] = @OidClub)">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
<%--    <dx:ASPxPopupControl ID="popupAgregarEditar" runat="server" ClientInstanceName="popupAgregarEditar">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <div class="row">
                    <div>
                        Nombre:
                    </div>
                    <div>
                        Apellidos:
                    </div>
                    <div>
                        Membrecía:
                    </div>
                    <div>
                        Costo:
                    </div>
                    <div>
                        Descuento autorizado:
                    </div>
                    <div>
                        Núm de control:
                    </div>
                    <div>
                        <dx:ASPxButton ID="btnAgregarEditar" AutoPostBack="false" runat="server" Text="Confirmar" Width="100" BackColor="#FF3547" CssClass="btn-danger">
                            <ClientSideEvents Click="fncConfirmarEdicion" />
                            <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                        </dx:ASPxButton>
                        <dx:ASPxButton ID="btnCancelarEdicion" runat="server" Text="Cancelar" AutoPostBack="false" Width="100" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                            <ClientSideEvents Click="fncCancelarEdicion" />
                            <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                        </dx:ASPxButton>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>--%>

    <dx:ASPxPopupControl ID="popupNuevo" ClientInstanceName="popupNuevo" runat="server" PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"  HeaderText="Crear" Modal="true">
          <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="form-group">
                                <label>Alumno:</label>
                                <dx:ASPxComboBox ID="ddlAlumnes" runat="server" SelectedIndex="0" DataSourceID="SqlDSAlumnosClub" TextField="NombreCompleto" ValueField="OIDAlumnos" style="width:100%">
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource runat="server" ID="SqlDSAlumnosClub" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDAlumnos], LTRIM(RTRIM([Apellidos] )) + ' '  + rtrim([Nombre]) as 'NombreCompleto' FROM [ClubAlumnos] WHERE ([OidClub] = @OidClub) ORDER BY [Apellidos]">
                                    <SelectParameters>
                                        <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub"></asp:SessionParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="form-group">
                                <label>Membrecía:</label>
                                <dx:ASPxComboBox ID="ddlTipoMembrecia" SelectedIndex="0" runat="server" DataSourceID="SqlDSMembrecias" TextField="Descripcion" ValueField="Oid" style="width:100%"></dx:ASPxComboBox>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="form-group">
                                <label>Núm. control:</label>
                                <asp:TextBox ID="txtNumControl" runat="server" CssClass="form-control" Style="width: 100%" onkeypress="return onlyDotsAndNumbers(this,event);"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="form-group">
                                <label>Descuento autorizado:</label>
                                <asp:TextBox ID="txtDescuentoAutorizado" Text="0" runat="server" CssClass="form-control" Style="width: 100%" onkeypress="return onlyDotsAndNumbers(this,event);"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="form-group">
                                <label>Activo:</label>
                                <asp:CheckBox ID="chkActivo" runat="server"  Checked="true"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 text-right">
                            <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger" OnClick="ASPxButton1_Click">
                                <ClientSideEvents Click="fncConfirmarMembrecia" />
                                <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/iconos/save.png" Width="32px">
                                </Image>
                            </dx:ASPxButton>
                            <%--<input type="button" value="Confirmar" style="background-color: #FF3547; width:100%;"  class="btn-danger"  onclick="fncConfirmarSuspension()"  runat="server" onserverclick="btnAgregarEditar_Click"/>--%>
                            <dx:ASPxButton ID="ASPxButton2" runat="server" AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                                <ClientSideEvents Click="fncCancelarMembrecia" />
                                <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/iconos/cancel2.png" Width="32px">
                                </Image>
                            </dx:ASPxButton>
                        </div>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupSuspender" Modal="true"
        CloseOnEscape="true" HeaderText="Suspender"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        ClientInstanceName="popupSuspender" runat="server">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <div class="container">
                    <dx:ASPxCallbackPanel ID="callBackSuspension" ClientInstanceName="callBackSuspension" runat="server" Width="100%" OnCallback="callBackSuspension_Callback"><PanelCollection><dx:PanelContent>
                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="form-group">
                                <label>Fecha:</label>
                                <asp:TextBox ID="txtFechaSuspension" runat="server" Width="100%" ReadOnly="true" class="form-control" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <div class="form-group">
                                <label>Usuario:</label>
                                <asp:TextBox ID="txtUsuarioSuspension" runat="server" Width="100%" ReadOnly="true" class="form-control" ></asp:TextBox>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="form-group">
                                <label>Motivo:</label>
                                <asp:TextBox ID="txtMotivoSuspension"  Style="resize: none" class="form-control" runat="server" Width="100%" TextMode="MultiLine" Rows="5"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    </dx:PanelContent>
                    </PanelCollection>
                    </dx:ASPxCallbackPanel>
                    <div class="row">
                        <div class="col-lg-12 text-right">
                            <dx:ASPxButton ID="btnSuspender" runat="server"  AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger" OnClick="btnSuspender_Click" >
                                <ClientSideEvents Click="fncConfirmarSuspension" />
                                  <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/iconos/save.png" Width="32px">
                </Image>
                            </dx:ASPxButton>
                            <%--<input type="button" value="Confirmar" style="background-color: #FF3547; width:100%;"  class="btn-danger"  onclick="fncConfirmarSuspension()"  runat="server" onserverclick="btnAgregarEditar_Click"/>--%>
                            <dx:ASPxButton ID="btnCancelarEdicion" runat="server"  AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                                <ClientSideEvents Click="fncCancelarSuspension" />
                                 <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/iconos/cancel2.png" Width="32px">
                </Image>
                            </dx:ASPxButton>
                        </div>
                    </div>
                    <br />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <asp:SqlDataSource ID="SqlDSUsuarios" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDUsuario], [Correo] FROM [OpeUsuarios] WHERE ([OIDEmpresa] = @OIDEmpresa) ORDER BY [Correo] DESC">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

     <dx:ASPxPopupControl
        ID="popupPagar"
        ClientInstanceName="popupPagar"
        runat="server"
        Modal="true"
        CloseOnEscape="true" 
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Font-Bold="False"  Width="550px" HeaderText="¡Advertencia!">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" >
<Paddings Padding="0px" PaddingTop="12px"></Paddings>
        </ContentStyle>
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" BackColor="#f7aa00" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container-fluid" style="padding: 10px">

                    <div class="row" style="margin-bottom:5px">
                        <div class="col-12">
                            <asp:Label ID="lblTxtMensaje" runat="server" Text="¿Están seguros de realizar la aplicación?"></asp:Label></div>
                    </div>
                    <div class="row text-right">
                        <div class="col-12">
                            <div class="buttonsContainer">
                              
                                <%--<asp:Button ID="btnConfirmar" runat="server" Text="Button" OnClick="btnConfirmar_Click" OnClientClick="function (s, e) { popupPagar.Hide(); }"  BackColor="#FF3547" ForeColor="White" CssClass="btn btn-danger fondo"  Width="100"/>--%>
                                <asp:ImageButton   ID="btnConfirmar23" runat="server" Text="Button" OnClick="btnConfirmar23_Click" OnClientClick="function (s, e) { popupPagar.Hide(); }" CssClass="btn"  Width="60px" ImageUrl="/Content/iconos/save.png" ToolTip="Guardar" />
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



    <dx:ASPxPopupControl
        ID="popupBaja" Modal="true"
        CloseOnEscape="true" HeaderText="Suspender"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        ClientInstanceName="popupBaja" runat="server">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <div class="container">
                    <dx:ASPxCallbackPanel ID="callbackBaja" ClientInstanceName="callbackBaja" runat="server" Width="100%" OnCallback="callbackBaja_Callback">
                        <PanelCollection>
                            <dx:PanelContent>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>Fecha:</label>
                                            <asp:TextBox ID="txtFechaBaja" runat="server" Width="100%" ReadOnly="true" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>Usuario:</label>
                                            <asp:TextBox ID="txtUsuarioBaja" runat="server" Width="100%" ReadOnly="true" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>Motivo:</label>
                                            <asp:TextBox runat="server" runat="server" Width="100%" TextMode="MultiLine" Rows="5" ID="txtMotivoBaja"  Style="resize: none"  class="form-control"/>
                                            <%--<asp:TextBox required></asp:TextBox>--%>
                                        </div>
                                    </div>
                                </div>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxCallbackPanel>
                    <div class="row">
                        <div class="col-lg-12 text-right">
                            <dx:ASPxButton ID="btnConfirmarBaja" runat="server" AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger" OnClick="btnConfirmarBaja_Click">
                                <ClientSideEvents Click="fncConfirmarBaja" />
                                 <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/iconos/save.png" Width="32px">
                </Image>
                            </dx:ASPxButton>
                            <%--<input type="button" value="Confirmar" style="background-color: #FF3547; width:100%;"  class="btn-danger"  onclick="fncConfirmarSuspension()"  runat="server" onserverclick="btnAgregarEditar_Click"/>--%>
                            <dx:ASPxButton ID="btnCancelarBaja" runat="server" AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                                <ClientSideEvents Click="fncCancelarBaja" />
                                <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/iconos/cancel2.png" Width="32px">
                </Image>
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
