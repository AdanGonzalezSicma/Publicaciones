<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NOMEncuestasCuestionarios.aspx.cs" Inherits="CreandoProductividad.Catalogos.CatNomEncuestasCuestionarios" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenCuestionarioID" ClientInstanceName="hiddenCuestionarioID" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenPreguntaID" ClientInstanceName="hiddenPreguntaID" runat="server"></dx:ASPxHiddenField>

    <!-- SCRIPT -->
    <script>
        var visibleIndex;

        function OnToolbarItemCuestionariosClick(s, e) {
            if (e.item.name == "Eliminar") {
                visibleIndex = gridCuestionarios.GetFocusedRowIndex();
                PopupEliminarCuestionario.Show();
            }
            if (e.item.name == "Preguntas") {
                visibleIndex = gridCuestionarios.GetFocusedRowIndex();
                gridCuestionarios.GetRowValues(visibleIndex, 'OIDCuestionario;Activo', fncAbrirPopupPreguntas);
            }
            if (e.item.name == "GenerarURL") {
                visibleIndex = gridCuestionarios.GetFocusedRowIndex();
                gridCuestionarios.GetRowValues(visibleIndex, 'GUID;Activo', fncAbrirPopupGenerarLink);
            }
        }

        function fncAbrirPopupGenerarLink(value) {
            var OIDCuestionario = value[0];
            var CuestionarioURL = location.hostname + "/Cuestionarios/Cuestionario.aspx?id=" + OIDCuestionario + "";
            var txtCuestionarioURL = document.getElementById("ContentPlaceHolder1_PopupGenerarURL_txtCuestionarioURL");
            txtCuestionarioURL.value = CuestionarioURL;
            PopupGenerarURL.Show();
        }

        function CopyCuestionarioURL() {
            var copyText = document.getElementById("ContentPlaceHolder1_PopupGenerarURL_txtCuestionarioURL");
            copyText.select();
            copyText.setSelectionRange(0, 99999)
            document.execCommand("copy");
        }

        function fncAbrirPopupPreguntas(value) {
            var OIDCuestionario = 0;
            OIDCuestionario = value[0];
            
            if (OIDCuestionario != 0) {
                hiddenCuestionarioID.Set("OIDCuestionario", OIDCuestionario);
                cbListarPreguntas.PerformCallback();
                PopupPreguntas.Show();
            } else {
                PopupError.Show();
            }
        }

        function OnToolbarItemClick(s, e) {
            if (e.item.name == "EliminarPregunta") {
                visibleIndex = gridPreguntas.GetFocusedRowIndex();
                gridPreguntas.GetRowValues(visibleIndex, 'OIDPregunta;Activo', fncEliminarPregunta);
            }
        }

        function fncEliminarPregunta(value) {
            var OIDPregunta = 0;
            OIDPregunta = value[0];

            if (OIDPregunta != 0) {
                hiddenPreguntaID.Set("OIDPregunta", OIDPregunta);
                PopupEliminarPregunta.Show();
            } else {
                PopupError.Show();
            }
        }

        function fncCerrarPopupEliminarPregunta() {
            PopupEliminarPregunta.Hide();
        }
    </script>
     <style>
        .dxmLite_Material .dxctToolbar_Material.dxm-main.dxmtb {
    background-color: #f4f5f8;
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
     <section class="content-header">
      <div class="container-fluid">
    <div class="row">
            <div class="col-sm-12">
               
    <h3 class="m-0" style=" padding-top:15px;">
                 <%
                int TipoCuestionario = Convert.ToInt32(Session["TipoCuestionario"]);
                

                switch (TipoCuestionario)
                {
                    case 1:
                        %><b>Guia Referencia I.- Acontecimientos Traumaticos</ b><%
                        break;
                    case 2:
                        %><b>Guia Referencia II.- Factores de Riesgo Psicosocial</ b><%
                        break;
                    case 3:
                        %><b>Guia Referencia III.- Evaluación del Entorno Psicosocial</ b><%
                        break;
                    default:
                        %><b>Cuestionarios</ b><%
                        break;
                }
            %>

    </h3>
              <br /> 

            </div>
<div class="col-sm-6 col-lg-6 col-md-6">
           
          </div>
         
        </div>
</div></section>
    <!-- GRID CUESTIONARIOS -->
    <dx:ASPxGridView 
        ID="gridCuestionarios" 
        ClientInstanceName="gridCuestionarios"
        runat="server" 
        AutoGenerateColumns="False" 
        DataSourceID="SqlDSCuestionarios" 
        KeyFieldName="OIDCuestionario" 
        Width="100%" 
        OnInitNewRow="gridCuestionarios_InitNewRow" 
        OnRowInserting="gridCuestionarios_RowInserting">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemCuestionariosClick" />
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <SettingsPager AlwaysShowPager="True"></SettingsPager>

        <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>

        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior AllowFocusedRow="True" />
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" Modal="True" VerticalAlign="WindowCenter">
                <SettingsAdaptivity MinHeight="30%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
            </EditForm>
        </SettingsPopup>

        <StylesPopup>
            <EditForm>
                <Header BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White">
                </Header>
            </EditForm>
        </StylesPopup>

<EditFormLayoutProperties ColCount="2" ColumnCount="2">
    <Items>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="OIDGuia" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Descripcion" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Indicaciones" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Objetivo" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="UsuarioAlta" Visible="False">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaAlta" Visible="False">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Activo">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="InactividadFecha" Visible="False">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="InactividadMotivo" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Tipo" Caption="Tipo cuestionario" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="InactividadUsuario" Visible="False">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColumnName="Orden" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
        <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
        </dx:EditModeCommandLayoutItem>
    </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDCuestionario" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UsuarioAlta" VisibleIndex="5" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaAlta" VisibleIndex="6" Visible="False">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="7">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="InactividadFecha" VisibleIndex="8" Visible="False">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="InactividadUsuario" VisibleIndex="10" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Guía" FieldName="OIDGuia" ShowInCustomizationForm="True" VisibleIndex="1">
                <PropertiesComboBox DataSourceID="SqlDSCuestionariosGuia" TextField="Nombre" ValueField="OIDGuia">
                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right" RequiredField-IsRequired="true" 
                                        RequiredField-ErrorText="Seleccionar una opción." ValidateOnLeave="true" SetFocusOnError="true">
                        <RequiredField IsRequired="True" ErrorText="Seleccionar una opción."></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataMemoColumn FieldName="Descripcion" ShowInCustomizationForm="True" VisibleIndex="2">
                <PropertiesMemoEdit Rows="3">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="Indicaciones" ShowInCustomizationForm="True" VisibleIndex="3">
                <PropertiesMemoEdit Rows="3">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="Objetivo" ShowInCustomizationForm="True" VisibleIndex="4" Visible="False">
                <PropertiesMemoEdit Rows="6">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="InactividadMotivo" ShowInCustomizationForm="True" VisibleIndex="9" Visible="False">
                <PropertiesMemoEdit Rows="4">
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataTextColumn FieldName="GUID" Visible="False" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="Tipo" Visible="False" VisibleIndex="11">
                <PropertiesComboBox DataSourceID="SqlDSTipoCuestionarios" TextField="Cuestionario" ValueField="OIDTipoCuestionario"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="Orden" VisibleIndex="13">
                <PropertiesTextEdit>
                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right" RequiredField-IsRequired="true" 
                                        RequiredField-ErrorText="Ingresar orden." ValidateOnLeave="true" SetFocusOnError="true">
                        <RequiredField IsRequired="True" ErrorText="Ingresar orden."></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right">
                <Items>
                    <dx:GridViewToolbarItem BeginGroup="True" Command="New" Name="Nuevo" Text="Nuevo">
                        <Image AlternateText="Nuevo" Height="32px" Url="~/Content/icons/iconos-nuevos/nuevo.png" UrlChecked="~/Content/icons/iconos-nuevos/nuevo.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo.png" Width="32px"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Command="Edit" Name="Editar" Text="Editar">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" ToolTip="Editar" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Name="Eliminar" Text="Eliminar">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" AlternateText="Eliminar" ToolTip="Eliminar" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Text="Preguntas" BeginGroup="True" Name="Preguntas">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/registro-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/registro-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/registro-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/registro-v2.png" AlternateText="Preguntas" ToolTip="Preguntas" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/registro-v2.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid" ForeColor="White">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Text="Generar url" Name="GenerarURL" Visible="False">
                        <Image UrlChecked="~/Content/icons/new.png" UrlDisabled="~/Content/icons/new.png" UrlHottracked="~/Content/icons/new.png" UrlSelected="~/Content/icons/new.png" AlternateText="Generar url" ToolTip="Generar url" Height="32px" Width="32px" Url="~/Content/icons/new.png"></Image>
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
            <PagerBottomPanel BackColor="#43BFC7">
            </PagerBottomPanel>
        </Styles>
    </dx:ASPxGridView>

    <!-- POPUP ELIMINAR CUESTIONARIO -->
    <dx:ASPxPopupControl
        ID="PopupEliminarCuestionario"
        ClientInstanceName="PopupEliminarCuestionario"
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
                <h4>¿Desea eliminar el registro seleccionado?</h4>
                <br />
                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminarCuestionario" runat="server" Text="Eliminar" BackColor="#FF3547" AutoPostBack="false" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { gridCuestionarios.DeleteRow(visibleIndex);  PopupEliminarCuestionario.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCerrarEliminar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547"  CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { PopupEliminarCuestionario.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP PREGUNTAS -->
    <dx:ASPxPopupControl
        ID="PopupPreguntas"
        ClientInstanceName="PopupPreguntas"
        runat="server"
        Modal="True"
        CloseAction="CloseButton" AllowDragging="true" ShowPageScrollbarWhenModal="true" ShowViewportScrollbarWhenModal="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Listado de preguntas" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="40%" MinWidth="60%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxCallbackPanel ID="cbListarPreguntas" ClientInstanceName="cbListarPreguntas" runat="server" OnCallback="cbListarPreguntas_Callback">
                    <PanelCollection>
                        <dx:PanelContent runat="server">

                            <dx:ASPxGridView
                                ID="gridPreguntas"
                                ClientInstanceName="gridPreguntas"
                                runat="server"
                                AutoGenerateColumns="False"
                                DataSourceID="SqlDSPreguntas"
                                KeyFieldName="OIDPregunta"
                                Width="100%" 
                                OnInitNewRow="gridPreguntas_InitNewRow" 
                                OnRowInserting="gridPreguntas_RowInserting" 
                                OnRowUpdating="gridPreguntas_RowUpdating">
                                <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                                <SettingsAdaptivity AdaptivityMode="HideDataCells">
                                    <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                                </SettingsAdaptivity>
                                <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />

                                <SettingsPager AlwaysShowPager="True"></SettingsPager>

                                <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

                                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                                <SettingsBehavior AllowSelectByRowClick="True" AllowFocusedRow="True"></SettingsBehavior>

                                <SettingsPopup>
                                    <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                                        <SettingsAdaptivity MinHeight="30%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
                                    </EditForm>
                                </SettingsPopup>

                                <SettingsSearchPanel Visible="True" />

                                <StylesPopup>
                                    <EditForm>
                                        <Header BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White">
                                        </Header>
                                    </EditForm>
                                </StylesPopup>

                                <EditFormLayoutProperties ColCount="4" ColumnCount="4">
                                    <Items>
                                        <dx:GridViewColumnLayoutItem ColumnName="NumPregunta" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Orden" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Categor&#237;a" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Dominio" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Dimensi&#243;n" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Evento" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Tipo respuesta" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="TieneDependencia" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="PreguntasDependiente" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Respuestas dependientes" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:EditModeCommandLayoutItem ColSpan="4" ColumnSpan="4" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                                    </Items>
                                </EditFormLayoutProperties>
                                <Columns>
                                    <dx:GridViewDataTextColumn VisibleIndex="0" FieldName="OIDPregunta" ReadOnly="True" Caption="OIDPregunta" Visible="False">
                                        <EditFormSettings Visible="False"></EditFormSettings>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDDominio" VisibleIndex="14" Caption="OIDDominio" Visible="False"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDCategoria" VisibleIndex="15" Caption="OIDCategoria" Visible="False"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDDimension" VisibleIndex="16" Caption="OIDDimension" Visible="False"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="NumPregunta" VisibleIndex="1" Caption="No. pregunta"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Orden" VisibleIndex="2"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Evento" VisibleIndex="6"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataCheckColumn FieldName="TieneDependencia" VisibleIndex="8" Caption="Tiene dependencia"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="13"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="OIDDominio" Caption="Dominio" VisibleIndex="4">
                                        <PropertiesComboBox DataSourceID="SqlDSDDLDominios" TextField="DescripcionDominio" ValueField="OIDDominio">
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="OIDCategoria" Caption="Categor&#237;a" VisibleIndex="3">
                                        <PropertiesComboBox DataSourceID="SqlDSDDLCategorias" TextField="DescripcionCategoria" ValueField="OIDCategoria">
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="OIDDimension" Caption="Dimensi&#243;n" VisibleIndex="5">
                                        <PropertiesComboBox DataSourceID="SqlDSDDLDimensiones" TextField="DescripcionDimension" ValueField="OIDDimension">
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn FieldName="TipoRespuesta" Caption="Tipo respuesta" VisibleIndex="7">
                                        <PropertiesComboBox DataSourceID="SqlDSDDLTipoRespuestas" TextField="Descripcion" ValueField="OIDTipoRespuesta">
                                            <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right" RequiredField-IsRequired="true" RequiredField-ErrorText="Es necesario seleccionar un registro." ValidateOnLeave="true" SetFocusOnError="true">
                                                <RequiredField IsRequired="True" ErrorText="Es necesario seleccionar un registro."></RequiredField>
                                            </ValidationSettings>
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Preguntas dependientes" FieldName="PreguntasDependiente" ShowInCustomizationForm="True" VisibleIndex="9">
                                        <PropertiesComboBox DataSourceID="SqlDSPreguntas" TextField="Evento" ValueField="OIDPregunta">
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataTextColumn FieldName="RespuestaDependiente" Caption="Respuestas dependientes" VisibleIndex="12"></dx:GridViewDataTextColumn>

                                </Columns>
                                <Toolbars>
                                    <dx:GridViewToolbar ItemAlign="Right">
                                        <Items>
                                            <dx:GridViewToolbarItem Text="Nuevo" Command="New" BeginGroup="True">
                                                <Image UrlChecked="~/Content/icons/new.png" UrlDisabled="~/Content/icons/new.png" UrlHottracked="~/Content/icons/new.png" UrlSelected="~/Content/icons/new.png" Height="32px" Width="32px" Url="~/Content/icons/new.png"></Image>
                                                <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                            </dx:GridViewToolbarItem>
                                            <dx:GridViewToolbarItem Text="Editar" Command="Edit" BeginGroup="True">
                                                <Image UrlChecked="~/Content/icons/edit.png" UrlDisabled="~/Content/icons/edit.png" UrlHottracked="~/Content/icons/edit.png" UrlSelected="~/Content/icons/edit.png" Height="32px" Width="32px" Url="~/Content/icons/edit.png"></Image>
                                                <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                            </dx:GridViewToolbarItem>
                                            <dx:GridViewToolbarItem Text="Eliminar" Name="EliminarPregunta" BeginGroup="True">
                                                <Image UrlChecked="~/Content/icons/delete.png" UrlDisabled="~/Content/icons/delete.png" UrlHottracked="~/Content/icons/delete.png" UrlSelected="~/Content/icons/delete.png" Height="32px" Width="32px" Url="~/Content/icons/delete.png"></Image>
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
                                    <Footer BackColor="#43BFC7" ForeColor="White">
                                    </Footer>
                                </Styles>

                            </dx:ASPxGridView>

                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP ELIMINAR PREGUNTA -->
    <dx:ASPxPopupControl
        ID="PopupEliminarPregunta"
        ClientInstanceName="PopupEliminarPregunta"
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
                <h4>¿Desea eliminar el registro seleccionado?</h4>
                <br />
                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminarPregunta" OnClick="btnEliminarPregunta_Click" onmouseup="fncCerrarPopupEliminarPregunta();" runat="server" Text="Eliminar" BackColor="#FF3547">
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547">
                        <ClientSideEvents Click="function (s, e) { PopupEliminarPregunta.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP GENERAR URL -->
    <dx:ASPxPopupControl
        ID="PopupGenerarURL"
        ClientInstanceName="PopupGenerarURL"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Generar url" Font-Bold="False" Width="700px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#000080" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>

                <h4>URL del cuestionario</h4>
                <div class="input-group">
                    <asp:TextBox ID="txtCuestionarioURL" runat="server" CssClass="form-control"></asp:TextBox>
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onclick="CopyCuestionarioURL()">Copiar</button>
                    </span>
                </div>

            </dx:PopupControlContentControl>
        </ContentCollection>
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
                    <dx:ASPxButton ID="ASPxButton5" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547">
                        <ClientSideEvents Click="function (s, e) { PopupError.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- SQLDS CUESTIONARIOS -->
    <asp:SqlDataSource ID="SqlDSCuestionarios" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT 
	[OIDCuestionario], 
	[OIDGuia], 
	[Descripcion], 
	[Indicaciones], 
	[Objetivo], 
	[UsuarioAlta], 
	[FechaAlta], 
	[Activo], 
	[InactividadFecha], 
	[InactividadMotivo], 
	[InactividadUsuario], 
	[Tipo], 
	[GUID],
	[Orden]
		FROM [NOM035].[dbo].[CatNOMEncuestasCuestionarios] 
			WHERE OIDGuia = @OIDGuia
				ORDER BY Orden"
        DeleteCommand="DELETE FROM [NOM035].[dbo].[CatNOMEncuestasCuestionarios]
      WHERE OIDCuestionario = @OIDCuestionario"
        InsertCommand="INSERT INTO [NOM035].[dbo].[CatNOMEncuestasCuestionarios]
           ([OIDGuia]
           ,[Descripcion]
           ,[Indicaciones]
           ,[Objetivo]
           ,[UsuarioAlta]
           ,[FechaAlta]
           ,[Activo]
           ,[InactividadFecha]
           ,[InactividadMotivo]
           ,[InactividadUsuario]
           ,[Tipo]
           ,[guid]
           ,[Orden])
     VALUES
           (@OIDGuia
           ,@Descripcion
           ,@Indicaciones
           ,@Objetivo
           ,@UsuarioAlta
           ,@FechaAlta
           ,@Activo
           ,@InactividadFecha
           ,@InactividadMotivo
           ,@InactividadUsuario
           ,@Tipo
           ,@GUID
           ,@Orden)"
        UpdateCommand="UPDATE [NOM035].[dbo].[CatNOMEncuestasCuestionarios]
   SET [OIDGuia] = @OIDGuia
      ,[Descripcion] = @Descripcion
      ,[Indicaciones] = @Indicaciones
      ,[Objetivo] = @Objetivo
      ,[Activo] = @Activo
      ,[InactividadFecha] = @InactividadFecha
      ,[InactividadMotivo] = @InactividadMotivo
      ,[InactividadUsuario] = @InactividadUsuario
      ,[Tipo] = @Tipo
      ,[Orden] = @Orden
 WHERE OIDCuestionario = @OIDCuestionario">
        <DeleteParameters>
            <asp:Parameter Name="OIDCuestionario" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OIDGuia" />
            <asp:Parameter Name="Descripcion" />
            <asp:Parameter Name="Indicaciones" />
            <asp:Parameter Name="Objetivo" />
            <asp:Parameter Name="UsuarioAlta" />
            <asp:Parameter Name="FechaAlta" />
            <asp:Parameter Name="Activo" />
            <asp:Parameter Name="InactividadFecha" />
            <asp:Parameter Name="InactividadMotivo" />
            <asp:Parameter Name="InactividadUsuario" />
            <asp:Parameter Name="Tipo" />
            <asp:Parameter Name="GUID" />
            <asp:Parameter Name="Orden"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDGuia" DefaultValue="0" Name="OIDGuia"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OIDGuia" />
            <asp:Parameter Name="Descripcion" />
            <asp:Parameter Name="Indicaciones" />
            <asp:Parameter Name="Objetivo" />
            <asp:Parameter Name="Activo" />
            <asp:Parameter Name="InactividadFecha" />
            <asp:Parameter Name="InactividadMotivo" />
            <asp:Parameter Name="InactividadUsuario" />
            <asp:Parameter Name="Tipo" />
            <asp:Parameter Name="Orden" />
            <asp:Parameter Name="OIDCuestionario"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- SQLDS CUESTIONARIOS GUIAS DDL -->
    <asp:SqlDataSource ID="SqlDSCuestionariosGuia" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDGuia], [Nombre] FROM [CatNOMEncuestasGuias]"></asp:SqlDataSource>

    <!-- SQLDS USUARIOS -->
    <asp:SqlDataSource ID="SqlDSUsuarios" runat="server"></asp:SqlDataSource>

    <!-- SQLDS PREGUNTAS -->
    <asp:SqlDataSource ID="SqlDSPreguntas" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spListadoNOMEncuestasPreguntas"
        InsertCommand="spCrearNOMEncuestasPreguntas"
        UpdateCommand="spActualizarNOMEncuestasPreguntas" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="OIDCuestionario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDDominio" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDCategoria" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDDimension" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="NumPregunta" Type="String"></asp:Parameter>
            <asp:Parameter Name="Orden" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Evento" Type="String"></asp:Parameter>
            <asp:Parameter Name="TipoRespuesta" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="TieneDependencia" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="PreguntasDependiente" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="RespuestaDependiente" Type="String"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="hiddenCuestionarioID" PropertyName="[OIDCuestionario]" DefaultValue="0" Name="OIDCuestionario" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OIDDominio" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDCategoria" Type="Int64"></asp:Parameter>
            <asp:Parameter Name="OIDDimension" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="NumPregunta" Type="String"></asp:Parameter>
            <asp:Parameter Name="Orden" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Evento" Type="String"></asp:Parameter>
            <asp:Parameter Name="TipoRespuesta" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="TieneDependencia" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="PreguntasDependiente" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="RespuestaDependiente" Type="String"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="OIDPregunta" Type="Int64"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- SQLDS DDL CATEGORIAS -->
    <asp:SqlDataSource ID="SqlDSDDLCategorias" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLCategorias" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS DDL DIMENSIONES -->
    <asp:SqlDataSource ID="SqlDSDDLDimensiones" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLDimensiones" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS DDL DOMINIOS -->
    <asp:SqlDataSource ID="SqlDSDDLDominios" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLDominios" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS DDL TIPO RESPUESTAS -->
    <asp:SqlDataSource ID="SqlDSDDLTipoRespuestas" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLTipoRespuestas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS TIPO CUESTIONARIOS -->
    <asp:SqlDataSource ID="SqlDSTipoCuestionarios" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLTipoCuestionarios" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    
</b></b></b></b>
    
</asp:Content>