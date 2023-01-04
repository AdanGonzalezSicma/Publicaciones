<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="Sistema_web.AlumnosySocios.Alumnos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Alumnos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenAlumno" ClientInstanceName="hiddenAlumno" runat="server"></dx:ASPxHiddenField>
    <script>
        var idDocumento;
        var visibleIndex;
        function fncConfirmarEliminarAlumno() {
            popupEliminarAlumno.Hide();
            LoadingSiteMaster.Show();
        }
        function fncCancelarEliminarAlumno() {
            popupEliminarAlumno.Hide();
        }
        function fncConfirmarEliminarTutor() {
            popupEliminarTutor.Hide();
            LoadingSiteMaster.Show();
        }
        function fncCancelarEliminarTutor() {
            popupEliminarTutor.Hide();
        }
        function OnToolbarItemClick(s, e) {

            if (e.item.name == 'EliminarAlumno') {
                visibleIndex = gridAlumno.GetFocusedRowIndex();
                idDocumento = gridAlumno.GetRowKey(visibleIndex);
                if (visibleIndex     > -1) {
                    popupEliminarAlumno.Show();
                }
            }
            if (e.item.name == 'EliminarTutor') {
                visibleIndex = gridTutores.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                idDocumento = gridTutores.GetRowKey(visibleIndex);
                    popupEliminarTutor.Show();
                }
            }
            if (e.item.name == 'PadresTutoresAlumnos') {
                visibleIndex = gridAlumno.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                idDocumento = gridAlumno.GetRowKey(visibleIndex);
                hiddenAlumno.Set("OIDAlumno", idDocumento);
                popupTutores.Show();
                }
            }
            if (e.item.name == 'btnSuspender') {
                visibleIndex = gridAlumno.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                idDocumento = gridAlumno.GetRowKey(visibleIndex);
                hiddenAlumno.Set("OIDAlumno", idDocumento);
                     document.getElementById("ContentPlaceHolder1_popupSuspender_callBackSuspension_txtMotivoSuspension").required = true;
                     document.getElementById("ContentPlaceHolder1_popupSuspender_callBackSuspension_txtFechaSuspension").required = true;
                    callBackSuspension.PerformCallback();
                popupSuspender.Show();
                }
            }
        }
         window.onload = function active() {
            var act = document.getElementById("Alumnos");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
             }
              var act2 = document.getElementById("label3");
            if (act2.className.match("tab3")) {
                act2.className ="tab active";
            } else {
                act2.remove.className("active");
            }

    
        }
        function fncConfirmarSuspension() {
             visibleIndex = gridAlumno.GetFocusedRowIndex();
            if (visibleIndex > -1) {
                idDocumeno = gridAlumno.GetRowKey(visibleIndex);
                hiddenAlumno.Set("OIDAlumno", idDocumento);
            popupSuspender.Hide();
            }
        }
        function fncCancelarSuspension() {
            popupSuspender.Hide();
        }
    </script>
    <style>
        #ContentPlaceHolder1_gridAlumno_DXPEForm_DXEFL_7{
            width:100%!important
        }
        .dxbButton_Material{
            box-shadow:none!important
        }
    </style>
     <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 col-lg-10 col-md-6">
                    <h3 class="m-0" style="padding: 15px"><b>Alumnos</b></h3>
                </div>
             
            </div>
        </div>
    </div>
    <br />

    <dx:ASPxGridView 
        ID="gridAlumno"        
        ClientInstanceName="gridAlumno" 
        runat="server" SettingsExport-FileName="Listado de Alumnos" StylesExport-Cell-Font-Size="Medium"
        AutoGenerateColumns="False" 
        DataSourceID="SqlDSAlumno" 
        KeyFieldName="OIDAlumnos" OnInitNewRow="gridAlumno_InitNewRow" OnRowInserting="gridAlumno_RowInserting" OnRowUpdating="gridAlumno_RowUpdating" Width="100%">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>
        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="WYSIWYG" />
        <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true">
<AdaptiveDetailLayoutProperties ColCount="1">
    <Items>
        <dx:GridViewColumnLayoutItem ColumnName="Nombre" ColSpan="1"></dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="Apellidos" ColSpan="1"></dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="NIP" ColSpan="1"></dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="OidDisciplina" ColSpan="1"></dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="CorreoElectronico" ColSpan="1"></dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="TelMovil" ColSpan="1"></dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="InstitucionEdicativa" ColSpan="1"></dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1"></dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="Suspendido" ColSpan="1"></dx:GridViewColumnLayoutItem>

    </Items>
</AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
        <SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
           <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

