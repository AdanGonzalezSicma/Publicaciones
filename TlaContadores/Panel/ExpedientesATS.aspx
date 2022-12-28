<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExpedientesATS.aspx.cs" Inherits="CreandoProductividad.Panel.ExpedientesATS" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenExpedienteOID" ClientInstanceName="hiddenExpedienteOID" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenRegistroOID" ClientInstanceName="hiddenRegistroOID" runat="server"></dx:ASPxHiddenField>

    <!-- SCRIPT -->
    <script>
         window.onload = function active() {
            var act = document.getElementById("expats");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
            var act2 = document.getElementById("mas");
            
            if (act2.className.match("menum")) {
                act2.className = "menum active";
               document.getElementById("radio-3").checked = true;
            } else {
                act2.remove.className("active");
                document.getElementById("radio-3").checked = false;
            }
    
        }
        function OnToolbarItemCuestionariosClick(s, e) {
            if (e.item.name == "Eliminar") {
                visibleIndex = gridExpedientesATS.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                gridExpedientesATS.GetRowValues(visibleIndex, 'OIDExpediente;Estatus', fncAbrirPoupEliminarExpediente);
                }
            }
            if (e.item.name == "Registros") {
                visibleIndex = gridExpedientesATS.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                gridExpedientesATS.GetRowValues(visibleIndex, 'OIDExpediente;Estatus', fncAbrirPopupRegistrosATS);
                }
            }
            if (e.item.name == "EliminarRegistroATS") {
                visibleIndex = gridRegistrosATS.GetFocusedRowIndex();
               if (visibleIndex > -1) {
                gridRegistrosATS.GetRowValues(visibleIndex, 'OIDRegistro;Fecha', fncAbrirPopupEliminarRegistroATS);
                }
            } 
            if (e.item.name == "Reporte") {
                visibleIndex = gridExpedientesATS.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                gridExpedientesATS.GetRowValues(visibleIndex, 'OIDExpediente;Estatus', AbrirModal);
                }
            }
        }

        function fncAbrirPoupEliminarExpediente(value) {
            var OIDExpediente = 0;
            OIDExpediente = value[0];

            if (OIDExpediente != null) {
                hiddenExpedienteOID.Set("OIDExpediente", OIDExpediente);
                PopupEliminarExpedienteATS.Show();
            } else {
                PopupError.Show();
            }
        }

        function fncAbrirPopupRegistrosATS(value) {
            var OIDExpediente = 0;
            OIDExpediente = value[0];

            if (OIDExpediente != null) {
                hiddenExpedienteOID.Set("OIDExpediente", OIDExpediente);
                cbListarRegistrosATS.PerformCallback();
                PopupRegistrosATS.Show();
            } else {
                PopupError.Show();
            }
        }

        function fncAbrirPopupEliminarRegistroATS(value) {
            var OIDRegistro = 0;
            OIDRegistro = value[0];

            if (OIDRegistro != null) {
                hiddenRegistroOID.Set("OIDRegistro", OIDRegistro);
                PopupEliminarRegistroATS.Show();
            } else {
                PopupError.Show();
            }
        }

        function fncAbrirPopupReporte(value) {
            var OIDExpediente = 0;
            OIDExpediente = value[0];

            if (OIDExpediente != null) {
                hiddenExpedienteOID.Set("OIDExpediente", OIDExpediente);
                PopupReporte.Show();
            } else {
                PopupError.Show();
            }
        }
         function AbrirModal(value) {
            var OIDExpediente = 0;
            OIDExpediente = value[0];
                hiddenExpedienteOID.Set("OIDExpediente", OIDExpediente);
             popupAvisoGuias.Show();
        }
          function CerrarAvisoGuias() {
            popupAvisoGuias.Hide();
        }
        function fncCerrarPopupEliminarRegistroATS() {
            PopupEliminarRegistroATS.Hide();
        }

        function fncCerrarPopupEliminarExpedienteATS() {
            PopupEliminarExpedienteATS.Hide();
        }

        function fncCerrarPopupReporte() {
            PopupReporte.Hide();
        }

        //FUNCION PARA GUARDAR ARCHIVOS
        function SaveDocFileArchivos(s, e) {
            if (SubirArchivo.GetText() != '') {
                e.processOnServer = false;
                SubirArchivo.Upload();
            }
            else {
                gridRegistrosATS.UpdateEdit();
            }
        }
    </script>
     <style>
        .dxmLite_Material .dxctToolbar_Material.dxm-main.dxmtb {
            background-color: #f8f9fc;
            padding-top: 18px;
            padding-bottom: 18px;
            border-width: 0;
        }
         .dxpLite_Material {
            color:white
              }
          .btn-danger{
             border-radius:0.35rem
         }
    </style>
    <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0"  style="padding-top: 15px;font-weight:600">Expedientes ATS</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item" style="color: white">Resultados</li>
                        <li class="breadcrumb-item active" style="color: white">Expedientes ATS</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />
    <a class="btn btn-primary" data-toggle="tooltip" title="Más información"  href="/manual-usuario/sistema/Guia-sistema.html#ExpedientesATS"><i class="fas fa-question-circle" style="color:white; font-size:25px"></i></a>
    <br />
    <!-- GRID EXPEDIENTES ATS -->
    <dx:ASPxGridView
        ID="gridExpedientesATS"
        ClientInstanceName="gridExpedientesATS"
        runat="server"
        AutoGenerateColumns="False"
        DataSourceID="SqlDSExpedientesATS"
        KeyFieldName="OIDExpediente"
        Width="100%">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemCuestionariosClick" />
        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <SettingsPager AlwaysShowPager="True"></SettingsPager>

        <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True" />
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" Modal="True" VerticalAlign="WindowCenter">
                <SettingsAdaptivity MinHeight="40%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" FixedHeader="False" />
            </EditForm>
        </SettingsPopup>

        <StylesPopup>
            <EditForm>
                <Header BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White">
                </Header>
            </EditForm>
        </StylesPopup>

        <EditFormLayoutProperties ColCount="4" ColumnCount="4">
            <Items>
                <dx:GridViewColumnLayoutItem ColSpan="4" ColumnName="FolioInterno" ColumnSpan="4">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="4" ColumnName="Estatus" ColumnSpan="4">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="4" ColumnName="Nombre afectado" ColumnSpan="4" >
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem Caption="Descripción" ColSpan="4" ColumnName="Descripción evento" ColumnSpan="4">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="4" ColumnName="Observaciones" ColumnSpan="4">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="4" ColumnName="FechaActivo" ColumnSpan="4">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="4" ColumnName="FechaTermino" ColumnSpan="4">
                </dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="4" ColumnSpan="4" HorizontalAlign="Right">
                </dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDExpediente" ReadOnly="True" VisibleIndex="0" Caption="OIDExpediente" Visible="False">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="1" Caption="OIDEmpresa" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEncuesta" VisibleIndex="2" Caption="OIDEncuesta" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NombreAfectado" VisibleIndex="3" Caption="Nombre afectado" ReadOnly="true">
                <PropertiesTextEdit ReadOnlyStyle-BackColor="LightGray">
<ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>            
            <dx:GridViewDataTextColumn FieldName="NombreInvolucrado" VisibleIndex="4" Caption="Nombre involucrados"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaReporte" VisibleIndex="6" Caption="Fecha reporte">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaEvento" VisibleIndex="7" Caption="Fecha evento">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="FolioInterno" VisibleIndex="8" Caption="Folio interno">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaActivo" VisibleIndex="11" Caption="Fecha activo"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaTermino" VisibleIndex="12" Caption="Fecha termino"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="13" Caption="Fecha registro" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataMemoColumn FieldName="Observaciones" Caption="Observaciones" VisibleIndex="10">
                <PropertiesMemoEdit Rows="7"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="DescripcionEvento" Caption="Descripci&#243;n evento" VisibleIndex="5" Visible="False" ReadOnly="true">
                <PropertiesMemoEdit Rows="7" ReadOnlyStyle-BackColor="LightGray">
<ReadOnlyStyle BackColor="LightGray"></ReadOnlyStyle>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataComboBoxColumn FieldName="Estatus" Caption="Estatus" VisibleIndex="9">
                <PropertiesComboBox DataSourceID="SqlDSEstatus" TextField="Estatus" ValueField="Estatus"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarExpedientesATS">
                <Items>
                    <dx:GridViewToolbarItem BeginGroup="True" Command="Edit" Name="Editar" Text="Editar">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar.png" UrlChecked="~/Content/icons/iconos-nuevos/editar.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar.png" UrlSelected="~/Content/icons/iconos-nuevos/editar.png" Width="32px" ToolTip="Editar"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Visible="false" BeginGroup="True" Name="Eliminar" Text="Eliminar">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" ToolTip="Eliminar" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png" AlternateText="Eliminar"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Name="Registros" Text="Registros">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/registro-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/registro-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/registro-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/registro-v2.png" AlternateText="Preguntas" ToolTip="Preguntas" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/registro-v2.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Text="Reporte" BeginGroup="True" Name="Reporte">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/report.png" UrlDisabled="~/Content/icons/iconos-nuevos/report.png" UrlHottracked="~/Content/icons/iconos-nuevos/report.png" UrlSelected="~/Content/icons/iconos-nuevos/report.png" AlternateText="Nuevo" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/report.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
        <SettingsCommandButton>
            <NewButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Nuevo" Height="32px" ToolTip="Nuevo" Url="~/Content/icons/new.png" Width="32px">
                </Image>
            </NewButton>
            <UpdateButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/icons/save.png" Width="32px">
                </Image>
            </UpdateButton>
            <CancelButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/icons/cancel.png" Width="32px">
                </Image>
            </CancelButton>
            <EditButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Editar" Height="32px" ToolTip="Editar" Url="~/Content/icons/edit.png" Width="32px">
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
        <Styles>
            <Header BackColor="#43BFC7" ForeColor="White">
            </Header>
            <PagerBottomPanel BackColor="#43BFC7">
            </PagerBottomPanel>
        </Styles>
    </dx:ASPxGridView>

    <!-- POPUP ELIMINAR EXPEDIENTE ATS -->
    <dx:ASPxPopupControl
        ID="PopupEliminarExpedienteATS"
        ClientInstanceName="PopupEliminarExpedienteATS"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h5>¿Desea eliminar el registro seleccionado?</h5>
                <br />
                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminarExpedienteATS" OnClick="btnEliminarExpedienteATS_Click" onmouseup="fncCerrarPopupEliminarExpedienteATS();" runat="server" Text="Eliminar" BackColor="#FF3547" AutoPostBack="false" CssClass="btn-danger">
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="2px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCerrarEliminar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { PopupEliminarExpedienteATS.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="2px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP REGISTROS -->
    <dx:ASPxPopupControl
        ID="PopupRegistrosATS"
        ClientInstanceName="PopupRegistrosATS"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Registros del expediente" Font-Bold="False" Width="1024px" AllowDragging="true" ShowPageScrollbarWhenModal="true">
        <SettingsAdaptivity MinHeight="60%" MinWidth="60%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle  Font-Bold="False" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>

                <dx:ASPxCallbackPanel ID="cbListarRegistrosATS" ClientInstanceName="cbListarRegistrosATS" OnCallback="cbListarRegistrosATS_Callback" runat="server">
                    <PanelCollection>
                        <dx:PanelContent runat="server">

                            <dx:ASPxGridView
                                ID="gridRegistrosATS"
                                ClientInstanceName="gridRegistrosATS" 
                                DataSourceID="SqlDSRegistrosATS" 
                                KeyFieldName="OIDRegistro"
                                runat="server"
                                AutoGenerateColumns="False"
                                Width="100%" 
                                OnRowInserting="gridRegistrosATS_RowInserting" 
                                OnRowUpdating="gridRegistrosATS_RowUpdating">
                                <ClientSideEvents ToolbarItemClick="OnToolbarItemCuestionariosClick" />
                                <SettingsAdaptivity AdaptivityMode="HideDataCells">
                                    <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                                </SettingsAdaptivity>
                                <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

                                <SettingsPager AlwaysShowPager="True"></SettingsPager>

                                <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

                                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                                <SettingsBehavior AllowSelectByRowClick="True" AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

                                <SettingsPopup>
                                    <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                                        <SettingsAdaptivity MinHeight="40%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
                                    </EditForm>
                                </SettingsPopup>

                                <StylesPopup>
                                    <EditForm>
                                        <Header BackColor="Navy" ForeColor="White">
                                        </Header>
                                    </EditForm>
                                </StylesPopup>

                                <EditFormLayoutProperties ColCount="4" ColumnCount="4">
                                    <Items>
                                        <dx:GridViewColumnLayoutItem ColumnName="Fecha" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Titulo" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Observaciones" ColSpan="4" ColumnSpan="4" Caption="Recomendaciones"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Acci&#243;n" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="DocumentoAnexo" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:EditModeCommandLayoutItem ColSpan="4" ColumnSpan="4" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                                    </Items>
                                </EditFormLayoutProperties>
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="OIDRegistro" ReadOnly="True" VisibleIndex="1" Caption="OIDRegistro" Visible="False">
                                        <EditFormSettings Visible="False"></EditFormSettings>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDExpediente" VisibleIndex="2" Caption="OIDExpediente" Visible="False">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="3" Width="50px" AdaptivePriority="1"></dx:GridViewDataDateColumn>

                                    <dx:GridViewDataTextColumn FieldName="Titulo" VisibleIndex="4" Caption="T&#237;tulo">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="DocumentoAnexo" VisibleIndex="7">
                                        <DataItemTemplate>
                                            <asp:LinkButton ID="linkDownloadClient" runat="server" CommandArgument='<%# Eval("DocumentoAnexo") %>' Text='<%# Eval("DocumentoAnexo") %>' OnClick="linkDownloadClient_Click"></asp:LinkButton>
                                        </DataItemTemplate>
                                        <EditItemTemplate>
                                            <dx:ASPxUploadControl
                                                ID="SubirArchivo"
                                                ClientInstanceName="SubirArchivo"
                                                runat="server"
                                                Width="100%"
                                                AddUploadButtonsHorizontalPosition="Center" OnFileUploadComplete="SubirArchivo_FileUploadComplete"
                                                ShowClearFileSelectionButton="False"
                                                ShowTextBox="true"
                                                UploadStorage="FileSystem"
                                                FileUploadMode="OnPageLoad"
                                                ShowProgressPanel="True">
                                                <ClientSideEvents FileUploadComplete="function (s,e) { gridRegistrosATS.UpdateEdit(); }" />
                                                <ValidationSettings
                                                    AllowedFileExtensions=".pdf, .docx, .doc, .jpg, .png, .jpeg"
                                                    GeneralErrorText="La carga del archivo falló debido a un error externo"
                                                    MaxFileCountErrorText="{0} archivos han sido eliminados de la selección porque exceden el limite de archivos permitidos a la vez (lo cual esta definido para  {1} archivo a la vez)."
                                                    MaxFileSizeErrorText="El archivo excede el tamaño de archivo permitodo el cual es de  {0} bytes"
                                                    MultiSelectionErrorText="¡Atención! {0} archivos son inválidos y no seran cargados. Posibles razones: exceden el tamaño de archivo permitido el cual es de ({1}), extensión no permitida, o el nombre de archivo contiene caracteres inválidos. Estos archivos han sido eliminados de la selección: {2}"
                                                    NotAllowedFileExtensionErrorText="Solo se admiten archivos PDF.">
                                                </ValidationSettings>
                                                <BrowseButton
                                                    ImagePosition="Right"
                                                    Text="Cargar...">
                                                    <Image
                                                        AlternateText="Cargar..."
                                                        Height="32px"
                                                        ToolTip="Cargar..."
                                                        Url="~/Content/icons/import.png">
                                                    </Image>
                                                </BrowseButton>
                                                <RemoveButton Text="Eliminar"></RemoveButton>
                                                <CancelButton Text="Cancelar"></CancelButton>
                                                <AdvancedModeSettings
                                                    DropZoneText="Suelte el archivo aqui"
                                                    TemporaryFolder="/Content/Temp">
                                                </AdvancedModeSettings>
                                                <FileSystemSettings
                                                    UploadFolder="~/Content/Temp"
                                                    GenerateUniqueFileNamePrefix="False"></FileSystemSettings>
                                                <BrowseButtonStyle Width="60px"></BrowseButtonStyle>
                                            </dx:ASPxUploadControl>
                                        </EditItemTemplate>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="8" Caption="Fecha registro" Visible="False"></dx:GridViewDataDateColumn>
                                    <dx:GridViewDataMemoColumn FieldName="Descripcion" Caption="Descripci&#243;n" VisibleIndex="5">
                                        <PropertiesMemoEdit Rows="5"></PropertiesMemoEdit>
                                    </dx:GridViewDataMemoColumn>
                                    <dx:GridViewDataMemoColumn FieldName="Observaciones" VisibleIndex="6" Caption="Recomendaciones">
                                        <PropertiesMemoEdit Rows="5"></PropertiesMemoEdit>
                                    </dx:GridViewDataMemoColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="OIDAccionATS" Caption="Acci&#243;n" VisibleIndex="9">
                                        <PropertiesComboBox DataSourceID="SqlDSAccionesATS" TextField="Accion" ValueField="OIDAccionATS">
                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right" RequiredField-IsRequired="true" 
                                                                RequiredField-ErrorText="Seleccionar una opción." ValidateOnLeave="true" SetFocusOnError="true">
                                                <RequiredField IsRequired="True" ErrorText="Seleccionar una opción."></RequiredField>
                                            </ValidationSettings>
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                </Columns>
                                <Toolbars>
                                    <dx:GridViewToolbar ItemAlign="Right" Name="toolbarRegistros">
                                        <Items>
                                            <dx:GridViewToolbarItem  Name="Nuevo" Text="Nuevo" Command="New" BeginGroup="True">
                                                <Image UrlChecked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/nuevo-icono.png"></Image>
                                                <ItemStyle Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy" Border-BorderColor="Navy" >
                                                <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                                                </HoverStyle>
                                                </ItemStyle>
                                            </dx:GridViewToolbarItem>
                                            <dx:GridViewToolbarItem Name="Editar" Text="Editar" Command="Edit" BeginGroup="True">
                                                <Image UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png"></Image>
                                                <ItemStyle Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy" Border-BorderColor="Navy" >
                                                <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                                                </HoverStyle>
                                                </ItemStyle>
                                            </dx:GridViewToolbarItem>
                                            <dx:GridViewToolbarItem Text="Eliminar" Name="EliminarRegistroATS" BeginGroup="True">
                                                <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png"></Image>
                                                <ItemStyle Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy" Border-BorderColor="Navy" >
                                                <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                                                </HoverStyle>
                                                </ItemStyle>
                                            </dx:GridViewToolbarItem>
                                        </Items>
                                    </dx:GridViewToolbar>
                                </Toolbars>
                                <Templates>
                                    <EditForm>
                                        <div class="text-right">
                                            <dx:ASPxGridViewTemplateReplacement runat="server" ReplacementType="EditFormEditors" />
                                            <dx:ASPxButton runat="server" RenderMode="Link" EnableTheming="false" AutoPostBack="false">
                                                <Image
                                                    AlternateText="Guardar"
                                                    Height="32px"
                                                    Width="32px"
                                                    ToolTip="Guardar"
                                                    Url="~/Content/icons/save.png"
                                                    UrlChecked="~/Content/icons/save.png"
                                                    UrlDisabled="~/Content/icons/save.png"
                                                    UrlHottracked="~/Content/icons/save.png"
                                                    UrlPressed="~/Content/icons/save.png">
                                                </Image>
                                                <ClientSideEvents Click="SaveDocFileArchivos" />
                                            </dx:ASPxButton>
                                            <dx:ASPxButton runat="server" RenderMode="Link" EnableTheming="false" AutoPostBack="false">
                                                <Image
                                                    AlternateText="Cancelar"
                                                    Height="32px"
                                                    Width="32px"
                                                    ToolTip="Cancelar"
                                                    Url="~/Content/icons/cancel.png"
                                                    UrlChecked="~/Content/icons/cancel.png"
                                                    UrlDisabled="~/Content/icons/cancel.png"
                                                    UrlHottracked="~/Content/icons/cancel.png"
                                                    UrlPressed="~/Content/icons/cancel.png">
                                                </Image>
                                                <ClientSideEvents Click="function (s,e) { gridRegistrosATS.CancelEdit(); }" />
                                            </dx:ASPxButton>
                                        </div>
                                    </EditForm>
                                </Templates>
                                <SettingsCommandButton>
                                    <NewButton ButtonType="Image" RenderMode="Image">
                                        <Image AlternateText="Nuevo" Height="32px" ToolTip="Nuevo" Url="~/Content/icons/new.png" Width="32px">
                                        </Image>
                                    </NewButton>
                                    <UpdateButton ButtonType="Image" RenderMode="Image">
                                        <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/icons/save.png" Width="32px">
                                        </Image>
                                    </UpdateButton>
                                    <CancelButton ButtonType="Image" RenderMode="Image">
                                        <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/icons/cancel.png" Width="32px">
                                        </Image>
                                    </CancelButton>
                                    <EditButton ButtonType="Image" RenderMode="Image">
                                        <Image AlternateText="Editar" Height="32px" ToolTip="Editar" Url="~/Content/icons/edit.png" Width="32px">
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
                                <Styles>
                                    <Header ForeColor="Black">
                                    </Header>
                                </Styles>
                            </dx:ASPxGridView>

                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>

            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP ELIMINAR REGISTRO ATS -->
    <dx:ASPxPopupControl
        ID="PopupEliminarRegistroATS"
        ClientInstanceName="PopupEliminarRegistroATS"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h5>¿Desea eliminar el registro seleccionado?</h5>
                <br />
                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminarRegistroATS" OnClick="btnEliminarRegistroATS_Click" onmouseup="fncCerrarPopupEliminarRegistroATS();" runat="server" Text="Eliminar" BackColor="#FF3547" AutoPostBack="false" CssClass="btn-danger">
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="2px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547"  CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { PopupEliminarRegistroATS.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="2px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP REPORTES -->
    <dx:ASPxPopupControl
        ID="PopupReporte"
        ClientInstanceName="PopupReporte"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Reporte" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h4>¿Desea previsualizar el reporte?</h4>
                <br />
                <div class="text-right">
                    <dx:ASPxButton ID="ASPxButton1" OnClick="btnReporte_Click" onmouseup="fncCerrarPopupReporte();" runat="server" Text="Previsualizar" BackColor="Navy" AutoPostBack="false" CssClass="btn-danger">
                        <Border BorderColor="Navy" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="Navy" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { PopupReporte.Hide(); }" />
                        <Border BorderColor="Navy" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP ERROR -->
    <dx:ASPxPopupControl
        ID="PopupError"
        ClientInstanceName="PopupError"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h4>Es necesario seleccionar un registro</h4>
                <br />
                <div class="text-right">
                    <dx:ASPxButton ID="ASPxButton5" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="navy" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { PopupError.Hide(); }" />
                        <Border BorderColor="navy" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>
          <dx:ASPxPopupControl
        ID="popupAvisoGuias"
        ClientInstanceName="popupAvisoGuias"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"  Width="717px" HeaderText="Ventana emergente">
                  <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderImage IconID="support_info_32x32">
        </HeaderImage>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h5 >Se abrirá una nueva pestaña donde se mostrará el reporte</h5>
               <h5 style="color:red">Nota: si no se muestra, siga las siguientes instrucciones:</h5>
                
                <p style="padding-left:10px">1.- Haz clic en el siguiente ícono que aparece en la barra de dirección. </p>
               <p style="padding-left:10px">2.- Selecciona la opción de permitir siempre ventanas emergentes y redirecciones. </p>
                <div class="text-center">
  <img src="../Content/img/ventana.png" style="width: 50px" />
                </div>

                <div style="text-align: right">
                    <br />
                    <asp:Button ID="btnGuias" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnGuias_Click" OnClientClick="CerrarAvisoGuias()"  AutoPostBack="false" Backcolor="#045FAC"/>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <!-- SQLDS EXPEDIENTES ATS -->
    <asp:SqlDataSource ID="SqlDSExpedientesATS" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="spListadoOpeNOMExpedienteATS" SelectCommandType="StoredProcedure" UpdateCommand="spActualizarOpeNOMExpedienteATS" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresaLogeada" DefaultValue="0" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OIDExpediente" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="FolioInterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="Estatus" Type="String"></asp:Parameter>
            <asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
            <asp:Parameter Name="FechaActivo" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="FechaTermino" Type="DateTime"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- SQLDS REGISTROS ATS -->
    <asp:SqlDataSource ID="SqlDSRegistrosATS" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="spListadoOpeNOMExpedienteATSRegistros" SelectCommandType="StoredProcedure" InsertCommand="spCrearOpeNOMExpedienteATSRegistros" InsertCommandType="StoredProcedure" UpdateCommand="spActualizarOpeNOMExpedienteATSRegistros" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="OIDExpediente" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Fecha" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Titulo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
            <asp:Parameter Name="DocumentoAnexo" Type="String"></asp:Parameter>
            <asp:Parameter Name="OIDAccionATS" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="hiddenExpedienteOID" Name="OIDExpediente" PropertyName="['OIDExpediente']" Type="Int32" DefaultValue="0" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OIDRegistro" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Fecha" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Titulo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
            <asp:Parameter Name="DocumentoAnexo" Type="String"></asp:Parameter>
            <asp:Parameter Name="OIDAccionATS" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- SQLDS LISTADO DE ESTATUS -->
    <asp:SqlDataSource ID="SqlDSEstatus" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="spListadoCatNOMEstatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS LISTADO DE ACCIONES ATS -->
    <asp:SqlDataSource ID="SqlDSAccionesATS" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="spListadoCatNOMAccionesATS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
       <br />
    <br />
    <br />
    <br /><br />
    <br />
</asp:Content>