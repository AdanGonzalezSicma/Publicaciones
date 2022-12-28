<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AreaEvaluacion.aspx.cs" Inherits="CreandoProductividad.Panel.AreaEvalucacion" %>

<%@ Register Assembly="DevExpress.Xpo.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <dx:ASPxHiddenField ID="hiddenGuid" ClientInstanceName="hiddenGuid" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenUnidadEvaluarID" ClientInstanceName="hiddenUnidadEvaluarID" runat="server"></dx:ASPxHiddenField>

    <!-- SCRIPT -->

    <script>  
          window.onload = function active() {
            var act = document.getElementById("centrosT");
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
        //TOOLTIPS
        var visibleIndex;
        function OnToolbarItemClick(s, e) {
            if (e.item.name == "EliminarUnidad") {
                visibleIndex = gridAreaEvaluacion.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                gridAreaEvaluacion.GetRowValues(visibleIndex, 'OIDUnidadEvaluar;NoPersonal', fncEliminarUnidad);
                }
            }

            if (e.item.name == "Procesos") {
                visibleIndex = gridAreaEvaluacion.GetFocusedRowIndex();
                if (visibleIndex != -1) {
                    gridAreaEvaluacion.GetRowValues(visibleIndex, 'OIDUnidadEvaluar;NoPersonal', fncAbrirPopupProcesosCuestionarios);
                }
                
            }
            
            if (e.item.name == "cursos") {
                visibleIndex = gridAreaEvaluacion.GetFocusedRowIndex();
                if (visibleIndex != -1) {
                    var idDocument = gridAreaEvaluacion.GetRowKey(visibleIndex);
                hiddenUnidadEvaluarID.Set("OIDcdEstaDeTrabajo", idDocument);
                PopupCursos.Show();
                GridCursos.Refresh();
                }
                
            }

            if (e.item.name == "AreaEvaluacion") {
                visibleIndex = gridAreaEvaluacion.GetFocusedRowIndex();
                if (visibleIndex != -1) {
                    var idDocument = gridAreaEvaluacion.GetRowKey(visibleIndex);
                hiddenUnidadEvaluarID.Set("OIDCentroTrabajo", idDocument);
                popupDepartamento.Show();
                gridDepartamento.Refresh();
                }
                
            }
        }

        function OnToolbarDepartamentos(s, e) {
            if (e.item.name == "Eliminar") {
                visibleIndex = gridDepartamento.GetFocusedRowIndex();
                if (visibleIndex != -1) {
                    var idDocument = gridDepartamento.GetRowKey(visibleIndex);
                //hiddenUnidadEvaluarID.Set("OIDCentroTrabajo", idDocument);
                popupEliminarDepartamento.Show();
                //gridDepartamento.Refresh();
                }
                
            }
        }

        function fncEliminarUnidad(value) {
            var OIDUnidadEvaluar = value[0];

            if (OIDUnidadEvaluar != 0) {
                hiddenUnidadEvaluarID.Set("OIDUnidadEvaluar", OIDUnidadEvaluar);
                PopupEliminarUnidadEvaluar.Show();
            } else {
                PopupError.Show();
            }
        }

        function fncAbrirPopupProcesosCuestionarios(value) {
            var OIDUnidadEvaluar = value[0];

            if (OIDUnidadEvaluar != 0) {
                hiddenUnidadEvaluarID.Set("OIDUnidadEvaluar", OIDUnidadEvaluar);
                cbListadoProcesos.PerformCallback();
                PopupProcesos.Show();
            } else {
                PopupError.Show();
            }
        }

        function FunCerrarPopLink() {
            PopupGenerarLink.Hide();
        }

        function FunEliminarCurso() {
            console.log(visibleIndex)
            GridCursos.DeleteRow(visibleIndex);
            PopupEliminarCurso.Hide();
        }

        function FunCancelarCurso() {
            PopupEliminarCurso.Hide();
        }

        function OnTolbarCursos(s, e) {
            if (e.item.name == "eliminar") {
                visibleIndex = GridCursos.GetFocusedRowIndex();
                PopupEliminarCurso.Show();
            }
            if (e.item.name == "Link") {
                visibleIndex = GridCursos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    console.log('EntreAlIF');
                    console.log(visibleIndex);

                    GridCursos.GetRowValues(visibleIndex, 'GuidVideo', getGuidCursos);
                }

            }
            if (e.item.name == "visualizaciones") {
                visibleIndex = GridCursos.GetFocusedRowIndex();
                console.log(visibleIndex);
                if (visibleIndex > -1) {
                    console.log('EntreAlIF');
                    GridCursos.GetRowValues(visibleIndex, 'GuidVideo', fcnObtenerVisualisacion);
                }
            }
        }

        function fcnObtenerVisualisacion(value) {
            console.log(value);
                hiddenGuid.Set("GuidVideo", value);
                popupVerVisualizaciones.Show();
                gridVisualizaciones.Refresh();
        }

        function getGuidCursos(value) {
            var GUID = value;
            var url = location.hostname + "/cursos/default.aspx?GuidVideo=" + GUID + "";

            document.getElementById('txtLink').value = url;

            PopupGenerarLink.Show();

        }


        function funCopiarLink(id_elemento) {
            var aux = document.createElement("input");
            aux.setAttribute("value", document.getElementById(id_elemento).value);
            document.body.appendChild(aux);
            aux.select();
            document.execCommand("copy");
            document.body.removeChild(aux);
        }

        //PRUEBA GITHUB

        // When the user clicks on div, open the popup
        function myFunction() {
            var popup = document.getElementById("myPopup");
            popup.classList.toggle("show");
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
            color: white
        }
        /* Popup container - can be anything you want */
        .popup {
            position: relative;
            display: inline-block;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

            /* The actual popup */
            .popup .popuptext {
                visibility: hidden;
                width: 160px;
                background-color: #f88017;
                color: #fff;
                text-align: center;
                border-radius: 6px;
                padding: 8px 0;
                position: absolute;
                z-index: 1;
                bottom: 125%;
                left: 50%;
                margin-left: -80px;
            }

                /* Popup arrow */
                .popup .popuptext::after {
                    content: "";
                    position: absolute;
                    top: 100%;
                    left: 50%;
                    margin-left: -5px;
                    border-width: 5px;
                    border-style: solid;
                    border-color: #f88017 transparent transparent transparent;
                }

            /* Toggle this class - hide and show the popup */
            .popup .show {
                visibility: visible;
                -webkit-animation: fadeIn 1s;
                animation: fadeIn 1s;
            }

        /* Add animation (fade in the popup) */
        @-webkit-keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }
         .btn-danger{
             border-radius:0.35rem
         }
          .dxgvADR .dxgvADCC{
                  white-space:normal!important
              }
    </style>
    <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0"  style="padding-top: 15px;font-weight:600">Centros de trabajo</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item" style="color: white">Centros de trabajo</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />
    <a class="btn btn-primary" data-toggle="tooltip" title="Más información" href="/manual-usuario/Manual-usuario.aspx#CentrosTrabajo"><i class="fas fa-question-circle" style="color:white; font-size:25px"></i></a>
    <br />
    <!-- GRID CENTROS DE TRABAJO -->
    <dx:ASPxGridView
        ID="gridAreaEvaluacion"
        ClientInstanceName="gridAreaEvaluacion"
        runat="server"
        AutoGenerateColumns="False"
        DataSourceID="SqlDSUnidadesEvaluar"
        KeyFieldName="OIDUnidadEvaluar"
        Width="100%"
        OnRowInserting="gridAreaEvaluacion_RowInserting"
        OnRowUpdating="gridAreaEvaluacion_RowUpdating"
        OnCustomErrorText="gridAreaEvaluacion_CustomErrorText"
        >
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
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
                <Header BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="Green">
                </Header>
            </EditForm>
        </StylesPopup>
        <EditFormLayoutProperties ColCount="4" ColumnCount="4">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="NombreUnidad" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Ciudad" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="idActPreponderante" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Codigo" ColSpan="4" ColumnSpan="4" Caption="C&#243;digo:"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="NoPersonal" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="4" ColumnSpan="4" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns >
            <dx:GridViewDataTextColumn FieldName="OIDUnidadEvaluar" ReadOnly="True" VisibleIndex="0" Caption="OIDUnidadEvaluar" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NombreUnidad" VisibleIndex="1" Caption="Centro de trabajo">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic"></ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Ciudad" VisibleIndex="2" Caption="Ubicaci&#243;n / Localidad">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic"></ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Codigo" VisibleIndex="4" Caption="C&#243;digo: (Este c&#243;digo sirve para ingresar a los cuestionarios.)">
                <PropertiesTextEdit>
                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right" RequiredField-IsRequired="true"
                        RequiredField-ErrorText="Ingresar centro de trabajo." ValidateOnLeave="true" SetFocusOnError="true" Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Ingresar centro de trabajo."></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NoPersonal" VisibleIndex="5" Caption="No. Personal">
                <PropertiesTextEdit>
                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right" RequiredField-IsRequired="true"
                        RequiredField-ErrorText="Ingresar número de personal." ValidateOnLeave="true" SetFocusOnError="true" Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Ingresar número de personal."></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="idEmpresa" VisibleIndex="6" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UsuarioCreacion" VisibleIndex="7" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UsuarioModificacion" VisibleIndex="8" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaCreacion" VisibleIndex="9" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaModificacion" VisibleIndex="10" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataComboBoxColumn FieldName="idActPreponderante" Caption="Act. Preponderante" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlActPreponderantes" TextField="ActPreponderante" ValueField="OIDActPreponderante">
                    <ValidationSettings SetFocusOnError="True" Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Seleccionar una opci&#243;n."></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
                <PropertiesComboBox>
                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right" RequiredField-IsRequired="true"
                        RequiredField-ErrorText="Seleccionar una opción." ValidateOnLeave="true" SetFocusOnError="true">
                        <RequiredField IsRequired="True" ErrorText="Seleccionar una opción."></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarAreaEvaluacion">
                <Items>
                    <dx:GridViewToolbarItem Name="btnNuevo" Text="Nuevo" Command="New" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/nuevo.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/nuevo.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEditar" Text="Editar" Command="Edit" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem  Text="Eliminar" Name="EliminarUnidad" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="Procesos" Text="Cuestionarios" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/proceso-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/proceso-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/proceso-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/proceso-v2.png" AlternateText="Procesos" ToolTip="Procesos" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/proceso-v2.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <%--  <dx:GridViewToolbarItem BeginGroup="True" Name="cursos" Text="Cursos" Visible="False">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/curso-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/curso-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/curso-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/curso-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/curso-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>--%>
                    <dx:GridViewToolbarItem Name="AreaEvaluacion" BeginGroup="True" Text="Departamentos">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/proceso-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/proceso-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/proceso-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/proceso-v2.png" AlternateText="Procesos" ToolTip="Procesos" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/proceso-v2.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
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
    </dx:ASPxGridView>

    <!-- POPUP ELIMINAR DEPARTAMENTO-->
    <dx:ASPxPopupControl
        ID="popupEliminarDepartamento"
        ClientInstanceName="popupEliminarDepartamento"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h5>¿Desea eliminar el registro seleccionado?</h5>
                <br />
                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminarDepa" AutoPostBack="false" runat="server" Text="Eliminar" BackColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { popupEliminarDepartamento.Hide(); visibleIndex = gridDepartamento.GetFocusedRowIndex();
            idDocumento = gridDepartamento.GetRowKey(visibleIndex);
            gridDepartamento.DeleteRow(visibleIndex); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCancelarDepa" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { popupEliminarDepartamento.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP DEPARTAMENTO -->
    <dx:ASPxPopupControl
        ID="popupDepartamento"
        ClientInstanceName="popupDepartamento"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Departamentos" Font-Bold="False" Width="650px">
        <SettingsAdaptivity MinHeight="40%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="False" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxGridView
                    ID="gridDepartamento" 
                    OnRowInserting="gridDepartamento_RowInserting"
                    ClientInstanceName="gridDepartamento"
                    runat="server"
                    Width="100%"
                    DataSourceID="SqlDSDepartamentos" 
                    AutoGenerateColumns="False" 
                    KeyFieldName="OIDDepartamento">
                    <ClientSideEvents ToolbarItemClick="OnToolbarDepartamentos"></ClientSideEvents>

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
                      <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
                    <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

                    <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

                    <SettingsPopup>
                        <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                            <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
                        </EditForm>
                    </SettingsPopup>

                    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColumnName="Departamento" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDDepartamento" ReadOnly="True" VisibleIndex="0" Visible="False">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDCentroTrabajo" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Departamento" VisibleIndex="3">
                            <PropertiesTextEdit MaxLength="100"></PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="ToobarDepartamento">
                            <Items>
                                <dx:GridViewToolbarItem Name="Nuevo" BeginGroup="True" Text="Nuevo" Command="New">
                                    <Image UrlChecked="~/Content/icons/iconos-nuevos/nuevo.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/nuevo.png"></Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                        </HoverStyle>
                                    </ItemStyle>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="Editar" BeginGroup="True" Text="Editar" Command="Edit">
                                    <Image UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png"></Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                                        <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                        </HoverStyle>
                                    </ItemStyle>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="Eliminar" BeginGroup="True" Text="Eliminar">
                                    <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png"></Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
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
                </dx:ASPxGridView>
                <asp:SqlDataSource runat="server" ID="SqlDSDepartamentos" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDDepartamento], [OIDEmpresa], [OIDCentroTrabajo], [Departamento] FROM [CatNomDepartamento] WHERE (([OIDCentroTrabajo] = @OIDCentroTrabajo) AND ([OIDEmpresa] = @OIDEmpresa)) ORDER BY [OIDDepartamento] DESC" DeleteCommand="DELETE FROM [dbo].[CatNomDepartamento]
 WHERE OIDDepartamento = @OIDDepartamento"
                    InsertCommand="INSERT INTO [dbo].[CatNomDepartamento]
           ([OIDEmpresa]
           ,[OIDCentroTrabajo]
           ,[Departamento])
     VALUES
           (@OIDEmpresa
           ,@OIDCentroTrabajo
           ,@Departamento)"
                    UpdateCommand="UPDATE [dbo].[CatNomDepartamento]
   SET [OIDEmpresa] = @OIDEmpresa
      ,[OIDCentroTrabajo] = @OIDCentroTrabajo
      ,[Departamento] = @Departamento
 WHERE OIDDepartamento = @OIDDepartamento">
                    <DeleteParameters>
                        <asp:Parameter Name="OIDDepartamento"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OIDEmpresa"></asp:Parameter>
                        <asp:Parameter Name="OIDCentroTrabajo"></asp:Parameter>
                        <asp:Parameter Name="Departamento"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hiddenUnidadEvaluarID" PropertyName="[&#39;OIDCentroTrabajo&#39;]" Name="OIDCentroTrabajo" Type="Int32"></asp:ControlParameter>
                        <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="OIDEmpresa"></asp:Parameter>
                        <asp:Parameter Name="OIDCentroTrabajo"></asp:Parameter>
                        <asp:Parameter Name="Departamento"></asp:Parameter>
                        <asp:Parameter Name="OIDDepartamento"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>


    <!-- POPUP ELIMINAR -->
    <dx:ASPxPopupControl
        ID="PopupEliminarUnidadEvaluar"
        ClientInstanceName="PopupEliminarUnidadEvaluar"
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
                    <dx:ASPxButton ID="btnEliminarUnidadEvaluar" OnClick="btnEliminarUnidadEvaluar_Click" runat="server" Text="Eliminar" BackColor="#FF3547" CssClass="btn-danger">
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCerrarEliminar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { PopupEliminarUnidadEvaluar.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP PROCESOS -->
    <dx:ASPxPopupControl
        ID="PopupProcesos"
        ClientInstanceName="PopupProcesos"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Cuestionarios con asistencia presencial" Font-Bold="False" Width="1024px" AllowDragging="true" ShowPageScrollbarWhenModal="true">
        <SettingsAdaptivity MinHeight="50%" MinWidth="50%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>

                <dx:ASPxCallbackPanel ID="cbListadoProcesos" ClientInstanceName="cbListadoProcesos" OnCallback="cbListadoProcesos_Callback" runat="server">
                    <PanelCollection>
                        <dx:PanelContent runat="server">

                            <dx:ASPxGridView
                                ID="gridProcesos"
                                ClientInstanceName="gridProcesos"
                                runat="server"
                                AutoGenerateColumns="False"
                                DataSourceID="SqlDSProcesosCuestionarios"
                                KeyFieldName="OIDProceso"
                                Width="100%" OnRowUpdating="gridProcesos_RowUpdating">
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
                                        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" />
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
                                        <dx:GridViewColumnLayoutItem ColumnName="PrimerVideoSensibilizacion" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="SegVideoSensibilizacion1a15" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="SegVideoSensibilizacion16a50" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:GridViewColumnLayoutItem ColumnName="SegVideoSensibilizacion51oMas" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                                        <dx:EditModeCommandLayoutItem ColSpan="4" ColumnSpan="4" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                                    </Items>
                                    <Items>
                                    </Items>
                                </EditFormLayoutProperties>
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="OIDProceso" ReadOnly="True" VisibleIndex="0" Caption="OIDProceso" Visible="False">
                                        <EditFormSettings Visible="False"></EditFormSettings>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="1" Caption="OIDEmpresa" Visible="False"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDCentroTrabajo" VisibleIndex="2" Caption="OIDCentroTrabajo" Visible="False"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataCheckColumn FieldName="PrimerVideoSensibilizacion" VisibleIndex="3" Caption="I Parte del curso"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="SegVideoSensibilizacion1a15" VisibleIndex="4" Caption="II Parte del curso  - 1 a 15"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="SegVideoSensibilizacion16a50" VisibleIndex="5" Caption="II Parte del curso  - 16 a 50"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataCheckColumn FieldName="SegVideoSensibilizacion51oMas" VisibleIndex="6" Caption="II Parte del curso  - 50 o m&#225;s"></dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDUsuarioCreacion" VisibleIndex="7" Caption="OIDUsuarioCreacion" Visible="False"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="OIDUsuarioModificacion" VisibleIndex="8" Caption="OIDUsuarioModificacion" Visible="False"></dx:GridViewDataTextColumn>
                                    <dx:GridViewDataDateColumn FieldName="FechaCreacion" VisibleIndex="9" Caption="FechaCreacion" Visible="False"></dx:GridViewDataDateColumn>
                                    <dx:GridViewDataDateColumn FieldName="FechaModificacion" VisibleIndex="10" Caption="FechaModificacion" Visible="False"></dx:GridViewDataDateColumn>
                                </Columns>
                                <Columns>
                                </Columns>
                                <Toolbars>
                                    <dx:GridViewToolbar ItemAlign="Right" Name="toolbarProcesos">
                                        <Items>
                                            <dx:GridViewToolbarItem Text="Editar" Command="Edit" BeginGroup="True" Name="Editar">
                                                <Image UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png"></Image>
                                                <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                            </dx:GridViewToolbarItem>
                                            <dx:GridViewToolbarItem Text="Eliminar" BeginGroup="True" Name="EliminarCategoria">
                                                <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png"></Image>
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

                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>

            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- POPUP CURSOS -->
    <dx:ASPxPopupControl
        ID="PopupCursos"
        ClientInstanceName="PopupCursos"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="651px" HeaderText="Cursos">
        <HeaderStyle BackColor="Navy" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxGridView ID="GridCursos" ClientInstanceName="GridCursos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSCursos" Width="100%" OnInitNewRow="GridCursos_InitNewRow" OnRowInserting="GridCursos_RowInserting" KeyFieldName="OIDacceso">
                    <ClientSideEvents ToolbarItemClick="OnTolbarCursos" />
                    <SettingsAdaptivity>
                        <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                    </SettingsAdaptivity>
                     <SettingsText PopupEditFormCaption="Editar Curso" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>

                    <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                    <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" />
                    <SettingsPopup>
                        <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
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
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="GuidVideo" ColumnSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="CantidadDeReproduccion" ColSpan="2" ColumnSpan="2" Caption="Max. Reproducciones"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="ActivarCaptcha" ColSpan="2" ColumnSpan="2" Caption="Captcha"></dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
                            </dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDacceso" VisibleIndex="0" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDcdEmpresa" VisibleIndex="1" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDcdEstaDeTrabajo" VisibleIndex="2" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Visualizacion" ReadOnly="True" VisibleIndex="4"></dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn FieldName="CantidadDeReproduccion" VisibleIndex="5" Visible="False">
                            <PropertiesTextEdit>
                                <ValidationSettings>
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="ActivarCaptcha" VisibleIndex="6" Visible="False"></dx:GridViewDataCheckColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="GuidVideo" ShowInCustomizationForm="True" VisibleIndex="3">
                            <PropertiesComboBox DataSourceID="SQLdsListaCursos" TextField="NombreVideo" ValueField="GuidVideo">
                                <ValidationSettings>
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolbarCursos">
                            <Items>
                                <dx:GridViewToolbarItem Name="visualizaciones" Text="Visualizaciones" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/ver-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/ver-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/ver-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/ver-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/ver-v2.png" Width="32px">
                                    </Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="Link" Text="Link" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/link-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/link-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/link-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/link-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/link-v2.png" Width="32px">
                                    </Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="nuevo" Text="Nuevo" Command="New" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="editar" Text="Editar" BeginGroup="True" Command="Edit">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="eliminar" BeginGroup="True" Text="Eliminar">
                                    <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png"></Image>

                                    <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid"></ItemStyle>
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
                <asp:SqlDataSource ID="SqlDSCursos" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="spListadoCantidadCursos" DeleteCommand="DELETE FROM [NOM035].[dbo].[OpeNOMCursoUnidad]
      WHERE  OIDacceso=@OIDacceso
"
                    InsertCommand="INSERT INTO [NOM035].[dbo].[OpeNOMCursoUnidad]
           ([OIDcdEmpresa]
           ,[OIDcdEstaDeTrabajo]
           ,[GuidVideo]
           ,[CantidadDeReproduccion]
           ,[ActivarCaptcha])
     VALUES
           (@OIDcdEmpresa
           ,@OIDcdEstaDeTrabajo
           ,@GuidVideo
           ,@CantidadDeReproduccion
           ,@ActivarCaptcha)
        


"
                    UpdateCommand="UPDATE [NOM035].[dbo].[OpeNOMCursoUnidad]
   SET [GuidVideo] = @GuidVideo,
[CantidadDeReproduccion] = @CantidadDeReproduccion,
[ActivarCaptcha] = @ActivarCaptcha
 WHERE  OIDacceso=@OIDacceso"
                    SelectCommandType="StoredProcedure">
                    <DeleteParameters>
                        <asp:Parameter Name="OIDacceso" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OIDcdEmpresa" />
                        <asp:Parameter Name="OIDcdEstaDeTrabajo" />
                        <asp:Parameter Name="GuidVideo" />
                        <asp:Parameter Name="CantidadDeReproduccion"></asp:Parameter>
                        <asp:Parameter Name="ActivarCaptcha"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
                        <asp:ControlParameter ControlID="hiddenUnidadEvaluarID" Name="OIDcdEstaDeTrabajo" PropertyName="['OIDcdEstaDeTrabajo']" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="GuidVideo" />
                        <asp:Parameter Name="CantidadDeReproduccion" />
                        <asp:Parameter Name="ActivarCaptcha"></asp:Parameter>
                        <asp:Parameter Name="OIDacceso"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>


    <asp:SqlDataSource ID="SQLdsListaCursos" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [GuidVideo], [NombreVideo] FROM [OpeNOMCursos]"></asp:SqlDataSource>



    <dx:ASPxPopupControl ID="PopupEliminarCurso" ClientInstanceName="PopupEliminarCurso" runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" HeaderText="¡Advertencia!" Width="650px" Height="165px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h4>Desea Eliminar este curso</h4>

                <br />
                <div class="text-right">
                    <button class="btnEliminarPopup" id="btnEliminarCurso" onclick="FunEliminarCurso()"  type="button">
                        ELIMINAR
                    </button>
                    <button class="btnCancelarPopup" id="btnCancelarCurso" onclick="FunCancelarCurso()" type="button" >
                        CANCELAR
                    </button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>


    <dx:ASPxPopupControl ID="PopupGenerarLink" ClientInstanceName="PopupGenerarLink" runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" HeaderText="Generar Link" Width="650px">
        <SettingsAdaptivity MinHeight="20%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>

                <div class="container">
                    <div class="row">
                        <div class="form-group">
                            <input class="form-control" id="txtLink" type="text" name="txtLink" value="" style="width: 600px!important" />


                        </div>
                    </div>
                </div>

                <br />
                <div class="text-right">
                    <div class="popup" onclick="myFunction()">
                        <button  class="btnEliminarPopup" id="btnCopiarLink" onclick="funCopiarLink('txtLink')" type="button" >COPIAR</button>
                        <span class="popuptext" id="myPopup">¡Se ha copiado correctamente!</span>
                    </div>

                    <button id="btnCancelarPopLink" onclick="FunCerrarPopLink()" type="button" style="background-color: white; border: 3px solid navy; color: navy; height: 36px; width: 109px;">CERRAR</button>
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






    <!-- SQLDS UNIDADES A EVALUAR -->
    <asp:SqlDataSource ID="SqlDSUnidadesEvaluar" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spListadoNOMUnidadesEvaluar"
        InsertCommand="spCrearNOMUnidadesEvaluar"
        UpdateCommand="spActualizarNOMUnidadesEvaluar" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="NombreUnidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ciudad" Type="String"></asp:Parameter>
            <asp:Parameter Name="idActPreponderante" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Codigo" Type="String"></asp:Parameter>
            <asp:Parameter Name="NoPersonal" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="idEmpresa" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UsuarioCreacion" Type="String"></asp:Parameter>
            <asp:Parameter Name="UsuarioModificacion" Type="String"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresaLogeada" DefaultValue="0" Name="idEmpresa" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NombreUnidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ciudad" Type="String"></asp:Parameter>
            <asp:Parameter Name="idActPreponderante" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Codigo" Type="String"></asp:Parameter>
            <asp:Parameter Name="NoPersonal" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UsuarioModificacion" Type="String"></asp:Parameter>
            <asp:Parameter Name="OIDUnidadEvaluar" Type="Int64"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- SQLDS ACTIVIDADES PREPONDERANTES -->
    <asp:SqlDataSource ID="SqlActPreponderantes" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLActPreponderantes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS PROCESOS CUESTIONARIOS -->
    <asp:SqlDataSource ID="SqlDSProcesosCuestionarios" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spListadoCatNOMProcesosCuestionarios" SelectCommandType="StoredProcedure" UpdateCommand="spActualizarCatNOMProcesosCuestionarios" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" DefaultValue="0" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
            <asp:SessionParameter SessionField="OIDCentroTrabajo" DefaultValue="0" Name="OIDCentroTrabajo" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PrimerVideoSensibilizacion" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="SegVideoSensibilizacion1a15" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="SegVideoSensibilizacion16a50" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="SegVideoSensibilizacion51oMas" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="OIDProceso" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>







    <dx:ASPxPopupControl
        ID="popupVerVisualizaciones"
        ClientInstanceName="popupVerVisualizaciones"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        runat="server"        HeaderText="Visualizaciones" Font-Bold="False" Width="650px" AllowDragging="True">
        <SettingsAdaptivity MinHeight="40%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>

                <dx:ASPxGridView
                    ID="gridVisualizaciones"
                    ClientInstanceName="gridVisualizaciones"
                    runat="server"
                    DataSourceID="sqlVisualizaciones" AutoGenerateColumns="False" Width="100%">

                    <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsPager Position="Bottom" Mode="ShowPager" PageSize="5">
        </SettingsPager>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="GuidVideo" VisibleIndex="0" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaInicio" VisibleIndex="2">
                            <PropertiesDateEdit DisplayFormatString="g"></PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="NumEncuesta" VisibleIndex="1"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaFin" VisibleIndex="3">
                            <PropertiesDateEdit DisplayFormatString="g"></PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                    </Columns>
                    <Styles>
                        <Header BackColor="#43BFC7" ForeColor="White">
                        </Header>
                        <PagerBottomPanel BackColor="#43BFC7" ForeColor="White">
                        </PagerBottomPanel>
                    </Styles>
                </dx:ASPxGridView>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <asp:SqlDataSource ID="sqlVisualizaciones" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>'
        SelectCommand="SELECT [GuidVideo], [FechaInicio],[FechaFin], [NumEncuesta] FROM [OpeNOMVisualizaciones] 
                        WHERE (([OIDcdEmpresa] = @OIDcdEmpresa) AND ([OIDcdEstaDeTrabajo] = @OIDcdEstaDeTrabajo) AND ([GuidVideo] = @GuidVideo)) 
                        ORDER BY [OIDVisualizacion] DESC">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="OIDcdEmpresa" Type="Int32"></asp:SessionParameter>
            <asp:ControlParameter ControlID="hiddenUnidadEvaluarID" Name="OIDcdEstaDeTrabajo" PropertyName="['OIDcdEstaDeTrabajo']" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="hiddenGuid" Name="GuidVideo" PropertyName="['GuidVideo']" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />  <br />
    <br />
</asp:Content>