<StylesExport>
<Cell Font-Size="Medium"></Cell>
</StylesExport>

        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" FixedHeader="False" />
            </EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewTabbedLayoutGroup ColSpan="1" Width="100%">
                    <Items>
                        <dx:GridViewLayoutGroup Caption="Datos Alumno" ColCount="1" ColSpan="1">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="Nombre" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Apellidos" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="G&#233;nero" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="OidDisciplina" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="NIP" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="FechaNacimiento" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="CURP" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="CorreoElectronico" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TelFijo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TelMovil" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="InstitucionEdicativa" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="InstitucionTelefono" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="InstitucionEntrenador" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                        <dx:GridViewLayoutGroup ColCount="1" ColSpan="1" Caption="M&#225;s Datos">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="TipoDisciplina" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TipoPersonalizado" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="FechaIngreso" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="FechaRegistro" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="OidNivelDeIngreso" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="OidNivelDeseado" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                    </Items>
                </dx:GridViewTabbedLayoutGroup>

                <dx:GridViewTabbedLayoutGroup Caption="" ColSpan="1" Width="100%" ActiveTabIndex="1">
                    <Items>
                        <dx:GridViewLayoutGroup Caption="Datos Tutor" ColCount="1" ColSpan="1">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="TutorNombre" Caption="Nombre" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TutorTelFijo" Caption="Tel. Fijo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TutorTelMovil" Caption="Tel. M&#243;vil" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TutorCorreoElectronico" Caption="Correo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="ComentariosTutor" Caption="Anotaciones Tutor" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Anotaciones Disciplina Club" Caption="Anotaciones Disciplina" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Anotaciones Generales Club" Caption="Anotaciones Generales" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                        <dx:GridViewLayoutGroup Caption="Servicio M&#233;dico" ColCount="1" ColSpan="1">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="TipoServicioMedico" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="PolizaServicioMedico" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                    </Items>
                </dx:GridViewTabbedLayoutGroup>
                <dx:GridViewColumnLayoutItem ColumnName="OIDTipoAlumno" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Suspendido" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaSuspendido" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="MotivoSuspendido" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
            <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit"></SettingsAdaptivity>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDAlumnos" ReadOnly="True" VisibleIndex="2" Visible="True" Caption="No.">
                <CellStyle HorizontalAlign="Center"></CellStyle>
                <EditFormSettings Visible="False"></EditFormSettings>
                <FilterCellStyle HorizontalAlign="Center"></FilterCellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="3" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidUsuario" VisibleIndex="4" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Guid" VisibleIndex="5" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
                <PropertiesTextEdit MaxLength="50">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellidos" VisibleIndex="1">
                <PropertiesTextEdit MaxLength="50">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NIP" VisibleIndex="6">
                <PropertiesTextEdit MaxLength="4">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaNacimiento" Caption="Nacimiento" VisibleIndex="8" Visible="True">
                <CellStyle HorizontalAlign="Center"></CellStyle>
                <PropertiesDateEdit DisplayFormatString="yyyy">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaIngreso" VisibleIndex="18">
                <PropertiesDateEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CURP" VisibleIndex="9">
                <PropertiesTextEdit MaxLength="18">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="10" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaUltimaEvaluacion" VisibleIndex="14" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CorreoElectronico" VisibleIndex="15">
                <PropertiesTextEdit MaxLength="50">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelFijo" VisibleIndex="16" Visible="False">
                <PropertiesTextEdit MaxLength="20">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelMovil" VisibleIndex="17" Caption="Celular">
                <PropertiesTextEdit MaxLength="20">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionEdicativa" VisibleIndex="19" Caption="Instituci&#243;n Educativa" Visible="False">
                <PropertiesTextEdit MaxLength="50"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionTelefono" VisibleIndex="20" Visible="False">
                <PropertiesTextEdit MaxLength="15"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionEntrenador" VisibleIndex="21" Visible="False">
                <PropertiesTextEdit MaxLength="50"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorNombre" VisibleIndex="22" Visible="False">
                <PropertiesTextEdit MaxLength="100"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorTelFijo" VisibleIndex="23" Visible="False">
                <PropertiesTextEdit MaxLength="15"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorTelMovil" VisibleIndex="24" Visible="False">
                <PropertiesTextEdit MaxLength="15"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorCorreoElectronico" VisibleIndex="25" Visible="False">
                <PropertiesTextEdit MaxLength="50"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="0"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="Suspendido" VisibleIndex="31"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="FechaSuspendido" VisibleIndex="32" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="MotivoSuspendido" VisibleIndex="33" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TipoServicioMedico" VisibleIndex="34" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PolizaServicioMedico" VisibleIndex="35" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TipoPersonalizado" VisibleIndex="37" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidDisciplina" Caption="Diciplina" VisibleIndex="7" Visible="False">
                <PropertiesComboBox DataSourceID="SqlDSDisciplinas" TextField="Nombre" ValueField="OIDDiciplinas">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidNivelDeIngreso" Caption="Nivel Ingreso" VisibleIndex="11" Visible="False">
                <PropertiesComboBox DataSourceID="SqlDSNiveles" TextField="Descripcion" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidNivelDeseado" Caption="Nivel Deseado" VisibleIndex="12" Visible="False">
                <PropertiesComboBox DataSourceID="SqlDSNiveles" TextField="Descripcion" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidNivelUltimaEvaluacion" Caption="Ultimo Nivel" Visible="False" VisibleIndex="13"></dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="OIDTipoAlumno" VisibleIndex="29" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn FieldName="ComentariosTutor" VisibleIndex="26" Visible="False">
                <PropertiesMemoEdit Rows="3"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataTextColumn FieldName="TipoDisciplina" VisibleIndex="36" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn FieldName="AnotacionesDisciplinaClub" Visible="False" VisibleIndex="27"></dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="AnotacionesGeneralesClub" Visible="False" VisibleIndex="28">
                <PropertiesMemoEdit Rows="3"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataComboBoxColumn FieldName="Sexo" Caption="G&#233;nero" VisibleIndex="38">
                <PropertiesComboBox NullText="Seleccione su g&#233;nero">
                    <Items>
                        <dx:ListEditItem Text="Masculino" Value="1"></dx:ListEditItem>
                        <dx:ListEditItem Text="Femenino" Value="2"></dx:ListEditItem>
                    </Items>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>

        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="ToolAlumnos">
                <Items>
                    <dx:GridViewToolbarItem Command="New" Name="NuevoAlumno" BeginGroup="True" Text="Nuevo">
                        <Image Height="32px" Width="32px" AlternateText="Nuevo" Url="~/Content/Iconos/nuevo.png" UrlChecked="~/Content/Iconos/nuevo.png" UrlDisabled="~/Content/Iconos/nuevo.png" UrlHottracked="~/Content/Iconos/nuevo.png" UrlSelected="~/Content/Iconos/nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Edit" Name="EditarAlumo" BeginGroup="True" Text="Editar">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="EliminarAlumno" BeginGroup="True" Text="Eliminar">
                        <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnSuspender" BeginGroup="True" Text="Suspender">
                        <Image Height="32px" Url="~/Content/iconos/suspender.png" UrlChecked="~/Content/iconos/suspender.png" UrlDisabled="~/Content/iconos/suspender.png" UrlHottracked="~/Content/iconos/suspender.png" UrlSelected="~/Content/iconos/suspender.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="PadresTutoresAlumnos" BeginGroup="True" Text="Padres/Tutores">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/empresa-v2.png" UrlChecked="~/Content/Iconos/empresa-v2.png" UrlDisabled="~/Content/Iconos/empresa-v2.png" UrlHottracked="~/Content/Iconos/empresa-v2.png" UrlSelected="~/Content/Iconos/empresa-v2.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="ExportarExcel" Command="ExportToXlsx" AdaptiveText="Exportar Excel" BeginGroup="True" Text="Exportar Excel">
                        <Image Height="32px" Url="~/Content/iconos/excel.png" UrlChecked="~/Content/iconos/excel.png" UrlDisabled="~/Content/iconos/excel.png" UrlHottracked="~/Content/iconos/excel.png" UrlSelected="~/Content/iconos/excel.png" Width="32px">
                        </Image>
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

    <asp:SqlDataSource runat="server" ID="SqlDSAlumno" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' DeleteCommand="DELETE FROM [dbo].[ClubAlumnos]  WHERE ([OidClub] = @OIDClub) " InsertCommand="INSERT INTO [dbo].[ClubAlumnos]
           ([OidClub]
           ,[OidUsuario]
           ,[Guid]
           ,[Nombre]
           ,[Apellidos]
           ,[NIP]
           ,[OidDisciplina]
           ,[FechaNacimiento]
           ,[CURP]
           ,[FechaIngreso]
           ,[FechaRegistro]
           ,[OidNivelDeIngreso]
           ,[OidNivelDeseado]
           ,[OidNivelUltimaEvaluacion]
           ,[FechaUltimaEvaluacion]
           ,[CorreoElectronico]
           ,[TelFijo]
           ,[TelMovil]
           ,[InstitucionEdicativa]
           ,[InstitucionTelefono]
           ,[InstitucionEntrenador]
           ,[TutorNombre]
           ,[TutorTelFijo]
           ,[TutorTelMovil]
           ,[TutorCorreoElectronico]
           ,[ComentariosTutor]
           ,[AnotacionesDisciplinaClub]
           ,[AnotacionesGeneralesClub]
           ,[OIDTipoAlumno]
           ,[Activo]
           ,[Suspendido]
           ,[FechaSuspendido]
           ,[MotivoSuspendido]
           ,[TipoServicioMedico]
           ,[PolizaServicioMedico]
           ,[TipoDisciplina]
           ,[TipoPersonalizado]
           ,[Sexo])
     VALUES
           (@OidClub
           ,@OidUsuario
           ,@Guid
           ,@Nombre
           ,@Apellidos
           ,@NIP
           ,@OidDisciplina
           ,@FechaNacimiento
           ,@CURP
           ,@FechaIngreso
           ,@FechaRegistro
           ,@OidNivelDeIngreso
           ,@OidNivelDeseado
           ,@OidNivelUltimaEvaluacion
           ,@FechaUltimaEvaluacion
           ,@CorreoElectronico
           ,@TelFijo 
           ,@TelMovil
           ,@InstitucionEdicativa 
           ,@InstitucionTelefono  
           ,@InstitucionEntrenador
           ,@TutorNombre
           ,@TutorTelFijo
           ,@TutorTelMovil
           ,@TutorCorreoElectronico
           ,@ComentariosTutor
           ,@AnotacionesDisciplinaClub
           ,@AnotacionesGeneralesClub
           ,@OIDTipoAlumno
           ,@Activo
           ,@Suspendido
           ,@FechaSuspendido
           ,@MotivoSuspendido
           ,@TipoServicioMedico
           ,@PolizaServicioMedico
           ,@TipoDisciplina
           ,@TipoPersonalizado
           ,@Sexo)"
        SelectCommand="SELECT [OIDAlumnos]
      ,[OidClub]
      ,[OidUsuario]
      ,[Guid]
      ,[Nombre]
      ,[Apellidos]
      ,[NIP]
      ,[OidDisciplina]
      ,[FechaNacimiento]
      ,[CURP]
      ,[FechaIngreso]
      ,[FechaRegistro]
      ,[OidNivelDeIngreso]
      ,[OidNivelDeseado]
      ,[OidNivelUltimaEvaluacion]
      ,[FechaUltimaEvaluacion]
      ,replace([CorreoElectronico],'@',' @') as 'CorreoElectronico'
      ,[TelFijo]
      ,[TelMovil]
      ,[InstitucionEdicativa]
      ,[InstitucionTelefono]
      ,[InstitucionEntrenador]
      ,[TutorNombre]
      ,[TutorTelFijo]
      ,[TutorTelMovil]
      ,[TutorCorreoElectronico]
      ,[ComentariosTutor]
      ,[AnotacionesDisciplinaClub]
      ,[AnotacionesGeneralesClub]
      ,[OIDTipoAlumno]
      ,[Activo]
      ,[Suspendido]
      ,[FechaSuspendido]
      ,[MotivoSuspendido]
      ,[TipoServicioMedico]
      ,[PolizaServicioMedico]
      ,[TipoDisciplina]
      ,[TipoPersonalizado]
      ,[Sexo]
  FROM [MyClub].[dbo].[ClubAlumnos] WHERE ([OidClub] = @OIDClub) AND (Activo = 1 ) ORDER BY [Apellidos]"
        UpdateCommand="UPDATE [dbo].[ClubAlumnos]
   SET [Nombre] = @Nombre
      ,[Apellidos] = @Apellidos
      ,[NIP] = @NIP
      ,[OidDisciplina] = @OidDisciplina
      ,[FechaNacimiento] = @FechaNacimiento
      ,[CURP] = @CURP
      ,[FechaRegistro] = @FechaRegistro
      ,[FechaIngreso] = @FechaIngreso
      ,[OidNivelDeIngreso] = @OidNivelDeIngreso
      ,[OidNivelDeseado] = @OidNivelDeseado
      ,[OidNivelUltimaEvaluacion] = @OidNivelUltimaEvaluacion
      ,[FechaUltimaEvaluacion] = @FechaUltimaEvaluacion
      ,[CorreoElectronico] = replace(@CorreoElectronico,' @','@')
      ,[TelFijo] = @TelFijo
      ,[TelMovil] = @TelMovil
      ,[InstitucionEdicativa] = @InstitucionEdicativa
      ,[InstitucionTelefono] = @InstitucionTelefono
      ,[InstitucionEntrenador] = @InstitucionEntrenador
      ,[TutorNombre] = @TutorNombre
      ,[TutorTelFijo] = @TutorTelFijo
      ,[TutorTelMovil] = @TutorTelMovil
      ,[TutorCorreoElectronico] = @TutorCorreoElectronico
      ,[ComentariosTutor] = @ComentariosTutor
      ,[AnotacionesDisciplinaClub] = @AnotacionesDisciplinaClub
      ,[AnotacionesGeneralesClub] = @AnotacionesGeneralesClub
      ,[Activo] = @Activo
      ,[TipoServicioMedico] = @TipoServicioMedico
      ,[PolizaServicioMedico] = @PolizaServicioMedico
      ,[TipoDisciplina] = @TipoDisciplina
      ,[TipoPersonalizado] = @TipoPersonalizado
      ,[Sexo] = @Sexo
 WHERE [OIDAlumnos] = @OIDAlumnos">
        <DeleteParameters>
            <asp:Parameter Name="OIDClub"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OidClub"></asp:Parameter>
            <asp:Parameter Name="OidUsuario"></asp:Parameter>
            <asp:Parameter Name="Guid"></asp:Parameter>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="Apellidos"></asp:Parameter>
            <asp:Parameter Name="NIP"></asp:Parameter>
            <asp:Parameter Name="OidDisciplina"></asp:Parameter>
            <asp:Parameter Name="FechaNacimiento"></asp:Parameter>
            <asp:Parameter Name="CURP"></asp:Parameter>
            <asp:Parameter Name="FechaIngreso"></asp:Parameter>
            <asp:Parameter Name="FechaRegistro"></asp:Parameter>
            <asp:Parameter Name="OidNivelDeIngreso"></asp:Parameter>
            <asp:Parameter Name="OidNivelDeseado"></asp:Parameter>
            <asp:Parameter Name="OidNivelUltimaEvaluacion"></asp:Parameter>
            <asp:Parameter Name="FechaUltimaEvaluacion"></asp:Parameter>
            <asp:Parameter Name="CorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="TelFijo"></asp:Parameter>
            <asp:Parameter Name="TelMovil"></asp:Parameter>
            <asp:Parameter Name="InstitucionEdicativa"></asp:Parameter>
            <asp:Parameter Name="InstitucionTelefono"></asp:Parameter>
            <asp:Parameter Name="InstitucionEntrenador"></asp:Parameter>
            <asp:Parameter Name="TutorNombre"></asp:Parameter>
            <asp:Parameter Name="TutorTelFijo"></asp:Parameter>
            <asp:Parameter Name="TutorTelMovil"></asp:Parameter>
            <asp:Parameter Name="TutorCorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="ComentariosTutor"></asp:Parameter>
            <asp:Parameter Name="AnotacionesDisciplinaClub"></asp:Parameter>
            <asp:Parameter Name="AnotacionesGeneralesClub"></asp:Parameter>
            <asp:Parameter Name="OIDTipoAlumno"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="Suspendido"></asp:Parameter>
            <asp:Parameter Name="FechaSuspendido"></asp:Parameter>
            <asp:Parameter Name="MotivoSuspendido"></asp:Parameter>
            <asp:Parameter Name="TipoServicioMedico"></asp:Parameter>
            <asp:Parameter Name="PolizaServicioMedico"></asp:Parameter>
            <asp:Parameter Name="TipoDisciplina"></asp:Parameter>
            <asp:Parameter Name="TipoPersonalizado"></asp:Parameter>
            <asp:Parameter Name="Sexo"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="Apellidos"></asp:Parameter>
            <asp:Parameter Name="NIP"></asp:Parameter>
            <asp:Parameter Name="OidDisciplina"></asp:Parameter>
            <asp:Parameter Name="FechaNacimiento"></asp:Parameter>
            <asp:Parameter Name="CURP"></asp:Parameter>
            <asp:Parameter Name="FechaRegistro"></asp:Parameter>
            <asp:Parameter Name="FechaIngreso"></asp:Parameter>
            <asp:Parameter Name="OidNivelDeIngreso"></asp:Parameter>
            <asp:Parameter Name="OidNivelDeseado"></asp:Parameter>
            <asp:Parameter Name="OidNivelUltimaEvaluacion"></asp:Parameter>
            <asp:Parameter Name="FechaUltimaEvaluacion"></asp:Parameter>
            <asp:Parameter Name="CorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="TelFijo"></asp:Parameter>
            <asp:Parameter Name="TelMovil"></asp:Parameter>
            <asp:Parameter Name="InstitucionEdicativa"></asp:Parameter>
            <asp:Parameter Name="InstitucionTelefono"></asp:Parameter>
            <asp:Parameter Name="InstitucionEntrenador"></asp:Parameter>
            <asp:Parameter Name="TutorNombre"></asp:Parameter>
            <asp:Parameter Name="TutorTelFijo"></asp:Parameter>
            <asp:Parameter Name="TutorTelMovil"></asp:Parameter>
            <asp:Parameter Name="TutorCorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="ComentariosTutor"></asp:Parameter>
            <asp:Parameter Name="AnotacionesDisciplinaClub"></asp:Parameter>
            <asp:Parameter Name="AnotacionesGeneralesClub"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="TipoServicioMedico"></asp:Parameter>
            <asp:Parameter Name="PolizaServicioMedico"></asp:Parameter>
            <asp:Parameter Name="TipoDisciplina"></asp:Parameter>
            <asp:Parameter Name="TipoPersonalizado"></asp:Parameter>
            <asp:Parameter Name="Sexo"></asp:Parameter>
            <asp:Parameter Name="OIDAlumnos"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
   <%-- <dx:ASPxGridView ID="gridAlumnos"
        ClientInstanceName="gridAlumnos"
        runat="server"
        AutoGenerateColumns="False" DataSourceID="SqlDSAlumnos" KeyFieldName="OIDAlumnos" Width="100%">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>

        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
          <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter"></EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewTabbedLayoutGroup ColSpan="2" ColumnSpan="2" ActiveTabIndex="2">
                    <Items>
                        <dx:GridViewLayoutGroup ColCount="1" ColSpan="1" Caption="Datos del Alumno" Name="DatosAlumnos">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="Nombre" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Apellidos" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="OidDisciplina" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="FechaNacimiento" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="CURP" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="CorreoElectronico" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TelFijo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TelMovil" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="InstitucionEdicativa" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="InstitucionTelefono" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="InstitucionEntrenador" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                        <dx:GridViewLayoutGroup ColCount="1" ColSpan="1" Caption="M&#225;s Informaci&#243;n" Name="MasDatos">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="FechaIngreso" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="FechaRegistro" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="OidNivelDeIngreso" Caption="Nivel de Ingreso" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="OidNivelDeseado" Caption="Nivel Deseado" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="OidNivelUltimaEvaluacion" Caption="Ultima Evaluaci&#243;n" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                        <dx:GridViewLayoutGroup ColCount="1" ColSpan="1" Caption="Datos del Tutor" Name="DatosTutor">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="TutorNombre" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TutorTelFijo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TutorTelMovil" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="TutorCorreoElectronico" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Anotaciones Tutor" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Anotaciones Disciplina Club" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                <dx:GridViewColumnLayoutItem ColumnName="Anotaciones Generales Club" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            </Items>
                        </dx:GridViewLayoutGroup>
                    </Items>
                </dx:GridViewTabbedLayoutGroup>

                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDAlumnos" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellidos" VisibleIndex="3">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaNacimiento" VisibleIndex="6">
                <PropertiesDateEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CURP" VisibleIndex="7">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaIngreso" VisibleIndex="8"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="9"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CorreoElectronico" VisibleIndex="10">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelFijo" VisibleIndex="11" Caption="Tel&#233;fono Fijo">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelMovil" VisibleIndex="12" Caption="Tel&#233;fono M&#243;vil">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionEdicativa" VisibleIndex="13">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionTelefono" VisibleIndex="14">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionEntrenador" VisibleIndex="15">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorNombre" VisibleIndex="16">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorTelFijo" VisibleIndex="17">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorTelMovil" VisibleIndex="18">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorCorreoElectronico" VisibleIndex="19">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidDisciplina" Caption="Disciplina" VisibleIndex="5" Visible="False">
                <PropertiesComboBox DataSourceID="SqlDSDisciplinas" TextField="Nombre" ValueField="OIDDiciplinas">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidNivelDeIngreso" VisibleIndex="20" Caption="Nivel de Ingreso">
                <PropertiesComboBox DataSourceID="SqlDSNiveles" TextField="Descripcion" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidNivelDeseado" VisibleIndex="21" Caption="Nivel Deseado">
                <PropertiesComboBox DataSourceID="SqlDSNiveles" TextField="Descripcion" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidNivelUltimaEvaluacion" Caption="&#218;ltima Evaluaci&#243;n" VisibleIndex="22">
                <PropertiesComboBox DataSourceID="SqlDSNiveles" TextField="Descripcion" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataMemoColumn FieldName="ComentariosTutor" Caption="Anotaciones Tutor" VisibleIndex="23">
                <PropertiesMemoEdit Rows="3"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="AnotacionesDisciplinaClub" VisibleIndex="24">
                <PropertiesMemoEdit Rows="3"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="AnotacionesGeneralesClub" VisibleIndex="25">
                <PropertiesMemoEdit Rows="3"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="ToolAlumnos">
                <Items>
                    <dx:GridViewToolbarItem Command="New" Name="NuevoAlumno" BeginGroup="True" Text="Nuevo">
                        <Image Height="32px" Width="32px" AlternateText="Nuevo" Url="~/Content/Iconos/nuevo.png" UrlChecked="~/Content/Iconos/nuevo.png" UrlDisabled="~/Content/Iconos/nuevo.png" UrlHottracked="~/Content/Iconos/nuevo.png" UrlSelected="~/Content/Iconos/nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Edit" Name="EditarAlumo" BeginGroup="True" Text="Editar">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="EliminarAlumno" BeginGroup="True" Text="Eliminar">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/delete.png" UrlChecked="~/Content/Iconos/delete.png" UrlDisabled="~/Content/Iconos/delete.png" UrlHottracked="~/Content/Iconos/delete.png" UrlSelected="~/Content/Iconos/delete.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="PadresTutoresAlumnos" BeginGroup="True" Text="Padres/Tutores">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/empresa-v2.png" UrlChecked="~/Content/Iconos/empresa-v2.png" UrlDisabled="~/Content/Iconos/empresa-v2.png" UrlHottracked="~/Content/Iconos/empresa-v2.png" UrlSelected="~/Content/Iconos/empresa-v2.png"></Image>
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
    
    <asp:SqlDataSource runat="server" ID="SqlDSAlumnos" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDAlumnos], [OidClub], [Nombre], [Apellidos], [OidDisciplina], [FechaNacimiento], [CURP], [FechaIngreso], [FechaRegistro], [OidNivelDeIngreso], [OidNivelDeseado], [OidNivelUltimaEvaluacion], [CorreoElectronico], [TelFijo], [TelMovil], [InstitucionEdicativa], [InstitucionTelefono], [InstitucionEntrenador], [TutorNombre], [TutorTelFijo], [TutorTelMovil], [TutorCorreoElectronico], [ComentariosTutor], [AnotacionesDisciplinaClub], [AnotacionesGeneralesClub] FROM [ClubAlumnos] WHERE ([OidClub] = @OidClub) ORDER BY [OidClub] DESC" DeleteCommand="DELETE FROM [MyClub].[dbo].[ClubAlumnos]
       WHERE OIDAlumnos = @OIDAlumnos"
        InsertCommand="INSERT INTO [MyClub].[dbo].[ClubAlumnos]
           ([OidClub]
           ,[Nombre]
           ,[Apellidos]
           ,[NIP]
           ,[OidDisciplina]
           ,[FechaNacimiento]
           ,[CURP]
           ,[FechaIngreso]
           ,[FechaRegistro]
           ,[OidNivelDeIngreso]
           ,[OidNivelDeseado]
           ,[OidNivelUltimaEvaluacion]
           ,[FechaUltimaEvaluacion]
           ,[CorreoElectronico]
           ,[TelFijo]
           ,[TelMovil]
           ,[InstitucionEdicativa]
           ,[InstitucionTelefono]
           ,[InstitucionEntrenador]
           ,[TutorNombre]
           ,[TutorTelFijo]
           ,[TutorTelMovil]
           ,[TutorCorreoElectronico]
           ,[ComentariosTutor]
           ,[AnotacionesDisciplinaClub]
           ,[AnotacionesGeneralesClub])
     VALUES
           (@OidClub
           ,@Nombre
           ,@Apellidos
           ,@NIP
           ,@OidDisciplina
           ,@FechaNacimiento
           ,@CURP
           ,@FechaIngreso
           ,@FechaRegistro
           ,@OidNivelDeIngreso
           ,@OidNivelDeseado
           ,@OidNivelUltimaEvaluacion
           ,@FechaUltimaEvaluacion
           ,@CorreoElectronico
           ,@TelFijo
           ,@TelMovil
           ,@InstitucionEdicativa
           ,@InstitucionTelefono
           ,@InstitucionEntrenador
           ,@TutorNombre
           ,@TutorTelFijo
           ,@TutorTelMovil
           ,@TutorCorreoElectronico
           ,@ComentariosTutor
           ,@AnotacionesDisciplinaClub
           ,@AnotacionesGeneralesClub)"
        UpdateCommand="UPDATE [MyClub].[dbo].[ClubAlumnos]
   SET [Nombre] = @Nombre
      ,[Apellidos] = @Apellidos
      ,[NIP] = @NIP
      ,[OidDisciplina] = @OidDisciplina
      ,[FechaNacimiento] = @FechaNacimiento
      ,[CURP] = @CURP
      ,[OidNivelUltimaEvaluacion] = @OidNivelUltimaEvaluacion
      ,[FechaUltimaEvaluacion] = @FechaUltimaEvaluacion
      ,[CorreoElectronico] = @CorreoElectronico
      ,[TelFijo] = @TelFijo
      ,[TelMovil] = @TelMovil
      ,[InstitucionEdicativa] = @InstitucionEdicativa
      ,[InstitucionTelefono] = @InstitucionTelefono
      ,[InstitucionEntrenador] = @InstitucionEntrenador
      ,[TutorNombre] = @TutorNombre
      ,[TutorTelFijo] = @TutorTelFijo
      ,[TutorTelMovil] = @TutorTelMovil
      ,[TutorCorreoElectronico] = @TutorCorreoElectronico
      ,[AnotacionesDisciplinaClub] = @AnotacionesDisciplinaClub
      ,[AnotacionesGeneralesClub] = @AnotacionesGeneralesClub
 WHERE OIDAlumnos = @OIDAlumnos">
        <DeleteParameters>
            <asp:Parameter Name="OIDAlumnos"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OidClub"></asp:Parameter>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="Apellidos"></asp:Parameter>
            <asp:Parameter Name="NIP"></asp:Parameter>
            <asp:Parameter Name="OidDisciplina"></asp:Parameter>
            <asp:Parameter Name="FechaNacimiento"></asp:Parameter>
            <asp:Parameter Name="ImagenActaNacimiento"></asp:Parameter>
            <asp:Parameter Name="CURP"></asp:Parameter>
            <asp:Parameter Name="ImagenCURP"></asp:Parameter>
            <asp:Parameter Name="FechaIngreso"></asp:Parameter>
            <asp:Parameter Name="FechaRegistro"></asp:Parameter>
            <asp:Parameter Name="OidNivelDeIngreso"></asp:Parameter>
            <asp:Parameter Name="OidNivelDeseado"></asp:Parameter>
            <asp:Parameter Name="OidNivelUltimaEvaluacion"></asp:Parameter>
            <asp:Parameter Name="FechaUltimaEvaluacion"></asp:Parameter>
            <asp:Parameter Name="CorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="TelFijo"></asp:Parameter>
            <asp:Parameter Name="TelMovil"></asp:Parameter>
            <asp:Parameter Name="InstitucionEdicativa"></asp:Parameter>
            <asp:Parameter Name="InstitucionTelefono"></asp:Parameter>
            <asp:Parameter Name="InstitucionEntrenador"></asp:Parameter>
            <asp:Parameter Name="TutorNombre"></asp:Parameter>
            <asp:Parameter Name="TutorTelFijo"></asp:Parameter>
            <asp:Parameter Name="TutorTelMovil"></asp:Parameter>
            <asp:Parameter Name="TutorCorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="ComentariosTutor"></asp:Parameter>
            <asp:Parameter Name="AnotacionesDisciplinaClub"></asp:Parameter>
            <asp:Parameter Name="AnotacionesGeneralesClub"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="Apellidos"></asp:Parameter>
            <asp:Parameter Name="NIP"></asp:Parameter>
            <asp:Parameter Name="OidDisciplina"></asp:Parameter>
            <asp:Parameter Name="FechaNacimiento"></asp:Parameter>
            <asp:Parameter Name="ImagenActaNacimiento"></asp:Parameter>
            <asp:Parameter Name="CURP"></asp:Parameter>
            <asp:Parameter Name="ImagenCURP"></asp:Parameter>
            <asp:Parameter Name="OidNivelUltimaEvaluacion"></asp:Parameter>
            <asp:Parameter Name="FechaUltimaEvaluacion"></asp:Parameter>
            <asp:Parameter Name="CorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="TelFijo"></asp:Parameter>
            <asp:Parameter Name="TelMovil"></asp:Parameter>
            <asp:Parameter Name="InstitucionEdicativa"></asp:Parameter>
            <asp:Parameter Name="InstitucionTelefono"></asp:Parameter>
            <asp:Parameter Name="InstitucionEntrenador"></asp:Parameter>
            <asp:Parameter Name="TutorNombre"></asp:Parameter>
            <asp:Parameter Name="TutorTelFijo"></asp:Parameter>
            <asp:Parameter Name="TutorTelMovil"></asp:Parameter>
            <asp:Parameter Name="TutorCorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="AnotacionesDisciplinaClub"></asp:Parameter>
            <asp:Parameter Name="AnotacionesGeneralesClub"></asp:Parameter>
            <asp:Parameter Name="OIDAlumnos"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>--%>
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
                    <dx:ASPxCallbackPanel ID="callBackSuspension" ClientInstanceName="callBackSuspension" runat="server" Width="100%" OnCallback="callBackSuspension_Callback">
                        <PanelCollection>
                            <dx:PanelContent>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>Fecha:</label>
                                            <asp:TextBox ID="txtFechaSuspension" runat="server" Width="100%" ReadOnly="true" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>Motivo:</label>
                                            <asp:TextBox ID="txtMotivoSuspension" Style="resize: none" class="form-control" runat="server" Width="100%" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxCallbackPanel>
                    <div class="row">
                        <div class="col-lg-12 text-right">
                            <dx:ASPxButton ID="btnSuspender" runat="server" AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger" OnClick="btnSuspender_Click">
                                <ClientSideEvents Click="fncConfirmarSuspension" />
                                <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/iconos/save.png" Width="32px">
                                </Image>
                            </dx:ASPxButton>
                            <%--<input type="button" value="Confirmar" style="background-color: #FF3547; width:100%;"  class="btn-danger"  onclick="fncConfirmarSuspension()"  runat="server" onserverclick="btnAgregarEditar_Click"/>--%>
                            <dx:ASPxButton ID="btnCancelarEdicion" runat="server" AutoPostBack="false" Width="50" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
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
    <asp:SqlDataSource ID="SqlDSDisciplinas" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDDiciplinas], [Nombre] FROM [CatDisciplinas]"></asp:SqlDataSource>
    <dx:ASPxPopupControl
        ID="popupEliminarAlumno"
        ClientInstanceName="popupEliminarAlumno"
        runat="server"
        Modal="true"
        ShowFooter="true"
        CloseOnEscape="true" HeaderText="Eliminar Alumno"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
          <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                
                <div class="row">
                    <div class="col-12">
                        <h5 style="padding: 10px">¿Está seguro de continuar con la eliminación de este alumno? Si procede se eliminarán también todos los datos asociados</h5>
                    </div>
                </div>
                <br />
            </dx:PopupControlContentControl>
        </ContentCollection>
        <FooterTemplate>
            <dx:ASPxFormLayout runat="server" ID="footerFormLayout" Width="100%" CssClass="clearPaddings">
                <Styles LayoutItem-CssClass="clearPaddings" LayoutGroup-CssClass="clearPaddings" />
                <Items>
                    <dx:LayoutGroup GroupBoxDecoration="None">
                        <Paddings Padding="0" />
                        <Items>
                            <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer>
                                        <div class="buttonsContainer">
                                            <dx:ASPxButton ID="btnEliminarAlumnos" AutoPostBack="false" runat="server"  Text="Confirmar" Width="100"  BackColor="#FF3547" CssClass="btn-danger">
                                                <ClientSideEvents Click="fncConfirmarEliminarAlumno" />
                                                <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                                            </dx:ASPxButton>
                                            <dx:ASPxButton ID="btnCancelar" runat="server" Text="Cancelar" AutoPostBack="false" Width="100" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                                                <ClientSideEvents Click="fncCancelarEliminarAlumno" />
                                                 <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                                            </dx:ASPxButton>
                                        </div>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                        </Items>
                    </dx:LayoutGroup>
                </Items>
            </dx:ASPxFormLayout>
        </FooterTemplate>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popupTutores" ClientInstanceName="popupTutores" runat="server"
        Modal="true"
        CloseOnEscape="true"
        PopupHorizontalAlign="WindowCenter" HeaderText="Listado de Padres/Tutores"
        PopupVerticalAlign="WindowCenter">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" >
