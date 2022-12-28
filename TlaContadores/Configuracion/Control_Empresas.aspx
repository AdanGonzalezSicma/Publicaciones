<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Control_Empresas.aspx.cs" Inherits="CreandoProductividad.Configuracion.Control_Empresas" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenEmpresa" ClientInstanceName="hiddenEmpresa" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenModulo" ClientInstanceName="hiddenModulo" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenCursosVisualizaciones" ClientInstanceName="hiddenCursosVisualizaciones" runat="server"></dx:ASPxHiddenField>
    <!-- SCRIPT -->
    <script>    
        var visibleIndex;
        var idDocumento;
        function OnToolbarCursosClick(s, e) {
            if (e.item.name == 'Eliminar') {
                visibleIndex = gridCursosTalleres.GetFocusedRowIndex();
                idDocumento = gridCursosTalleres.GetRowKey(visibleIndex);
                popupEliminarCursoAsignado.Show();
            }
            if (e.item.name == 'Visualizaciones') {
                visibleIndex = gridCursosTalleres.GetFocusedRowIndex();
                idDocumento = gridCursosTalleres.GetRowKey(visibleIndex);
                hiddenCursosVisualizaciones.Set('OIDCursosVisualizaciones', idDocumento);
                if (visibleIndex >= 0) {
                popupVisualizarCursos.Show();
                }
            }
            //if (e.name == 'Correos') {
            //    visibleIndex = gridCursosTalleres.GetFocusedRowIndex();
            //    idDocumento = gridCursosTalleres.GetRowKey(visibleIndex);
            //    hiddenCursosVisualizaciones.Set('OIDCursosVisualizaciones', idDocumento);
            //}
        }
        function OnToolbarEmpresasClick(s, e) {
            if (e.item.name == 'Baja') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                idDocumento = gridEmpresas.GetRowKey(visibleIndex);
                hiddenEmpresa.Set('OIDEmpresa', idDocumento);
                popupBaja.Show();
            }
            if (e.item.name == 'Suspender') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                idDocumento = gridEmpresas.GetRowKey(visibleIndex);
                hiddenEmpresa.Set('OIDEmpresa', idDocumento);
                popupSuspender.Show();
            }
            if (e.item.name == 'Modulos') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                idDocumento = gridEmpresas.GetRowKey(visibleIndex);
                hiddenEmpresa.Set('OIDEmpresa', idDocumento);
                popupModulos.Show();
                gridModulos.Refresh();
            }
            if (e.item.name == 'Cobro') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                idDocumento = gridEmpresas.GetRowKey(visibleIndex);
                hiddenEmpresa.Set('OIDEmpresa', idDocumento);
                gridCobros.Refresh();
                popupCobros.Show();
            }
            if (e.item.name == 'Revicion') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                idDocumento = gridEmpresas.GetRowKey(visibleIndex);
                hiddenEmpresa.Set('OIDEmpresa', idDocumento);
                popupRevision.Show();
            }
            if (e.item.name == 'Cursos') {
                visibleIndex = gridEmpresas.GetFocusedRowIndex();
                idDocumento = gridEmpresas.GetRowKey(visibleIndex);
                hiddenEmpresa.Set('OIDEmpresa', idDocumento);
                gridCursosTalleres.Refresh();
                popupCursos.Show();
            }
        }
        function fncCerrarPopupBaja() {
            popupBaja.Hide();
        }
        function fncCerrarPopupBajaCurso() {
            popupEliminarCursoAsignado.Hide();
            visibleIndex = gridCursosTalleres.GetFocusedRowIndex();
            idDocumento = gridCursosTalleres.GetRowKey(visibleIndex);
            gridCursosTalleres.DeleteRow(visibleIndex);
        }
        function fncCerrarPopupSuspender() {
            popupSuspender.Hide();
        }
        function fncCerrarPopupCobros() {
            popupCobros.Hide();
        }
        function fncCerrarRevicion() {
            popupRevision.Hide();
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
         .dxbButton_Material.dxbTSys {
   font-size: 1rem;
   text-transform:none;
    
}
         .btn-cancelar{
             border-radius:0.35rem
         }
    </style>
    <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0" style="padding-top: 15px"><b>Control de empresas</b></h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item" style="color: white">Empresas</li>
                        <li class="breadcrumb-item active" style="color: white">Control de empresas</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />
    <!-- GRID EMPRESAS -->
    <dx:ASPxGridView
        ID="gridEmpresas"
        ClientInstanceName="gridEmpresas"
        runat="server"
        AutoGenerateColumns="False"
        DataSourceID="SqlDSEmpresas"
        KeyFieldName="OIDEmpresa"
        Width="100%">
        <ClientSideEvents ToolbarItemClick="OnToolbarEmpresasClick"></ClientSideEvents>
        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior AllowFocusedRow="True" />
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" />
            </EditForm>
        </SettingsPopup>
        <SettingsSearchPanel Visible="True" />
        <StylesPopup>
            <EditForm>
                <Header BackColor="Navy" ForeColor="White">
                </Header>
            </EditForm>
        </StylesPopup>
        <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" ReadOnly="True" Visible="False" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Empresa" FieldName="Nombre" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Código de empresa" FieldName="CodigoEmpresa" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RFC" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="E-Mail" FieldName="Email" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Móvil" FieldName="TelefonoMovil" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="Fecha de alta" FieldName="FechaAlta" VisibleIndex="7">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn Caption="Fecha de renovación" FieldName="FechaRenovacion" VisibleIndex="8">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Suspendido" VisibleIndex="11">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn Caption="Fecha de suspención" FieldName="SuspendidoFecha" VisibleIndex="12">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn Caption="Baja" FieldName="Baja" VisibleIndex="14">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn Caption="Encuestas realizadas" FieldName="encuestasrealizadas" ReadOnly="True" VisibleIndex="4">
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Centros de trabajo" FieldName="centrostrabajo" ReadOnly="True" VisibleIndex="5">
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="No. de personal" FieldName="personal" ReadOnly="True" VisibleIndex="6">
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn Caption="Motivo de suspención" FieldName="SuspendidoMotivo" VisibleIndex="13">
                <PropertiesMemoEdit Rows="3">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataTextColumn FieldName="BajaFecha" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn FieldName="BajaMotivo" VisibleIndex="16">
                <PropertiesMemoEdit Rows="3">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarEmpresa">
                <Items>
                    <dx:GridViewToolbarItem Command="Edit" Visible="false" AdaptiveText="Editar" BeginGroup="True" Name="Editar" Text="Editar">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Baja" BeginGroup="True" Name="Baja" Text="Baja">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Suspender" BeginGroup="True" Name="Suspender" Text="Suspender">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/cancelDocument-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Módulos" BeginGroup="True" Name="Modulos" Text="Permisos">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/Module-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/Module-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/Module-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/Module-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/Module-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Conceptos de cobro" Visible="false" BeginGroup="True" Name="Cobro" Text="Conceptos de cobro">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/Bill-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/Bill-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/Bill-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/Bill-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/Bill-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Cursos y Talleres" Text="Cursos y Talleres" BeginGroup="True" Name="Cursos">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/Module-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/Module-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/Module-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/Module-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/Module-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="Revicion" AdaptiveText="Ingresar como Empresa" BeginGroup="True" Text="Ingresar como Empresa">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/empresa-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/empresa-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/empresa-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/empresa-v2.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/empresa-v2.png"></Image>

                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle Border-BorderColor="#F88017" Border-BorderStyle="Solid" BackColor="#F88017"></HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
        <Styles>
            <Header BackColor="#43BFC7" ForeColor="White">
            </Header>
            <PagerBottomPanel BackColor="#43BFC7">
            </PagerBottomPanel>
        </Styles>
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
        Font-Bold="False" Width="650px"
        runat="server">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xl-12">
                        <p style="font-size:18px">¿Está seguro que desea ingresar como empresa?</p>
                    </div>
                  
                </div>
                <div class="text-right">
                    <asp:Button ID="btnRevicion" CssClass="btn btn-primary" runat="server" Text="Ingresar" OnClick="btnRevicion_Click" OnClientClick="fncCerrarRevicion" BorderStyle="Solid" BorderWidth="3px" />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP CURSOS -->
    <dx:ASPxPopupControl
        ID="popupCursos" 
        ClientInstanceName="popupCursos"
        runat="server"
        HeaderText="Listado de Cursos y Talleres"
        Font-Bold="False" Width="1000px" CloseAction="CloseButton" CloseOnEscape="false" Modal="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" AllowDragging="true">
        <SettingsAdaptivity MinHeight="30%" MinWidth="60%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <dx:ASPxGridView
                    ID="gridCursosTalleres"
                    ClientInstanceName="gridCursosTalleres"
                    runat="server" OnRowInserting="gridCursosTalleres_RowInserting" OnInitNewRow="gridCursosTalleres_InitNewRow"
                    Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDSCursosTalleres" KeyFieldName="OIDCursosAsignados">
                    <ClientSideEvents ToolbarItemClick="OnToolbarCursosClick"></ClientSideEvents>

                    <SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
                      <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
                    <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

                    <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

                    <SettingsPopup>
                        <EditForm Modal="True" CloseOnEscape="False" HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                            <SettingsAdaptivity MinHeight="40%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
                        </EditForm>
                    </SettingsPopup>

                    <StylesPopup> 
                        <EditForm>
                            <Header BackColor="Navy" ForeColor="White">
                            </Header>
                        </EditForm>
                    </StylesPopup>

                    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColumnName="OIDCurso" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="CantidadDeReproduccion" ColSpan="2" Caption="M&#225;x. Repro" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="Fecha Inicio" ColSpan="1"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Fecha Termino"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="Cantidad De Captchas" ColSpan="1" Caption="Cant.Captchas"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewLayoutGroup Caption="Solicitar confirmaci&#243;n de:" ColCount="1" ColSpan="2" ColumnSpan="2">
                                <Items>
                                    <dx:GridViewColumnLayoutItem ColumnName="Capcha" ColSpan="1" Caption="&#191;Solicitar comprobaci&#243;n de presencia (captcha)?"></dx:GridViewColumnLayoutItem>
                                    <dx:GridViewColumnLayoutItem ColumnName="Num. Encuesta" ColSpan="1" Caption="&#191;Solicitar n&#250;mero de encuesta?
">
                                    </dx:GridViewColumnLayoutItem>
                                    <dx:GridViewColumnLayoutItem ColumnName="Activar PIN Seguridad" Caption="&#191;Solicitar email/PIN de acceso?" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                    <dx:GridViewColumnLayoutItem ColumnName="Activar Info Usuario" Caption="&#191;Solicitar informaci&#243;n del usuario?
"
                                        ColSpan="1">
                                    </dx:GridViewColumnLayoutItem>
                                </Items>
                            </dx:GridViewLayoutGroup>

                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDCursosAsignados" VisibleIndex="0" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="3" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Titulo" VisibleIndex="4" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Categoria" VisibleIndex="5" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="CantidadDeReproduccion" VisibleIndex="6" Visible="False" Width="30%">
                            <PropertiesTextEdit>
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="OIDCurso" Caption="Título del Curso" VisibleIndex="1" Width="30%">
                            <PropertiesComboBox DataSourceID="SqlDSCursos" TextField="Titulo" ValueField="OIDCurso" NullText="Seleccione Curso">
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>

                        <dx:GridViewDataCheckColumn FieldName="ActivarCaptcha" VisibleIndex="8" Caption="Capcha" Width="10%">
                            <PropertiesCheckEdit ValueGrayed="False"></PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaTermino" VisibleIndex="11" Width="15%">
                            <PropertiesDateEdit>
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaInicio" VisibleIndex="10" Width="15%">
                            <PropertiesDateEdit>
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="TotVisua" Caption="Cant. Repro" VisibleIndex="7"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="ActivarNumEncuesta" Caption="Num. Encuesta" VisibleIndex="9">
                            <PropertiesCheckEdit ValueGrayed="False"></PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="OIDTipo" VisibleIndex="2" Caption="Tipo">
                            <PropertiesComboBox DataSourceID="SqlDSTIpo" TextField="Tipo" ValueField="OIDCursosTipo"></PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataCheckColumn FieldName="ActivarPINSeguridad" VisibleIndex="13" Visible="False">
                            <PropertiesCheckEdit ValueGrayed="False"></PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn FieldName="ActivarInfoUsuario" VisibleIndex="12" Visible="False">
                            <PropertiesCheckEdit ValueGrayed="False"></PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn FieldName="CantidadDeCaptchas" VisibleIndex="14" Visible="False"></dx:GridViewDataTextColumn>
                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolCursos">
                            <Items>
                                <dx:GridViewToolbarItem BeginGroup="True" Text="Visualizaciones" Name="Visualizaciones" Visible="false">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" ForeColor="White" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Command="New" BeginGroup="True" Text="Nuevo" Name="Nuevo">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" ForeColor="White" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem BeginGroup="True" Text="Editar" Command="Edit" Name="Editar">
                                    <Image UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png"></Image>

                                    <ItemStyle BackColor="Navy" ForeColor="White"></ItemStyle>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="Eliminar" BeginGroup="True" Text="Eliminar">
                                    <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png"></Image>

                                    <ItemStyle BackColor="Navy" ForeColor="White"></ItemStyle>
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
                    </Styles>
                </dx:ASPxGridView>
                <asp:SqlDataSource runat="server" ID="SqlDSCursosTalleres" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' InsertCommand="INSERT INTO [dbo].[CatNomCursosAsignados]
           ([OIDEmpresa]
           ,[OIDCurso]
           ,[CantidadDeReproduccion]
           ,[ActivarCaptcha]
           ,[ActivarNumEncuesta]
           ,[FechaAsignacion]
           ,[FechaInicio]
           ,[FechaTermino]
           ,[CantidadDeCaptchas], ActivarPINSeguridad,ActivarInfoUsuario)
     VALUES
           (@OIDEmpresa
           ,@OIDCurso
           ,@CantidadDeReproduccion
           ,@ActivarCaptcha
           ,@ActivarNumEncuesta
           ,@FechaAsignacion
           ,@FechaInicio
           ,@FechaTermino
           ,@CantidadDeCaptchas, @ActivarPINSeguridad,@ActivarInfoUsuario)"
                    SelectCommand="spCursosAsignadosVisua" SelectCommandType="StoredProcedure" DeleteCommand="DELETE FROM [dbo].[CatNomCursosAsignados]
     WHERE OIDCursosAsignados = @OIDCursosAsignados"
                    UpdateCommand="UPDATE [dbo].[CatNomCursosAsignados]
   SET [OIDEmpresa] = @OIDEmpresa
      ,[OIDCurso] = @OIDCurso
      ,[CantidadDeReproduccion] = @CantidadDeReproduccion
      ,[ActivarCaptcha] = @ActivarCaptcha
      ,[FechaAsignacion] = @FechaAsignacion
      ,[FechaInicio] = @FechaInicio
      ,[FechaTermino] = @FechaTermino
       ,[ActivarNumEncuesta] = @ActivarNumEncuesta
       ,[CantidadDeCaptchas] = @CantidadDeCaptchas
       ,ActivarPINSeguridad = @ActivarPINSeguridad
       ,ActivarInfoUsuario = @ActivarInfoUsuario
 WHERE OIDCursosAsignados = @OIDCursosAsignados">
                    <DeleteParameters>
                        <asp:Parameter Name="OIDCursosAsignados"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OIDEmpresa"></asp:Parameter>
                        <asp:Parameter Name="OIDCurso"></asp:Parameter>
                        <asp:Parameter Name="CantidadDeReproduccion"></asp:Parameter>
                        <asp:Parameter Name="ActivarCaptcha"></asp:Parameter>
                        <asp:Parameter Name="ActivarNumEncuesta"></asp:Parameter>
                        <asp:Parameter Name="FechaAsignacion"></asp:Parameter>
                        <asp:Parameter Name="FechaInicio"></asp:Parameter>
                        <asp:Parameter Name="FechaTermino"></asp:Parameter>
                        <asp:Parameter Name="CantidadDeCaptchas"></asp:Parameter>
                        <asp:Parameter Name="ActivarPINSeguridad"></asp:Parameter>
                        <asp:Parameter Name="ActivarInfoUsuario"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hiddenEmpresa" Name="OIDEmpresa" PropertyName="['OIDEmpresa']" Type="Int32" DefaultValue="" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="OIDEmpresa"></asp:Parameter>
                        <asp:Parameter Name="OIDCurso"></asp:Parameter>
                        <asp:Parameter Name="CantidadDeReproduccion"></asp:Parameter>
                        <asp:Parameter Name="ActivarCaptcha"></asp:Parameter>
                        <asp:Parameter Name="FechaAsignacion"></asp:Parameter>
                        <asp:Parameter Name="FechaInicio"></asp:Parameter>
                        <asp:Parameter Name="FechaTermino"></asp:Parameter>
                        <asp:Parameter Name="ActivarNumEncuesta"></asp:Parameter>
                        <asp:Parameter Name="CantidadDeCaptchas"></asp:Parameter>
                        <asp:Parameter Name="ActivarPINSeguridad"></asp:Parameter>
                        <asp:Parameter Name="ActivarInfoUsuario"></asp:Parameter>
                        <asp:Parameter Name="OIDCursosAsignados"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDSCursos" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDCurso], [Titulo] FROM [CatNomCursos] WHERE (([Activo] = @Activo) AND ([OIDEmpresa] = @OIDEmpresa))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="Activo" Type="Boolean"></asp:Parameter>
                        <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDSTIpo" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDCursosTipo], [Tipo] FROM [CatNOMCursosTipo]"></asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP CURSOS CORREOS -->
    <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server"></dx:ASPxPopupControl>

    <!-- POPUP VISUALIZAR CURSOS -->
    <dx:ASPxPopupControl
        ID="popupVisualizarCursos"
        ClientInstanceName="popupVisualizarCursos"
        runat="server"
        HeaderText="Listado de Cursos y Talleres"
        Font-Bold="False" Width="600px" CloseAction="CloseButton" CloseOnEscape="false" Modal="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" AllowDragging="true">
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxGridView
                    ID="gridVisualizacionesCursos"
                    ClientInstanceName="gridVisualizacionesCursos" 
                    Width="100%"
                    runat="server" 
                    AutoGenerateColumns="False" 
                    DataSourceID="SqlDSCursosVisualizaciones" 
                    KeyFieldName="OIDCursosVisualizaciones">
                    <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDCursosVisualizaciones" ReadOnly="True" VisibleIndex="0" Visible="False">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDCentroTrabajo" VisibleIndex="3"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NumEncuesta" VisibleIndex="4"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaInicio" VisibleIndex="5"></dx:GridViewDataDateColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaFinal" VisibleIndex="6"></dx:GridViewDataDateColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="OIDCursoAsignado" Caption="Curso Asignado" VisibleIndex="2"></dx:GridViewDataComboBoxColumn>
                    </Columns>
                </dx:ASPxGridView>
                <asp:SqlDataSource runat="server" ID="SqlDSCursosVisualizaciones" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDCursosVisualizaciones], [OIDEmpresa], [OIDCursoAsignado], [OIDCentroTrabajo], [NumEncuesta], [FechaInicio], [FechaFinal] FROM [CatNomCursosVisualizaciones] WHERE ([OIDCursosVisualizaciones] = @OIDCursosVisualizaciones) ORDER BY [OIDCursosVisualizaciones] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hiddenCursosVisualizaciones" Name="OIDCursosVisualizaciones" PropertyName="['OIDCursosVisualizaciones']" Type="Int32" DefaultValue="" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP ELIMINAR MODULOS -->
    <dx:ASPxPopupControl
        ID="popupEliminarCursoAsignado"
        ClientInstanceName="popupEliminarCursoAsignado"
        runat="server"
        Font-Bold="False"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" AllowDragging="true" HeaderText="¡Advertencia!" Width="650px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h4>¿Desea eliminar el curso seleccionado?</h4>
                <br />
                <div class="text-right">
                    <%--<asp:Button ID="btnEliminarCursoAsignado" Text="Baja" CssClass="btn btn-danger" runat="server"  BorderColor="#FF3547" BorderStyle="Solid" OnClientClick="fncCerrarPopupBajaCurso();" BackColor="#FF3547" />--%>
                    <dx:ASPxButton ID="btnEliminarCursoAsignado" runat="server" Text="Eliminar" AutoPostBack="false" BackColor="#FF3547" ForeColor="White" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { fncCerrarPopupBajaCurso(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCancelarCursoAsignado" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { popupEliminarCursoAsignado.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP MODULOS -->
    <dx:ASPxPopupControl
        ID="popupModulos"
        ClientInstanceName="popupModulos"
        runat="server"
        HeaderText="Listado de permisos"
        Font-Bold="False"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" AllowDragging="true">
        <SettingsAdaptivity MinHeight="20%" MinWidth="60%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">

                <dx:ASPxGridView
                    ID="gridModulos"
                    ClientInstanceName="gridModulos"
                    runat="server"
                    AutoGenerateColumns="False"
                    DataSourceID="SqlDSModulos"
                    KeyFieldName="idRol" Width="100%">
                    <SettingsAdaptivity AdaptivityMode="HideDataCells">
                        <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                    </SettingsAdaptivity>
                    <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

                    <StylesPopup>
                        <EditForm>
                            <Header BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White">
                            </Header>
                        </EditForm>
                    </StylesPopup>

                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <SettingsBehavior AllowFocusedRow="True" />
                    <SettingsPopup>
                        <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                        </EditForm>
                    </SettingsPopup>

                    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Descripcion" ColumnSpan="2" Visible="False">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VerResultados" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VerConstanciaDC3" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VerExpedientesATS" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VerCentrosTrabajo" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VerCursos" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VerEmpresas" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="VerConfiguracion" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
                            </dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="idRol" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDEmpresa" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Descripcion" ShowInCustomizationForm="True" VisibleIndex="2" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="VerResultados" ShowInCustomizationForm="True" VisibleIndex="3">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn FieldName="VerConstanciaDC3" ShowInCustomizationForm="True" VisibleIndex="4">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn FieldName="VerExpedientesATS" ShowInCustomizationForm="True" VisibleIndex="5">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn FieldName="VerCentrosTrabajo" ShowInCustomizationForm="True" VisibleIndex="6">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn FieldName="VerCursos" ShowInCustomizationForm="True" VisibleIndex="7">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn FieldName="VerEmpresas" ShowInCustomizationForm="True" VisibleIndex="8">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn FieldName="VerConfiguracion" ShowInCustomizationForm="True" VisibleIndex="9">
                        </dx:GridViewDataCheckColumn>
                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolbarModulos">
                            <Items>
                                <dx:GridViewToolbarItem AdaptiveText="Editar" BeginGroup="True" Command="Edit" Name="Editar" Text="Editar">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
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
                    </Styles>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDSModulos" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [idRol], [OIDEmpresa], [Descripcion], [VerResultados], [VerConstanciaDC3], [VerExpedientesATS], [VerCentrosTrabajo], [VerCursos], [VerEmpresas], [VerConfiguracion] FROM [GenUsuariosRoles] WHERE ([OIDEmpresa] = @OIDEmpresa)" UpdateCommand="UPDATE [NOM035].[dbo].[GenUsuariosRoles]
   SET [VerResultados] = @VerResultados
      ,[VerConstanciaDC3] = @VerConstanciaDC3
      ,[VerExpedientesATS] = @VerExpedientesATS
      ,[VerCentrosTrabajo] = @VerCentrosTrabajo
      ,[VerCursos] = @VerCursos
      ,[VerEmpresas] = @VerEmpresas
      ,[VerConfiguracion] = @VerConfiguracion
 WHERE idRol = @idRol">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hiddenEmpresa" Name="OIDEmpresa" PropertyName="['OIDEmpresa']" Type="Int32" DefaultValue="" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="VerResultados" />
                        <asp:Parameter Name="VerConstanciaDC3" />
                        <asp:Parameter Name="VerExpedientesATS" />
                        <asp:Parameter Name="VerCentrosTrabajo" />
                        <asp:Parameter Name="VerCursos" />
                        <asp:Parameter Name="VerEmpresas" />
                        <asp:Parameter Name="VerConfiguracion" />
                        <asp:Parameter Name="idRol" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP BAJA -->
    <dx:ASPxPopupControl
        ID="popupBaja"
        ClientInstanceName="popupBaja"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h4>¿Desea dar de baja la empresa seleccionada?</h4>
                <br />
                <div class="text-right">
                    <asp:Button ID="btnBaja" Text="Baja" CssClass="btn btn-danger" BorderWidth="3px" runat="server"  BorderColor="#FF3547" BorderStyle="Solid" OnClientClick="fncCerrarPopupBaja();" BackColor="#FF3547" OnClick="btnBaja_Click" Width="100px" style="padding: 6px 13px 4px!important" />
                    <dx:ASPxButton ID="btnCerrarEliminar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger" Width="100px">
                        <ClientSideEvents Click="function (s, e) { popupBaja.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP SUSPENDER -->
    <dx:ASPxPopupControl
        ID="popupSuspender"
        ClientInstanceName="popupSuspender"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h4>¿Desea suspender la empresa seleccionada?</h4>
                <br />
                <div class="text-right">
                    <asp:Button ID="btnSuspender" Text="Suspender" CssClass="btn btn-danger"  runat="server" BorderColor="#FF3547" BorderStyle="Solid" OnClientClick="fncCerrarPopupSuspender();" BackColor="#FF3547" OnClick="btnSuspender_Click"  BorderWidth="3px" Width="100px" style="padding: 6px 13px 4px!important" />
                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger" Width="110px"  >
                        <ClientSideEvents Click="function (s, e) { popupSuspender.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- POPUP COBROS -->
    <dx:ASPxPopupControl
        ID="popupCobros"
        ClientInstanceName="popupCobros"
        runat="server"
        HeaderText="Listado de cobros"
        Font-Bold="False"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
        <SettingsAdaptivity MinHeight="40%" MinWidth="60%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                
                <dx:ASPxGridView
                    ID="gridCobros" 
                    ClientInstanceName="gridCobros"
                    runat="server" Width="100%"
                    AutoGenerateColumns="False"
                    DataSourceID="SqlDSCobros"
                    KeyFieldName="OIDCobro"
                    OnInitNewRow="gridCobros_InitNewRow" OnRowInserting="gridCobros_RowInserting">
                    <SettingsAdaptivity>
                        <AdaptiveDetailLayoutProperties ColCount="1">
                        </AdaptiveDetailLayoutProperties>
                    </SettingsAdaptivity>
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings ShowGroupPanel="True" />
                    <SettingsBehavior AllowFocusedRow="True" />
                    <SettingsPopup>
                        <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                            <SettingsAdaptivity MaxWidth="40%" MinHeight="40%" Mode="Always" VerticalAlign="WindowCenter" />
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
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Status" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaCreacion">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaSubida">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Concepto de cobro" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Cantidad" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Comprobante" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Comentarios" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
                            </dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDCobro" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="0">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDEmpresa" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Cantidad" ShowInCustomizationForm="True" VisibleIndex="3">
                            <PropertiesTextEdit DisplayFormatString="c">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn Caption="Fecha de creación" FieldName="FechaCreacion" ShowInCustomizationForm="True" VisibleIndex="4">
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataDateColumn Caption="Fecha de subida" FieldName="FechaSubida" ShowInCustomizationForm="True" VisibleIndex="5" ReadOnly="true">
                            <PropertiesDateEdit >
                             <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                            </PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="Comprobante" ShowInCustomizationForm="True" VisibleIndex="6" ReadOnly="true">
                            <PropertiesTextEdit>
                                <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                            </PropertiesTextEdit>
                            <DataItemTemplate>
                                <asp:LinkButton ID="linkDownload" runat="server" CommandArgument='<%# Eval("Comprobante") %>' Text='<%# Eval("Comprobante") %>' OnClick="linkDownload_Click"></asp:LinkButton>
                            </DataItemTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn Caption="Estatus" FieldName="Status" ShowInCustomizationForm="True" VisibleIndex="9">
                            <PropertiesCheckEdit ValueGrayed="False">
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataMemoColumn FieldName="Comentarios" ShowInCustomizationForm="True" VisibleIndex="8" Visible="False">
                            <PropertiesMemoEdit Columns="6">
                            </PropertiesMemoEdit>
                        </dx:GridViewDataMemoColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Concepto de cobro" FieldName="OIDConcepto" ShowInCustomizationForm="True" VisibleIndex="2">
                            <PropertiesComboBox DataSourceID="sqlDSConceptosCobro" TextField="Concepto" ValueField="OIDConceptosCobro">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolbarCobros">
                            <Items>
                                <dx:GridViewToolbarItem BeginGroup="True" Command="New" Name="Nuevo" Text="Nuevo">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/nuevo-iconov2.png" UrlChecked="~/Content/icons/iconos-nuevos/nuevo-iconov2.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo-iconov2.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo-iconov2.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo-iconov2.png" Width="32px">
                                    </Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem BeginGroup="True" Command="Edit" Name="Editar" Text="Editar">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar-iconov2.png" UrlChecked="~/Content/icons/iconos-nuevos/editar-iconov2.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-iconov2.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-iconov2.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-iconov2.png" Width="32px">
                                    </Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem BeginGroup="True" Name="Eliminar" Text="Eliminar">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/delete-iconov2.png" UrlChecked="~/Content/icons/iconos-nuevos/delete-iconov2.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-iconov2.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-iconov2.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-iconov2.png" Width="32px">
                                    </Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
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
                    </Styles>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDSCobros" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDCobro], [OIDEmpresa], [OIDConcepto], [Cantidad], [FechaCreacion], [FechaSubida], [Comprobante], [Comentarios], [Status],GuidCobro FROM [GenCobros] WHERE ([OIDEmpresa] = @OIDEmpresa) ORDER BY [OIDCobro] DESC" DeleteCommand="DELETE FROM [NOM035].[dbo].[GenCobros]
      WHERE OIDCobro = @OIDCobro"
                    InsertCommand="INSERT INTO [NOM035].[dbo].[GenCobros]
           ([OIDEmpresa]
           ,[OIDConcepto]
           ,[Cantidad]
           ,[FechaCreacion]
           ,[Comentarios]
           ,[Status],GuidCobro)
     VALUES
           (@OIDEmpresa
           ,@OIDConcepto
           ,@Cantidad
           ,@FechaCreacion
           ,@Comentarios
           ,@Status,@GuidCobro)"
                    UpdateCommand="UPDATE [NOM035].[dbo].[GenCobros]
   SET [OIDConcepto] = @OIDConcepto
      ,[Cantidad] = @Cantidad
 WHERE OIDCobro = @OIDCobro">
                    <DeleteParameters>
                        <asp:Parameter Name="OIDCobro" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OIDEmpresa" />
                        <asp:Parameter Name="OIDConcepto" />
                        <asp:Parameter Name="Cantidad" />
                        <asp:Parameter Name="FechaCreacion" />
                        <asp:Parameter Name="Comentarios" />
                        <asp:Parameter Name="Status" />
                        <asp:Parameter Name="GuidCobro" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hiddenEmpresa" Name="OIDEmpresa" PropertyName="['OIDEmpresa']" Type="Int32" DefaultValue="" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="OIDConcepto" />
                        <asp:Parameter Name="Cantidad" />
                        <asp:Parameter Name="OIDCobro" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlDSConceptosCobro" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDConceptosCobro], [Concepto] FROM [CatNOMConceptosCobro] WHERE ([Activo] = @Activo)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="Activo" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <!-- SQLDS Empresas -->
    <asp:SqlDataSource ID="SqlDSEmpresas" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="select empresas.OIDEmpresa,empresas.Nombre,empresas.CodigoEmpresa,empresas.RFC,empresas.Email,empresas.TelefonoMovil,empresas.FechaAlta,
empresas.FechaRenovacion,empresas.Suspendido,empresas.SuspendidoFecha,empresas.SuspendidoMotivo,empresas.Baja,empresas.BajaFecha,empresas.BajaMotivo,
ISNULL(encuestas.encuestasrealizadas,0) as encuestasrealizadas, ISNULL(unidades.centrostrabajo,0) as centrostrabajo, 
ISNULL(unidades.personal,0) as personal from 
(select OIDEmpresa,Nombre,CodigoEmpresa,RFC,Email,TelefonoMovil,FechaAlta,FechaRenovacion,Suspendido,SuspendidoFecha,
SuspendidoMotivo,Baja,BajaFecha,BajaMotivo from OpeNOMEmpresas) as empresas
left join 
(select oidempresa, COUNT(*) as encuestasrealizadas
 from OpeNOMEncuestas group by OIDEmpresa) as encuestas
on empresas.oidempresa = encuestas.oidempresa
left join
(select idempresa,COUNT(*) as centrostrabajo,SUM(NoPersonal) as personal from CatNOMUnidadesEvaluar group by idEmpresa) as unidades
on empresas.oidempresa = unidades.idempresa
inner join 
(select * from OpeNOMEmpresasAsignadas) as asignadas
on empresas.OIDEmpresa = asignadas.OIDEmpresaAsignada
where asignadas.OIDEmpresaNodriza = @OIDEmpresaNodriza
ORDER BY empresas.OIDEmpresa DESC">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="OIDEmpresaNodriza"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>