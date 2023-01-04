<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Entrenadores-asistentes.aspx.cs" Inherits="Sistema_web.Personalizados.Entrenadores_asistentes" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    <script>    
        var visibleIndex;
        var idEntrenador;
        function OnToolbarItemClick(s, e) {
            if (e.item.name == "btnEliminar") {
                visibleIndex = gridEntrenadores.GetFocusedRowIndex();
                if (visibleIndex >= 0) {
                    idEntrenador = gridEntrenadores.GetRowKey(visibleIndex);
                    hiddenEntrenador.Set("OIDUsuario", idEntrenador)
                    popupEliminar.Show();
                }
            }
            if (e.item.name == "btnDatosGenerales") {
                visibleIndex = gridEntrenadores.GetFocusedRowIndex();
                if (visibleIndex >= 0) {
                    idEntrenador = gridEntrenadores.GetRowKey(visibleIndex);
                    hiddenEntrenador.Set("OIDUsuario", idEntrenador)
                    popupDatosGenerales.Show();
                    callBackDatosGenerales.PerformCallback();
                }
            }
        }
        function fncOcultarLograrEliminar() {
            loadingEliminar.Show();
            popupEliminar.Hide();
        }
        function fncOcultarEliminar() {
            popupEliminar.Hide();
        }
         window.onload = function active() {
            var act = document.getElementById("EntrenamientosP");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
    
        }
    </script>--%>
    <script>
        function OnToolbarItemClick(s,e) {
            if (e.item.name == "btnHorarios") {
                visibleIndex = gridEntrenadores.GetFocusedRowIndex();
                if (visibleIndex >= 0) {
                    idEntrenador = gridEntrenadores.GetRowKey(visibleIndex);
                    hiddenEntrenador.Set("OIDUsuario", idEntrenador)
                    popupHorarios.Show();
                    gridHorarios.Refresh();
                }
            }
            if (e.item.name == 'btnEliminarHorario') {
                visibleIndex = gridHorarios.GetFocusedRowIndex();
                if (visibleIndex >= 0) {
                    idEntrenador = gridHorarios.GetRowKey(visibleIndex);
                    hiddenEntrenador.Set("OIDUsuario", idEntrenador)
                    popupEliminarHorario.Show();
                }
            }
            if (e.item.name == 'btnDatosGenerales') {
                visibleIndex = gridEntrenadores.GetFocusedRowIndex();
                if (visibleIndex >= 0) {
                    idEntrenador = gridEntrenadores.GetRowKey(visibleIndex);
                    hiddenEntrenador.Set("OIDUsuario", idEntrenador)
                popupDatosGenerales.Show();
                   callBackDatosGenerales.PerformCallback();
                }
            }
            if (e.item.name == 'GenerarUsuario') {

            }

        }
        function OcultarDatosGenerales() {
            popupDatosGenerales.Hide();
            LoadingSiteMaster.Show();
        }
    </script>
      <script>
         window.onload = function active() {
            var act = document.getElementById("EntrenamientosP");
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
    </script>
    <style>
        .dxgvPopupEditForm_Material {
    padding: 0px;
    margin: 0;
}
        @media screen and (max-width: 600px) {
.dxflGroupCell_Material {
    padding: 0 9px!important;
}
}
        
    </style>
     <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Entrenadores / Asistentes</b></h3>
                </div>            
            </div>
        </div>
    </div>
    <br />
    <dx:ASPxHiddenField ID="hiddenEntrenador" ClientInstanceName="hiddenEntrenador" runat="server"></dx:ASPxHiddenField>
    <%--GridView--%>
    <dx:ASPxGridView ID="gridEntrenadores" ClientInstanceName="gridEntrenadores" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSEntrenadores" Width="100%" KeyFieldName="Oid" OnInitNewRow="gridEntrenadores_InitNewRow1" OnRowInserting="gridEntrenadores_RowInserting1">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>
         <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" VerticalAlign="WindowCenter" FixedHeader="False" />
            </EditForm>
        </SettingsPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Nombre" ColSpan="1" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="CorreoElectronico" ColSpan="1" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="TelMovil" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="NumeroControlAsistencia" ColSpan="2" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="NIP" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaIngreso" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaRegistro" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="InstructorDeAcademia" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="InstructorDePersonalizado" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Rese&#241;a" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Fotografia" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidCLub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelMovil" VisibleIndex="3">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CorreoElectronico" VisibleIndex="4">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumeroControlAsistencia" VisibleIndex="5" Caption="N&#250;m. control" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NIP" VisibleIndex="6">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaIngreso" VisibleIndex="7" ReadOnly="true"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="8" ReadOnly="true"></dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="9"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="InstructorDeAcademia" VisibleIndex="10" Caption="Academia" Visible="False" ReadOnly="true"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="InstructorDePersonalizado" VisibleIndex="11" Caption="Personalizados" Visible="False" ReadOnly="true"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataMemoColumn FieldName="Rese&#241;a" Visible="False" VisibleIndex="12">
                <PropertiesMemoEdit Rows="3"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>

            <dx:GridViewDataBinaryImageColumn FieldName="Fotografia" VisibleIndex="13">
                <PropertiesBinaryImage ImageHeight="128px" ImageWidth="128px">
                    <EditingSettings Enabled="True">
                        <UploadSettings>
                            <UploadValidationSettings AllowedFileExtensions=".jpg, .jpeg, .png"></UploadValidationSettings>
                        </UploadSettings>
                    </EditingSettings>
                </PropertiesBinaryImage>
            </dx:GridViewDataBinaryImageColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarEntrenadores">
                <Items>
                    <dx:GridViewToolbarItem Name="btnNuevo" BeginGroup="True" Text="Nuevo" Command="New">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEditar" BeginGroup="True" Text="Editar" Command="Edit">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEliminar" BeginGroup="True" Text="Eliminar" Command="Custom">
                        <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnDatosGenerales" BeginGroup="True" Text="Datos Generales" Command="Custom">
                        <Image Height="32px" Url="~/Content/iconos/datosgenerales.png" UrlChecked="~/Content/iconos/datosgenerales.png" UrlDisabled="~/Content/iconos/datosgenerales.png" UrlHottracked="~/Content/iconos/datosgenerales.png" UrlSelected="~/Content/iconos/datosgenerales.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnHorarios" BeginGroup="True" Text="Horarios" Command="Custom">
                        <Image Height="32px" Url="~/Content/iconos/horario.png" UrlChecked="~/Content/iconos/horario.png" UrlDisabled="~/Content/iconos/horario.png" UrlHottracked="~/Content/iconos/horario.png" UrlSelected="~/Content/iconos/horario.png" Width="32px">
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
                <Image AlternateText="Eliminar" Height="32px" Url="~/Content/iconos/delete.png" Width="32px">
                </Image>

                <Styles>
                    <Style CssClass="btnDelete"></Style>
                </Styles>
            </DeleteButton>
        </SettingsCommandButton>
    </dx:ASPxGridView>
    <%--  <dx:ASPxGridView ID="gridEntrenadores" ClientInstanceName="gridEntrenadores" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSEntrenadores" KeyFieldName="OIDUsuario" OnInitNewRow="gridEntrenadores_InitNewRow" OnRowInserting="gridEntrenadores_RowInserting" OnRowUpdating="gridEntrenadores_RowUpdating" Width="100%">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
                 <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" />
            </EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="OIDRol" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaAlta" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Nombre" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="ApePaterno" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="ApeMaterno" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Correo" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Telefono" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Password" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDUsuario" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="7" Width="15%">
                <PropertiesTextEdit MaxLength="50">
                    <ValidationSettings Display="Dynamic">
                        <RegularExpression ErrorText="Formato de correo inv&#225;lido" ValidationExpression="\w+([-+.&#39;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></RegularExpression>

                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="8" Width="10%">
                <PropertiesTextEdit MaxLength="50">

                    <ValidationSettings Display="Dynamic">
                        <RegularExpression ErrorText="Este campo permite s&#243;lo n&#250;meros" ValidationExpression="\d{10}"></RegularExpression>

                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Password" VisibleIndex="9" Visible="False">
                <PropertiesTextEdit MaxLength="50">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaAlta" VisibleIndex="11" ReadOnly="true" Width="10%">
                <PropertiesDateEdit>
                    <ReadOnlyStyle BackColor="LightGray" ForeColor="Black"></ReadOnlyStyle>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaSuspension" VisibleIndex="13" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="10" Width="8%">
                <PropertiesCheckEdit ValueGrayed="False" ToggleSwitchDisplayMode="Always"></PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="4" Width="15%">
                <PropertiesTextEdit MaxLength="100">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ApePaterno" VisibleIndex="5" Width="15%">
                <PropertiesTextEdit MaxLength="100">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ApeMaterno" VisibleIndex="6" Width="15%">
                <PropertiesTextEdit MaxLength="100">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OIDRol" Caption="Rol" VisibleIndex="3" Width="12%">
                <PropertiesComboBox DataSourceID="SqlDSRoles" TextField="Descripcion" ValueField="idRol" NullDisplayText="Seleccione nivel de acceso">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarEntrenadores">
                <Items>
                    <dx:GridViewToolbarItem Name="btnNuevo" BeginGroup="True" Text="Nuevo" Command="New">
                         <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEditar" BeginGroup="True" Text="Editar" Command="Edit">
                          <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEliminar" BeginGroup="True" Text="Eliminar" Command="Custom">
                        <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnDatosGenerales" BeginGroup="True" Text="Datos Generales" Command="Custom">
                       <Image Height="32px" Url="~/Content/iconos/datosgenerales.png" UrlChecked="~/Content/iconos/datosgenerales.png" UrlDisabled="~/Content/iconos/datosgenerales.png" UrlHottracked="~/Content/iconos/datosgenerales.png" UrlSelected="~/Content/iconos/datosgenerales.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnHorarios" BeginGroup="True" Text="Horarios" Command="Custom">
                         <Image Height="32px" Url="~/Content/iconos/horario.png" UrlChecked="~/Content/iconos/horario.png" UrlDisabled="~/Content/iconos/horario.png" UrlHottracked="~/Content/iconos/horario.png" UrlSelected="~/Content/iconos/horario.png" Width="32px">
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
                <Image AlternateText="Eliminar" Height="32px" Url="~/Content/iconos/delete.png" Width="32px">
                </Image>

                <Styles>
                    <Style CssClass="btnDelete"></Style>
                </Styles>
            </DeleteButton>
        </SettingsCommandButton>
    </dx:ASPxGridView>--%>

    <%--Loeading Panels--%>
    <asp:SqlDataSource runat="server" ID="SqlDSEntrenadores" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT * FROM [ClubEntrenadores] WHERE (([OidCLub] = @OidCLub) AND ([Activo] = @Activo) AND ([InstructorDePersonalizado] = @InstructorDePersonalizado)) ORDER BY [Nombre]" InsertCommand="INSERT INTO [dbo].[ClubEntrenadores]
           ([OidCLub]
           ,[Nombre]
           ,[TelMovil]
           ,[CorreoElectronico]
           ,[NumeroControlAsistencia]
           ,[NIP]
           ,[FechaIngreso]
           ,[FechaRegistro]
           ,[Activo]
           ,[InstructorDeAcademia]
           ,[InstructorDePersonalizado]
           ,[Fotografia]
           ,[Reseña])
     VALUES
           (@OidCLub
           ,@Nombre
           ,@TelMovil
           ,@CorreoElectronico
           ,@NumeroControlAsistencia
           ,@NIP
           ,@FechaIngreso
           ,@FechaRegistro
           ,@Activo
           ,@InstructorDeAcademia
           ,@InstructorDePersonalizado
           ,@Fotografia
           ,@Reseña)"
        UpdateCommand="UPDATE [dbo].[ClubEntrenadores]
   SET [Nombre] = @Nombre
      ,[TelMovil] = @TelMovil
      ,[CorreoElectronico] = @CorreoElectronico
      ,[NIP] = @NIP
      ,[Activo] = @Activo
      ,[Fotografia] = @Fotografia
      ,[Reseña] = @Reseña
 WHERE Oid = @Oid">
        <InsertParameters>
            <asp:Parameter Name="OidCLub"></asp:Parameter>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="TelMovil"></asp:Parameter>
            <asp:Parameter Name="CorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="NumeroControlAsistencia"></asp:Parameter>
            <asp:Parameter Name="NIP"></asp:Parameter>
            <asp:Parameter Name="FechaIngreso"></asp:Parameter>
            <asp:Parameter Name="FechaRegistro"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="InstructorDeAcademia"></asp:Parameter>
            <asp:Parameter Name="InstructorDePersonalizado"></asp:Parameter>
            <asp:Parameter Name="Fotografia"></asp:Parameter>
            <asp:Parameter Name="Rese&#241;a"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidCLub" Type="Int32"></asp:SessionParameter>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
            <asp:Parameter DefaultValue="true" Name="InstructorDePersonalizado" Type="Boolean"></asp:Parameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="TelMovil"></asp:Parameter>
            <asp:Parameter Name="CorreoElectronico"></asp:Parameter>
            <asp:Parameter Name="NIP"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="Fotografia"></asp:Parameter>
            <asp:Parameter Name="Rese&#241;a"></asp:Parameter>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <%--PopUps--%>
    <dx:ASPxPopupControl
        ID="popupEliminar"
        ClientInstanceName="popupEliminar"
        runat="server" Width="650px"
        AllowDragging="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Eliminar Entrenador/Asistente">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderStyle BackColor="#FF3547" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <p style="font-size: 18px">¿Está seguro que desea eliminar este Entrenador/Asistente?</p>
                <br />

                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" BackColor="#FF3547" CssClass="btn-danger">

                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="4px" />
                    </dx:ASPxButton>
                    <button type="button" class="btn btn-danger" onclick="fncOcultarEliminar()" style="background-color: white; border: 3px solid #FF3547; color: #FF3547">Cancelar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupEliminarHorario"
        ClientInstanceName="popupEliminarHorario"
        runat="server" Width="650px"
        AllowDragging="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Eliminar Horario">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderStyle BackColor="#FF3547" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <p style="font-size: 18px">¿Está seguro que desea eliminar este Horario?</p>
                <br />

                <div class="text-right">
                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" BackColor="#FF3547" CssClass="btn-danger">
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="4px" />
                    </dx:ASPxButton>
                    <button type="button" class="btn btn-danger" onclick="fncOcultarEliminarHorario()" style="background-color: white; border: 3px solid #FF3547; color: #FF3547">Cancelar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popupHorarios" ClientInstanceName="popupHorarios" runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" 
        HeaderText="Horarios" Font-Bold="False" SettingsAdaptivity-Mode="OnWindowInnerWidth">
        <HeaderStyle BackColor="#F7AA00" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxGridView OnStartRowEditing="gridHorarios_StartRowEditing" OnParseValue="gridHorarios_ParseValue"  OnCustomUnboundColumnData="gridHorarios_CustomUnboundColumnData" OnCellEditorInitialize="gridHorarios_CellEditorInitialize" ID="gridHorarios"  ClientInstanceName="gridHorarios" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSHorarios" KeyFieldName="Oid" OnInitNewRow="gridHorarios_InitNewRow" OnRowInserting="gridHorarios_RowInserting" Width="100%">
                    <SettingsAdaptivity AdaptivityMode="HideDataCells">
                        <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                    </SettingsAdaptivity>
                    <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
                    <SettingsEditing Mode="PopupEditForm"></SettingsEditing>
                    <ClientSideEvents  ToolbarItemClick="OnToolbarItemClick" />
                    <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

                    <SettingsPopup>
                        <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
                        </EditForm>
                    </SettingsPopup>

                    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="Dia" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="HoraInicio" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="HoraFinal" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0" Visible="False">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OidEntrenador" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OidCentroEntrenamiento" VisibleIndex="2" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="4"></dx:GridViewDataTextColumn>

                        <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="6">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTimeEditColumn FieldName="HoraInicio" VisibleIndex="7" ShowInCustomizationForm="true">
                            <PropertiesTimeEdit EditFormatString="HH:mm tt" DisplayFormatInEditMode="True" DisplayFormatString="t">
                            </PropertiesTimeEdit>
                        </dx:GridViewDataTimeEditColumn>
                        <dx:GridViewDataTimeEditColumn FieldName="HoraFinal" VisibleIndex="8" ShowInCustomizationForm="true">
                            <PropertiesTimeEdit EditFormatString="HH:mm tt" DisplayFormatInEditMode="True" DisplayFormatString="t" EditFormat="Time">
                            </PropertiesTimeEdit>
                        </dx:GridViewDataTimeEditColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="Dia" VisibleIndex="5">
                            <PropertiesComboBox DataSourceID="SqlDSDiaSemana" TextField="Descripcion" ValueField="OIDDiaSemana"></PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>

                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolbarHorarios" EnableAdaptivity="True">
                            <Items>
                                <dx:GridViewToolbarItem Name="btnNuevoHorario" BeginGroup="True" Text="Nuevo" Command="New">
                                    <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="btnEditarHorario" BeginGroup="True" Text="Editar" Command="Edit">
                                    <Image Height="32px" Url="~/Content/iconos/editar-icono.png" UrlChecked="~/Content/iconos/editar-icono.png" UrlDisabled="~/Content/iconos/editar-icono.png" UrlHottracked="~/Content/iconos/editar-icono.png" UrlSelected="~/Content/iconos/editar-icono.png" Width="32px">
                                    </Image>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="btnEliminarHorario" BeginGroup="True" Text="Eliminar">
                                    <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px">
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
                            <Image AlternateText="Eliminar" Height="32px" Url="~/Content/iconos/delete.png" Width="32px">
                            </Image>

                            <Styles>
                                <Style CssClass="btnDelete"></Style>
                            </Styles>
                        </DeleteButton>
                    </SettingsCommandButton>
                </dx:ASPxGridView>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupDatosGenerales"
        ClientInstanceName="popupDatosGenerales"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Modal="true"
        HeaderText="Datos generales" Width="700px" Font-Bold="False" SettingsAdaptivity-Mode="OnWindowInnerWidth">
        <HeaderStyle BackColor="#F7AA00" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxCallbackPanel ID="callBackDatosGenerales" ClientInstanceName="callBackDatosGenerales" runat="server" OnCallback="callBackDatosGenerales_Callback"><PanelCollection>
                    <dx:PanelContent>
                <div class="row">
                    <div class="col-lg-12 col-sm-12">
                        <div class="form-group">
                            <label for="usr"><b style="color: #0090bf">Formación Académica</b></label>
                            <asp:TextBox ID="txtFormacionAcademica" TextMode="MultiLine" Rows="3" runat="server" class="form-control" placeholder="Ingrese su formación académica" Style="resize: none"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="usr"><b style="color: #0090bf">Experiencia Profesional</b></label>
                            <asp:TextBox ID="txtExperienciaLaboral" TextMode="MultiLine" Rows="3" runat="server" class="form-control" placeholder="Ingrese su experiencia laboral" Style="resize: none"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="usr"><b style="color: #0090bf">Principales Logros</b></label>
                            <asp:TextBox ID="txtPrincipalesLogros" TextMode="MultiLine" Rows="3" runat="server" class="form-control" placeholder="Ingrese sus principales logros" Style="resize: none"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="usr"><b style="color: #0090bf">Valores Personales</b></label>
                            <asp:TextBox ID="txtValoresPersonales" TextMode="MultiLine" Rows="3" runat="server" class="form-control" placeholder="Ingrese sus valores personales" Style="resize: none"></asp:TextBox>
                        </div>

                    </div>
<%--                    <div class="col-lg-6 col-sm-12">
                        <div class="file-upload">
                            <div class="image-upload-wrap">
                                <asp:FileUpload ID="FileUpload1" class="file-upload-input" onchange="readURL(this);" accept="image/*" runat="server" />
                                <div class="drag-text">
                                    <br />
                                    <br />
                                    <h5>Arrastra y suelta los archivos aquí</h5>
                                    <br />
                                    <br />
                                </div>
                            </div>
                            <div class="file-upload-content">
                                <asp:Image ID="imgEntrenador" class="file-upload-image" runat="server" alt="your image" />
                                <div class="image-title-wrap">
                                    <button type="button" onclick="removeUpload()" class="remove-image">Remover <span class="image-title">Uploaded Image</span></button>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                </div>
                    </dx:PanelContent>
                </PanelCollection>
                </dx:ASPxCallbackPanel>
                <div class="row text-right">
                    <div class="col-lg-3 col-sm-12"></div>
                    <div class="col-lg-3 col-sm-12"></div>
                    <div class="col-lg-3 col-sm-12"></div>
                    <div class="col-lg-3 col-sm-12">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" ValidationGroup="Perfil" OnClientClick="OcultarDatosGenerales()" class="btn btn-cancelar" Width="100%" OnClick="btnGuardar_Click" />
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <asp:SqlDataSource ID="SqlDSRoles" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [idRol], [OIDEmpresa], [Descripcion] FROM [OpeUsuariosRoles] WHERE (([OIDEmpresa] = @OIDEmpresa) AND ([Descripcion] <> @Descripcion))">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
            <asp:Parameter DefaultValue="Estudiante                    " Name="Descripcion" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDSHorarios" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [OidEntrenador], [OidCentroEntrenamiento], [Descripcion], [Dia], [TipoEntrenamiento], CONVERT(varchar,HoraInicio,24) as HoraInicio, CONVERT(varchar,HoraFinal,24) as HoraFinal, [Activo] FROM [ClubEntrenadoresHorarios] WHERE ([OidEntrenador] = @OidEntrenador)" InsertCommand="INSERT INTO [dbo].[ClubEntrenadoresHorarios] 
           ([OidEntrenador]
           ,[OidCentroEntrenamiento]
           ,[Descripcion]
           ,[Dia]
           ,[TipoEntrenamiento]
           ,[HoraInicio]
           ,[HoraFinal]
           ,[Activo])
     VALUES
           (@OidEntrenador
           ,@OidCentroEntrenamiento
           ,@Descripcion
           ,@Dia
           ,'P'
           ,@HoraInicio
           ,@HoraFinal
           ,@Activo)"
        UpdateCommand="UPDATE [dbo].[ClubEntrenadoresHorarios]
   SET [Descripcion] = @Descripcion
      ,[Dia] = @Dia
      ,[HoraInicio] = @HoraInicio
      ,[HoraFinal] = @HoraFinal
      ,[Activo] = @Activo
 WHERE Oid = @Oid">
        <InsertParameters>
            <asp:Parameter Name="OidEntrenador"></asp:Parameter>
            <asp:Parameter Name="OidCentroEntrenamiento"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="Dia"></asp:Parameter>
            <asp:Parameter Name="HoraInicio"></asp:Parameter>
            <asp:Parameter Name="HoraFinal"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="hiddenEntrenador" Name="OidEntrenador" PropertyName="['OIDUsuario']" Type="Int32" DefaultValue="0" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="Dia"></asp:Parameter>
            <asp:Parameter Name="HoraInicio"></asp:Parameter>
            <asp:Parameter Name="HoraFinal"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSDiaSemana" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDDiaSemana], [Descripcion] FROM [CatDiaSemana]"></asp:SqlDataSource>
    <style>
        .file-upload {
  background-color: #ffffff;
  width: 100%;
  height:100%;
  margin: 0 auto;
  padding: 20px;
}
       .file-upload:hover {
  color: #ffffff!important;

}
.file-upload-btn {
  width: 100%;
  margin: 0;
  color: #fff;
  background: #f22300;
  border: none;
  padding: 10px;
  border-radius: 4px;
  border-bottom: 4px solid #f22300;
  transition: all .2s ease;
  outline: none;
  text-transform: uppercase;
  font-weight: 700;
}

.file-upload-btn:hover {
  background: #0090bf;
  color: #ffffff;
  transition: all .2s ease;
  cursor: pointer;
}

.file-upload-btn:active {
  border: 0;
  transition: all .2s ease;
}

.file-upload-content {
  display: none;
  text-align: center;
}

.file-upload-input {
  position: absolute;
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100%;
  outline: none;
  opacity: 0;
  cursor: pointer;
}

.image-upload-wrap {
  margin-top: 20px;
  border: 4px dashed #0090bf;
  position: relative;
}

.image-dropping,
.image-upload-wrap:hover {
  background-color: #0090bf;
  border: 4px dashed #ffffff;
}

.image-title-wrap {
  padding: 0 15px 15px 15px;
  color: #222;
}

.drag-text {
  text-align: center;
}

.drag-text h5 {
  font-weight: 100;
  text-transform: uppercase;
  
  padding: 60px 0;
}
.drag-text h5:hover {
  font-weight: 100;
  text-transform: uppercase;
  color: #fff;
  padding: 60px 0;
}

.file-upload-image {
  max-height: 400px;
  max-width:100%;
  margin: auto;
  padding: 20px;
}

.remove-image {
  width: 100%;
  margin: 0;
  color: #fff;
  background: #0090bf;
  border: none;
  padding: 10px;
  border-radius: 4px;
  border-bottom: 4px solid #0090bf;
  transition: all .2s ease;
  outline: none;
  text-transform: uppercase;
  font-weight: 700;
}

.remove-image:hover {
  background: #c13b2a;
  color: #ffffff;
  transition: all .2s ease;
  cursor: pointer;
}

.remove-image:active {
  border: 0;
  transition: all .2s ease;
}
    </style>
      <br />
     <br />
    <br />
     <br />
    <br />
</asp:Content>