<Paddings Padding="0px" PaddingTop="12px"></Paddings>
        </ContentStyle>
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter"  />

        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <dx:ASPxGridView ID="gridTutores" ClientInstanceName="gridTutores" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSTutores" KeyFieldName="OIDTutor" Width="100%" OnRowInserting="gridTutores_RowInserting">
<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsEditing Mode="PopupEditForm"></SettingsEditing>
                      <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
                    <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

                    <SettingsPopup>
                        <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" VerticalAlign="WindowCenter" />
                        </EditForm>
                    </SettingsPopup>

                    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColumnName="Nombres" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="Apellidos" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="FechaNacimiento" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="Telefono" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="Correo" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDTutor" ReadOnly="True" VisibleIndex="0" Visible="False">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDAlumno" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombres" VisibleIndex="3" Width="26%">
                            <PropertiesTextEdit>
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Apellidos" VisibleIndex="4" Width="26%">
                            <PropertiesTextEdit>
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaNacimiento" VisibleIndex="5" Width="12%">
                            <PropertiesDateEdit>
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="6" Width="12%">
                            <PropertiesTextEdit>
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="7" Width="22%">
                            <PropertiesTextEdit>
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="ToolTutores">
                            <Items>
                                <dx:GridViewToolbarItem Name="NuevoTutor" BeginGroup="True" Text="Nuevo" Command="New">
                                    <Image Height="32px" Width="32px" AlternateText="Nuevo" Url="~/Content/Iconos/nuevo.png" UrlChecked="~/Content/Iconos/nuevo.png" UrlDisabled="~/Content/Iconos/nuevo.png" UrlHottracked="~/Content/Iconos/nuevo.png" UrlSelected="~/Content/Iconos/nuevo.png"></Image>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="EditarTutor" BeginGroup="True" Text="Editar" Command="Edit">
                                    <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="EliminarTutor" BeginGroup="True" Text="Eliminar">
                                    <Image Height="32px" Width="32px" Url="~/Content/Iconos/delete.png" UrlChecked="~/Content/Iconos/delete.png" UrlDisabled="~/Content/Iconos/delete.png" UrlHottracked="~/Content/Iconos/delete.png" UrlSelected="~/Content/Iconos/delete.png"></Image>
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
                <asp:SqlDataSource runat="server" ID="SqlDSTutores" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDTutor], [OIDEmpresa], [OIDAlumno], [Nombres], [Apellidos], [FechaNacimiento], [Telefono], [Correo] FROM [OpeTutores] WHERE (([OIDEmpresa] = @OIDEmpresa) AND ([OIDAlumno] = @OIDAlumno))" DeleteCommand="DELETE FROM [MyClub].[dbo].[OpeTutores]
      WHERE OIDTutor = @OIDTutor"
                    InsertCommand="INSERT INTO [MyClub].[dbo].[OpeTutores]
           ([OIDEmpresa]
           ,[OIDAlumno]
           ,[Nombres]
           ,[Apellidos]
           ,[FechaNacimiento]
           ,[Telefono]
           ,[Correo])
     VALUES
           (@OIDEmpresa
           ,@OIDAlumno
           ,@Nombres
           ,@Apellidos
           ,@FechaNacimiento
           ,@Telefono
           ,@Correo)"
                    UpdateCommand="UPDATE [MyClub].[dbo].[OpeTutores]
   SET [OIDEmpresa] = @OIDEmpresa
      ,[OIDAlumno] = @OIDAlumno
      ,[Nombres] = @Nombres
      ,[Apellidos] = @Apellidos
      ,[FechaNacimiento] = @FechaNacimiento
      ,[Telefono] = @Telefono
      ,[Correo] = @Correo
 WHERE OIDTutor = @OIDTutor">
                    <DeleteParameters>
                        <asp:Parameter Name="OIDTutor"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OIDEmpresa"></asp:Parameter>
                        <asp:Parameter Name="OIDAlumno"></asp:Parameter>
                        <asp:Parameter Name="Nombres"></asp:Parameter>
                        <asp:Parameter Name="Apellidos"></asp:Parameter>
                        <asp:Parameter Name="FechaNacimiento"></asp:Parameter>
                        <asp:Parameter Name="Telefono"></asp:Parameter>
                        <asp:Parameter Name="Correo"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
                        <asp:ControlParameter ControlID="hiddenAlumno" Name="OIDAlumno" PropertyName="['OIDAlumno']" Type="Int32" DefaultValue="" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="OIDEmpresa"></asp:Parameter>
                        <asp:Parameter Name="OIDAlumno"></asp:Parameter>
                        <asp:Parameter Name="Nombres"></asp:Parameter>
                        <asp:Parameter Name="Apellidos"></asp:Parameter>
                        <asp:Parameter Name="FechaNacimiento"></asp:Parameter>
                        <asp:Parameter Name="Telefono"></asp:Parameter>
                        <asp:Parameter Name="Correo"></asp:Parameter>
                        <asp:Parameter Name="OIDTutor"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <asp:SqlDataSource ID="SqlDSNiveles" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [Descripcion] FROM [CatDisciplinasNiveles] WHERE ([Activo] = @Activo) ORDER BY [Descripcion]">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <dx:ASPxPopupControl 
        ID="popupEliminarTutor" 
        ClientInstanceName="popupEliminarTutor" 
        runat="server" 
        Modal="true"
        ShowFooter="true"
        CloseOnEscape="true" HeaderText="Eliminar Tutor"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
       <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
          <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                 <div class="row">
                    <div class="col-12">
                        <h5 style="padding: 10px">¿Está seguro de continuar con la eliminación del Tutor?</h5>
                    </div>
                </div>
                <br />
              
            </dx:PopupControlContentControl>
        </ContentCollection>
        <FooterTemplate>
              <dx:ASPxFormLayout runat="server" ID="footerFormLayout" Width="100%" CssClass="clearPaddings">
                <Styles LayoutItem-CssClass="clearPaddings" LayoutGroup-CssClass="clearPaddings" />
                <Items>
                    <dx:LayoutGroup GroupBoxDecoration="None">
                        <Paddings Padding="0" />
                        <Items>
                            <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer>
                                        <div class="buttonsContainer">
                    <dx:ASPxButton ID="btnEliminarTutor" AutoPostBack="false" runat="server"  Text="Confirmar" Width="100" BackColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="fncConfirmarEliminarTutor" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCancelarTutor" runat="server"  Text="Cancelar" AutoPostBack="false" Width="100" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="fncCancelarEliminarTutor" />
                         <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                        </Items>
                    </dx:LayoutGroup>
                </Items>
            </dx:ASPxFormLayout>
        </FooterTemplate>
        </dx:ASPxPopupControl>

    <br />
     <br />
     <br />
     <br />
     <br />
</asp:Content>
