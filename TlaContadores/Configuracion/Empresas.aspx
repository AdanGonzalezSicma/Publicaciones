<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empresas.aspx.cs" Inherits="CreandoProductividad.Configuracion.Empresas" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenOIDEmpresa" ClientInstanceName="hiddenOIDEmpresa" runat="server"></dx:ASPxHiddenField>

    <!-- SCRIPT -->
    <script>    
        var visibleIndex;
        var idDocumento;
        function OnToolbarEmpresasItemClick(s, e) {
            if (e.item.name == 'Conceptos') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                popupCobros.Show();
            }
            if (e.item.name == 'Modulos') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                gridEmpresas.GetRowValues(visibleIndex, 'OIDEmpresa;Email', fncAbrirPopupPermisos);
            }
            if (e.item.name == 'Revicion') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                idDocumento = gridEmpresas.GetRowKey(visibleIndex);
                hiddenOIDEmpresa.Set('OIDEmpresa', idDocumento);
                popupRevision.Show();
            }
        }
        function fncAbrirPopupPermisos(value) {
            var OIDEmpresa = 0;
            OIDEmpresa = value[0];

            if (OIDEmpresa != 0) {
                hiddenOIDEmpresa.Set("OIDEmpresa", OIDEmpresa);
                cbListadoPermisos.PerformCallback();
                LoadingPanel.Show();
                PopupPermisos.Show();
                LoadingPanel.Hide();
            } else {
                PopupError.Show();
            }
        }
        function fncCerrarRevicion() {
            popupRevision.Hide();
        }
    </script>

    <!-- TITULO MODULO BREADCRUMB -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0" style="color: #000080"><b>Empresa</b></h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>

                        <li class="breadcrumb-item active">Empresa</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <!-- GRID EMPRESAS -->
    <dx:ASPxGridView 
        ID="gridEmpresas" 
        ClientInstanceName="gridEmpresas" 
        runat="server" 
        AutoGenerateColumns="False" 
        DataSourceID="SqlDSEmpresas" 
        KeyFieldName="OIDEmpresa" 
        Width="100%" 
        OnRowInserting="gridEmpresas_RowInserting">
        <ClientSideEvents ToolbarItemClick="OnToolbarEmpresasItemClick" />
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>

        <SettingsPager AlwaysShowPager="True">
            <PageSizeItemSettings Visible="True">
            </PageSizeItemSettings>
        </SettingsPager>
        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior AllowFocusedRow="True" />
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" Modal="True" ShowShadow="True" VerticalAlign="WindowCenter" ShowViewportScrollbarWhenModal="True">
            </EditForm>
        </SettingsPopup>
        <SettingsSearchPanel Visible="True" />

        <StylesPopup>
            <EditForm>
                <Header BackColor="Navy" ForeColor="White">
                </Header>
            </EditForm>
        </StylesPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Nombre" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="CodigoEmpresa" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="DescripcionGeneral" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="CodigoNegocio" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Email" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="LinkFacebook" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="LinkWWW" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="LinkMapa" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="LadaInternacional" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="TelefonoFijo">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="TelefonoMovil">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="NombreContacto">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Password">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="CP">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="OIDEntidadFederativa">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="OIDMunicipio">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="OIDColonia">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Calle" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="NumExterior">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="NumInterior">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaAlta">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaRenovacion">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="EjecutivoCuenta">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Suspendido">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="SuspendidoFecha">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="SuspendidoMotivo">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Baja">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="BajaFecha">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="BajaMotivo">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="BajaEjecutivo">
                </dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="ComentariosGenerales" ColumnSpan="2">
                </dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
                </dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CodigoEmpresa" VisibleIndex="2" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DescripcionGeneral" VisibleIndex="3" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CodigoNegocio" VisibleIndex="4" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LinkFacebook" VisibleIndex="6" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LinkWWW" VisibleIndex="7" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LinkMapa" VisibleIndex="8" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LadaInternacional" VisibleIndex="9" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelefonoFijo" VisibleIndex="10" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelefonoMovil" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NombreContacto" VisibleIndex="12" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Password" VisibleIndex="13" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CP" VisibleIndex="14" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Calle" VisibleIndex="18" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumExterior" VisibleIndex="19" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumInterior" VisibleIndex="20" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaAlta" VisibleIndex="21">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRenovacion" VisibleIndex="22">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="EjecutivoCuenta" VisibleIndex="23" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Suspendido" VisibleIndex="24" Visible="False">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="SuspendidoFecha" VisibleIndex="25" Visible="False">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="SuspendidoMotivo" VisibleIndex="26" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Baja" VisibleIndex="27" Visible="False">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="BajaFecha" VisibleIndex="28" Visible="False">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="BajaMotivo" VisibleIndex="29" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BajaEjecutivo" VisibleIndex="30" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Entidad Federativa" FieldName="OIDEntidadFederativa" VisibleIndex="15">
                <PropertiesComboBox DataSourceID="SqlDSEntidad" TextField="Descripcion" ValueField="IdEntidadFederativa">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Municipio" FieldName="OIDMunicipio" VisibleIndex="16">
                <PropertiesComboBox DataSourceID="SqlDSMunicipio" TextField="Municipio" ValueField="idMunicipio">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Colonia" FieldName="OIDColonia" Visible="False" VisibleIndex="17">
                <PropertiesComboBox DataSourceID="SqlDSColonia" TextField="Asentamiento" ValueField="idCP">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataMemoColumn FieldName="ComentariosGenerales" Visible="False" VisibleIndex="31">
                <PropertiesMemoEdit Rows="3">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right">
                <Items>
                    <dx:GridViewToolbarItem BeginGroup="True" Command="New" Name="nuevo" Text="Nuevo">
                        <Image Height="32px" Url="~/Content/icons/new.png" UrlChecked="~/Content/icons/new.png" UrlDisabled="~/Content/icons/new.png" UrlHottracked="~/Content/icons/new.png" UrlSelected="~/Content/icons/new.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Command="Edit" Name="editar" Text="Editar">
                        <Image Height="32px" Url="~/Content/icons/edit.png" UrlChecked="~/Content/icons/edit.png" UrlDisabled="~/Content/icons/edit.png" UrlHottracked="~/Content/icons/edit.png" UrlSelected="~/Content/icons/edit.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Name="eliminar" Text="Eliminar">
                        <Image Height="32px" Url="~/Content/icons/delete.png" UrlChecked="~/Content/icons/delete.png" UrlDisabled="~/Content/icons/delete.png" UrlHottracked="~/Content/icons/delete.png" UrlSelected="~/Content/icons/delete.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Name="Modulos" Text="Módulos">
                        <Image Height="32px" Url="~/Content/icons/Module.png" UrlChecked="~/Content/icons/Module.png" UrlDisabled="~/Content/icons/Module.png" UrlHottracked="~/Content/icons/Module.png" UrlSelected="~/Content/icons/Module.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Name="Conceptos" Text="Conceptos de cobro">
                        <Image Height="32px" Url="~/Content/icons/Bill.png" UrlChecked="~/Content/icons/Bill.png" UrlDisabled="~/Content/icons/Bill.png" UrlHottracked="~/Content/icons/Bill.png" UrlSelected="~/Content/icons/Bill.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="Revicion" Text="Monitoriar" BeginGroup="True"></dx:GridViewToolbarItem>
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
    </dx:ASPxGridView>

    <!-- POPUP REVICIÓN -->
    <dx:ASPxPopupControl
        ID="popupRevision"
        ClientInstanceName="popupRevision"
        PopupVerticalAlign="WindowCenter"
        PopupHorizontalAlign="WindowCenter"
        Modal="True"
        CloseAction="CloseButton"
        AllowDragging="true"
        ShowPageScrollbarWhenModal="true"
        ShowViewportScrollbarWhenModal="true"
        HeaderText="Ver como empresa"
        Font-Bold="False" Width="935"
        runat="server">
        <HeaderStyle BackColor="#007bff" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="text-right">
                    <asp:Button ID="btnRevicion" runat="server" Text="Acceder" OnClick="btnRevicion_Click" OnClientClick="fncCerrarRevicion" />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP COBROS -->
    <dx:ASPxPopupControl 
        ID="popupCobros" 
        PopupVerticalAlign="WindowCenter" 
        PopupHorizontalAlign="WindowCenter" 
        ClientInstanceName="popupCobros" 
        runat="server">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <div class="text-right">
                    <dx:ASPxComboBox ID="ddlCliente" class="form-control" runat="server" ValueType="System.String"></dx:ASPxComboBox>
                </div>
                <div class="text-right">
                    <dx:ASPxComboBox ID="ddlConcepto" class="form-control" runat="server" ValueType="System.String"></dx:ASPxComboBox>
                </div>
                <div class="text-right">
                    <asp:TextBox ID="txtCantidad" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:TextBox ID="txtComentarios" class="form-control" TextMode="MultiLine" ReadOnly="true" Rows="4" runat="server"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                    <input id="btnCerrar" type="button" value="button" />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP PERMISOS -->
    <dx:ASPxPopupControl
        ID="PopupPermisos"
        ClientInstanceName="PopupPermisos"
        runat="server"
        Modal="True"
        CloseAction="CloseButton" 
        AllowDragging="true" 
        ShowPageScrollbarWhenModal="true" 
        ShowViewportScrollbarWhenModal="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Listado de permisos" 
        Font-Bold="False" Width="935">
        <HeaderStyle BackColor="#007bff" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
              <%--  <dx:ASPxCallbackPanel ID="cbListadoPermisos" ClientInstanceName="cbListadoPermisos" OnCallback="cbListadoPermisos_Callback" runat="server" Width="200px">
                    <PanelCollection>
                        <dx:PanelContent runat="server">

                            <dx:ASPxGridView
                                ID="gridPermisos"
                                ClientInstanceName="gridPermisos"
                                runat="server"
                                AutoGenerateColumns="False"
                                DataSourceID="SqlDSPermisosEmpresa"
                                KeyFieldName="idRol">
                                <ClientSideEvents ToolbarItemClick="OnToolbarEmpresasItemClick" />
                                <SettingsAdaptivity AdaptivityMode="HideDataCells">
                                    <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                                </SettingsAdaptivity>
                                <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

                                <SettingsPager AlwaysShowPager="True"></SettingsPager>

                                <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

                                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                                <SettingsBehavior AllowSelectByRowClick="True" AllowFocusedRow="True"></SettingsBehavior>

                                <SettingsPopup>
                                    <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True"></EditForm>
                                </SettingsPopup>

                                <SettingsSearchPanel Visible="True" />

                                <StylesPopup>
                                    <EditForm>
                                        <Header BackColor="#007bff" Border-BorderColor="#007bff" Border-BorderStyle="Solid" ForeColor="White">
                                        </Header>
                                    </EditForm>
                                </StylesPopup>

                                <EditFormLayoutProperties ColCount="4" ColumnCount="4">
                                    <Items>
                                        <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="VerResultados" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="VerConstanciaDC3" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="VerExpedientesATS" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="VerCentrosTrabajo" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="VerCursos" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="VerEmpresas" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="VerConfiguracion" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:EditModeCommandLayoutItem ColSpan="4" ColumnSpan="4" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                                    </Items>
                                </EditFormLayoutProperties>
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="idRol" ReadOnly="True" VisibleIndex="0" Caption="OIDRol" Visible="False">
                                        <EditFormSettings Visible="False"></EditFormSettings>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="1" Caption="OIDEmpresa" Visible="False"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="2" Caption="Descripci&#243;n"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataCheckColumn FieldName="VerResultados" VisibleIndex="3" Caption="Resultados"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="VerConstanciaDC3" VisibleIndex="4" Caption="Constancia DC-3"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="VerExpedientesATS" VisibleIndex="5" Caption="Expedientes ATS"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="VerCentrosTrabajo" VisibleIndex="6" Caption="Centros de Trabajo"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="VerCursos" VisibleIndex="7" Caption="Cursos"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="VerEmpresas" VisibleIndex="8" Caption="Empresas"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="VerConfiguracion" VisibleIndex="9" Caption="Configuraci&#243;n"></dx:GridViewDataCheckColumn>
                                </Columns>
                                <Toolbars>
                                    <dx:GridViewToolbar ItemAlign="Right">
                                        <Items>
                                            <dx:GridViewToolbarItem Text="Editar" Command="Edit" BeginGroup="True">
                                                <Image UrlChecked="~/Content/icons/edit.png" UrlDisabled="~/Content/icons/edit.png" UrlHottracked="~/Content/icons/edit.png" UrlSelected="~/Content/icons/edit.png" Height="32px" Width="32px" Url="~/Content/icons/edit.png"></Image>
                                                <ItemStyle Border-BorderColor="#007bff" Border-BorderStyle="Solid" />
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
                            </dx:ASPxGridView>

                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>--%>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- SQLDS ENTIDADES -->
    <asp:SqlDataSource ID="SqlDSEntidad" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [IdEntidadFederativa], [ClaveEntidad], [Descripcion] FROM [CatEntidadFederativa] WHERE ([Activo] = @Activo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>

    <!-- SQLDS MUNICIPIOS -->
    <asp:SqlDataSource ID="SqlDSMunicipio" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [idMunicipio], [Municipio], [ClaveEntidad], [ClaveMunicipio] FROM [CatMunicipios]"></asp:SqlDataSource>

    <!-- SQLDS COLONIAS -->
    <asp:SqlDataSource ID="SqlDSColonia" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [idCP], [Asentamiento] FROM [CatCodigosPostales]"></asp:SqlDataSource>

    <!-- SQLDS EMPRESAS -->
    <asp:SqlDataSource ID="SqlDSEmpresas" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDEmpresa], [Nombre], [CodigoEmpresa], [DescripcionGeneral], [CodigoNegocio], [Email], [LinkFacebook], [LinkWWW], [LinkMapa], [LadaInternacional], [TelefonoFijo], [TelefonoMovil], [NombreContacto], [Password], [CP], [OIDEntidadFederativa], [OIDMunicipio], [OIDColonia], [Calle], [NumExterior], [NumInterior], [FechaAlta], [FechaRenovacion], [EjecutivoCuenta], [Suspendido], [SuspendidoFecha], [SuspendidoMotivo], [Baja], [BajaFecha], [BajaMotivo], [BajaEjecutivo], [ComentariosGenerales] FROM [OpeNOMEmpresas] ORDER BY [OIDEmpresa] DESC">
    </asp:SqlDataSource>

    <!-- SQLDS PERMISOS DE LA EMPRESA SELECCIONADA -->
<%--    <asp:SqlDataSource ID="SqlDSPermisosEmpresa" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="spListadoGenUsuariosPermisos" SelectCommandType="StoredProcedure" UpdateCommand="spActualizarPermisosGenUsuariosRoles" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" DefaultValue="0" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="VerResultados" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="VerConstanciaDC3" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="VerExpedientesATS" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="VerCentrosTrabajo" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="VerCursos" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="VerEmpresas" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="VerConfiguracion" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="idRol" Type="Int32"></asp:Parameter>
        </UpdateParameters>

    </asp:SqlDataSource>--%>

    <!-- DISTRACTOR CARGANDO -->
    <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel" Modal="True"></dx:ASPxLoadingPanel>

</asp:Content>