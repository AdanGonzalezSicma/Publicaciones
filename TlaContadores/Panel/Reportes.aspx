<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="CreandoProductividad.Panel.Reportes" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenEncuesta" ClientInstanceName="hiddenEncuesta" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenGuia" ClientInstanceName="hiddenGuia" runat="server"></dx:ASPxHiddenField>
    <script>
        window.onload = function active() {
            var act = document.getElementById("repo");
            if (act.className.match("nav-item")) {
                act.className = "nav-item active";
            } else {
                act.remove.className("active");
            }
            var act2 = document.getElementById("reportes");

            if (act2.className.match("menum")) {
                act2.className = "menum active";
                document.getElementById("radio-2").checked = true;
            } else {
                act2.remove.className("active");
                document.getElementById("radio-2").checked = false;
            }

        }
        var visibleIndex;
        var idDocumento;

        
        function onToolsbarGridRespuesta(s, e) {

             if (e.item.name == 'constancia2') {

                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'block');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'none');
                 console.log('aqui si llega');
                 visibleIndex = gridEncuestas.GetFocusedRowIndex();
                 console.log(visibleIndex);
                gridEncuestas.GetRowValues(visibleIndex, 'NumEncuesta;Empleado;Puesto;idOcupacion;Curp', getNumEncuesta);
            }
            if (e.item.name == 'guiaiii2') {

                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'block');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'none');
                visibleIndex = gridEncuestas.GetFocusedRowIndex();
                if (visibleIndex == -1) {
                    popupVerificarGuias.Show();
                }
                else {
                    gridEncuestas.GetRowValues(visibleIndex, 'NumEncuesta;GuiaI;GuiaII;GuiaIII', getNumEncuestaGuia);
                }
            }
            if (e.item.name == 'respuestas2') {

                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'block');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'none');
                visibleIndex = gridEncuestas.GetFocusedRowIndex();
                if (visibleIndex == -1) {
                    popupNoHayRespuestas.Show();
                }
                else {
                    gridEncuestas.GetRowValues(visibleIndex, 'NumEncuesta;GuiaI;GuiaII;GuiaIII', getNumRespuestas);
                }
            }
            if (e.item.name == 'GenerarReportes2') {
                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'block');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'none');
                
                visibleIndex = gridEncuestas.GetFocusedRowIndex();
                var rowsSelected = eval(gridEncuestas).GetSelectedKeysOnPage();
                if (rowsSelected != "") {
                    popReportesMasivos.Show();
                } else {
                    popAdvertencia.Show();
                }
            }
             if (e.item.name == 'ReporteConteoRespuestas') {
                console.log('soy Respuesta')
                //    visibleIndex = gridEncuestas.GetFocusedRowIndex();
                //if (visibleIndex == -1) {
                //    popupNoHayRespuestas.Show();
                //}
                //else {
                //    gridEncuestas.GetRowValues(visibleIndex, 'OIDEmpresa', getConteo);
                //}
            }
        }
        function fncDescargar() {
               console.log('click')
                visibleIndex = gridEncuestas.GetFocusedRowIndex();
                if (visibleIndex == -1) {
                    popupNoHayRespuestas.Show();
                }
                else {
                    gridResumenEncuesta.GetRowValues(visibleIndex, 'OIDEmpresa', getConteo);
                }
        }



        function OnToolbarItemClickEncuestas(s, e) {
            if (e.item.name == 'constancia') {

                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'block');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'none');
                visibleIndex = gridEncuestas.GetFocusedRowIndex();
                gridEncuestas.GetRowValues(visibleIndex, 'NumEncuesta;Empleado;Puesto;idOcupacion;Curp', getNumEncuesta);
            }
            if (e.item.name == 'guiaiii') {

                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'block');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'none');
                visibleIndex = gridEncuestas.GetFocusedRowIndex();
                if (visibleIndex == -1) {
                    popupVerificarGuias.Show();
                }
                else {
                    gridEncuestas.GetRowValues(visibleIndex, 'NumEncuesta;GuiaI;GuiaII;GuiaIII', getNumEncuestaGuia);
                }
            }
            if (e.item.name == 'respuestas') {

                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'block');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'none');
                visibleIndex = gridEncuestas.GetFocusedRowIndex();
                if (visibleIndex == -1) {
                    popupNoHayRespuestas.Show();
                }
                else {
                    gridEncuestas.GetRowValues(visibleIndex, 'NumEncuesta;GuiaI;GuiaII;GuiaIII', getNumRespuestas);
                }
            }
            if (e.item.name == 'GenerarReportes') {
                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'block');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'none');
                
                visibleIndex = gridEncuestas.GetFocusedRowIndex();
                var rowsSelected = eval(gridEncuestas).GetSelectedKeysOnPage();
                if (rowsSelected != "") {
                    popReportesMasivos.Show();
                } else {
                    popAdvertencia.Show();
                }
            }
            if (e.item.name == 'ReporteConteo') {
                console.log('soy conteo')
                const divContenerdorEncuestas = $('#divContenerdorEncuestas');
                divContenerdorEncuestas.css('display', 'none');
                const divContenerdorConteo = $('#divContenerdorConteo');
                divContenerdorConteo.css('display', 'block');
                divContenerdorConteo.css('display', 'block');
                divContenerdorConteo.css('display', 'block');
                divContenerdorConteo.css('display', 'block');
                
                //    visibleIndex = gridEncuestas.GetFocusedRowIndex();
                //if (visibleIndex == -1) {
                //    popupNoHayRespuestas.Show();
                //}
                //else {
                //    gridEncuestas.GetRowValues(visibleIndex, 'OIDEmpresa', getConteo);
                //}
            }
          
            
        }
        function getConteo(value) {
            var oidEmpresa = value;
            //window.open('/Reportes/ReportViewConteo.aspx?OIDEmpresa=' + oidEmpresa + '&NombreUnidad=' + cmbNombreUnidad.value + '&Departamento=' + cmbDepartamento.value, '_blank').focus();
        }
     
        //function HideCarga() {            
        //    LoadingPanel.Hide();
        //}
        function getNumEncuesta(value) {
            var numEncuesta = value[0];
            var Empleado = value[1];
            var Puesto = value[2];
            var idOcupacion = value[3];
            var Curp = value[4];
            if (numEncuesta != null && Empleado != null && Puesto != null && idOcupacion != null && Curp != null) {
                hiddenEncuesta.Set('NumEncuesta', numEncuesta);
                popupAvisoConstancia.Show();
            }
            else {
                popupVerificar.Show();
            }
        }
        function getNumEncuestaGuia(value) {
            var numEncuesta = value[0];
            var GuiaI = value[1];
            var GuiaII = value[2];
            var GuiaIII = value[3];
            if (GuiaI != 'Pendiente' || GuiaII != 'Pendiente' || GuiaIII != 'Pendiente') {
                hiddenEncuesta.Set('NumEncuesta', numEncuesta);
                if (GuiaI != 'Pendiente' && GuiaII == 'Pendiente' && GuiaIII == 'Pendiente') {
                    hiddenGuia.Set('OIDGuia', 1);
                    popupAvisoGuias.Show();
                }
                if (GuiaI != 'Pendiente' && GuiaII != 'Pendiente' && GuiaIII == 'Pendiente') {
                    hiddenGuia.Set('OIDGuia', 2);
                    popupAvisoGuias.Show();
                }
                if (GuiaI != 'Pendiente' && GuiaII == 'Pendiente' && GuiaIII != 'Pendiente') {
                    hiddenGuia.Set('OIDGuia', 3);
                    popupAvisoGuias.Show();
                }
            }
            else {
                popupVerificarGuias.Show();
            }
        }
        function getNumRespuestas(value) {
            var numEncuesta = value[0];
            var GuiaI = value[1];
            var GuiaII = value[2];
            var GuiaIII = value[3];
            if (GuiaI != 'Pendiente' || GuiaII != 'Pendiente' || GuiaIII != 'Pendiente') {
                hiddenEncuesta.Set('NumEncuesta', numEncuesta);
                if (GuiaI != 'Pendiente' && GuiaII == 'Pendiente' && GuiaIII == 'Pendiente') {
                    hiddenGuia.Set('OIDGuia', 1);
                    popupAvisoGuias.Show();
                }
                if (GuiaI != 'Pendiente' && GuiaII != 'Pendiente' && GuiaIII == 'Pendiente') {
                    hiddenGuia.Set('OIDGuia', 2);
                    popupAvisoGuias.Show();
                }
                if (GuiaI != 'Pendiente' && GuiaII == 'Pendiente' && GuiaIII != 'Pendiente') {
                    hiddenGuia.Set('OIDGuia', 3);
                    popupAvisoGuias.Show();
                }
            }
            else {
                popupNoHayRespuestas.Show();
            }
        }
        function CerrarAvisoRespuestas() {
            popupAvisoPreguntas.Hide();
        }
        function CerrarVerificacion() {
            popupVerificar.Hide();
        }
        function CerrarAvisoConstancia() {
            popupAvisoConstancia.Hide();
        }
        function CerrarAvisoGuias() {
            popupAvisoGuias.Hide();
        }
        function cerrarNoHayRespuestas() {
            popupNoHayRespuestas.Hide();
        }
        function cerrarGuias() {
            popupVerificarGuias.Hide();
        }
        function cerrarAd() {
            popAdvertencia.Hide();
        }
        function fncBuscar() {
            gridResumenEncuesta.Refresh();
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
        .dxgvADR .dxgvADCC{
            white-space:normal!important
        }
    </style>
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0" style="padding-top: 15px; font-weight: 600">Reportes de evaluación</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/Default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item" style="color: white">Resultados</li>
                        <li class="breadcrumb-item active" style="color: white">Reportes de evaluación</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />
    <a class="btn btn-primary" data-toggle="tooltip" title="Más información" href="/manual-usuario/Manual-usuario.aspx#Reportes"><i class="fas fa-question-circle" style="color: white; font-size: 25px"></i></a>
    <br />
    <br />
    <div id="divContenerdorConteo" style="display: none; text-align:right">

       
            <div class="row text-right">
                <div class="col-12 col-lg-4 col-md-0 col-sm-0 padding"></div>
                <div class="col-12 col-lg-3 col-md-4 col-sm-12 padding" style="margin-bottom:10px">
<dx:ASPxComboBox ID="cmbNombreUnidad" runat="server" cssclass="form-control" DataSourceID="sqlNombreUnidad" ValueField="NombreUnidad" TextField="NombreUnidad" ClientSideEvents-ValueChanged="fncBuscar" SelectedIndex="0" Width="100%"  Height="100%"></dx:ASPxComboBox>
                </div>
                <div class="col-12 col-lg-3 col-md-4 col-sm-12 padding"style="margin-bottom:10px"><dx:ASPxComboBox ID="cmbDepartamento" runat="server" cssclass="form-control" DataSourceID="sqlDepartamento" ValueField="Departamento" TextField="Departamento" ClientSideEvents-ValueChanged="fncBuscar" SelectedIndex="0" Width="100%"  Height="100%" ></dx:ASPxComboBox></div>
                <div class="col-12 col-lg-2 col-md-4 col-sm-12 padding"style="margin-bottom:10px"> <asp:Button ID="btnDescargar" Text="Descargar Reporte" runat="server" OnClick="btnDescargar_Click" CssClass="btn btn-primary"  style="width: 100%; font-size: 18px" /></div>
         
            </div>
        
            
       
       
      
    
        <asp:SqlDataSource ID="sqlDepartamento" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="DECLARE @Tabla AS TABLE(Departamento VARCHAR(MAX))
        INSERT INTO @Tabla
        SELECT 'TODOS' AS 'Departamento'
        INSERT INTO @Tabla
        SELECT case when Departamento is null then 'Sin departamento' else Departamento end as 'Departamento'
    
          FROM [NOM035].[dbo].[VistaOpeNOMRespuestas] where OIDEmpresa = @OIDEmpresa group by departamento
    
        SELECT * FROM @Tabla">
            <SelectParameters>
                <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="sqlNombreUnidad" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="DECLARE @Tabla AS TABLE(NombreUnidad VARCHAR(MAX))
            INSERT INTO @Tabla
            SELECT 'TODOS' AS 'NombreUnidad'
            INSERT INTO @Tabla
            SELECT [NombreUnidad]
  FROM [NOM035].[dbo].[VistaOpeNOMRespuestas] 
		where OIDEmpresa = @OIDEmpresa
		GROUP BY [NombreUnidad]
            SELECT * FROM @Tabla">
            <SelectParameters>
                <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>


        <dx:ASPxGridView  ID="gridResumenEncuesta"
            ClientInstanceName="gridResumenEncuesta"
            runat="server"
            AutoGenerateColumns="False"
            DataSourceID="sqlEncuesta"
            eID=""
            KeyFieldName="OIDEncuesta"
            Width="100%">


            <ClientSideEvents ToolbarItemClick="onToolsbarGridRespuesta"></ClientSideEvents>

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

            <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

            <SettingsBehavior AllowEllipsisInText="True" />

            <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>

            <Columns>
                <dx:GridViewDataTextColumn FieldName="NombreUnidad" VisibleIndex="1"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Departamento" VisibleIndex="2"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Orden" VisibleIndex="3"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Evento" VisibleIndex="4"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Respuesta" VisibleIndex="5"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ValorRespuesta" VisibleIndex="6"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Respuesta" VisibleIndex="7"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Cantidad" VisibleIndex="8"></dx:GridViewDataTextColumn>

            </Columns>
            <Toolbars>
                <dx:GridViewToolbar ItemAlign="Right" Name="toolbarResumenEncuestas" EnableAdaptivity="True">
                    <Items>
                        <dx:GridViewToolbarItem AdaptiveText="Editar" BeginGroup="True" Command="Edit" Name="editar" Text="Editar" Visible="false">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar.png" UrlChecked="~/Content/icons/iconos-nuevos/editar.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar.png" UrlSelected="~/Content/icons/iconos-nuevos/editar.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>
                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem BeginGroup="True" Name="constancia2" Text="Constancia" Visible="false">
                            <Image Height="32px" Url="~/Content/icons/Bill.png" UrlChecked="~/Content/icons/Bill.png" UrlDisabled="~/Content/icons/Bill.png" UrlHottracked="~/Content/icons/Bill.png" UrlSelected="~/Content/icons/Bill.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem BeginGroup="True" Name="respuestas2" Text="Reporte de Respuestas">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/report.png" UrlChecked="~/Content/icons/iconos-nuevos/report.png" UrlDisabled="~/Content/icons/iconos-nuevos/report.png" UrlHottracked="~/Content/icons/iconos-nuevos/report.png" UrlSelected="~/Content/icons/iconos-nuevos/report.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" ForeColor="White" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>
                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem Name="guiaiii2" BeginGroup="True" Text="Reporte de Guía">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/report-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/report-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/report-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/report-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/report-icono.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>

                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem Name="ReporteConteoRespuestas" BeginGroup="True" Text="Resumen Respuestas" ToolTip="Este reporte indica la cantidad de veces que fue seleccionada una respuesta por pregunta">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlChecked="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlDisabled="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlHottracked="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlSelected="~/Content/icons/iconos-nuevos/descargaReporte.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>
                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem Name="GenerarReportes2" BeginGroup="True" Text="Descargar carpeta de implementación" ToolTip="Seleccione las encuestas de las que desea descargarsus reportes">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlChecked="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlDisabled="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlHottracked="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlSelected="~/Content/icons/iconos-nuevos/descargaReporte.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>
                        </dx:GridViewToolbarItem>
                    </Items>
                </dx:GridViewToolbar>

            </Toolbars>
        </dx:ASPxGridView>

        <asp:SqlDataSource ID="sqlEncuesta" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spListadoVistaOpeNOMRespuestas" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
                <asp:ControlParameter ControlID="cmbNombreUnidad" PropertyName="Value" DefaultValue="-" Name="NombreUnidad" Type="String"></asp:ControlParameter>
                <asp:ControlParameter ControlID="cmbDepartamento" PropertyName="Value" DefaultValue="-" Name="Departamento" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>

    </div>




    <div id="divContenerdorEncuestas" style="display: block;">

      

        <dx:ASPxGridView
            ID="gridEncuestas"
            ClientInstanceName="gridEncuestas"
            runat="server"
            AutoGenerateColumns="False"
            DataSourceID="SqlDSEncuestas"
            KeyFieldName="OIDEncuesta"
            Width="100%">
            <ClientSideEvents ToolbarItemClick="OnToolbarItemClickEncuestas" />
            <SettingsAdaptivity AdaptivityMode="HideDataCells">
                <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
            </SettingsAdaptivity>
            <SettingsText PopupEditFormCaption="Editar Encuesta" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
            <SettingsPager PageSize="20">
                <PageSizeItemSettings Items="20, 50, 100, 200" Visible="True">
                </PageSizeItemSettings>
            </SettingsPager>

            <SettingsEditing Mode="PopupEditForm">
            </SettingsEditing>

            <Settings ShowFilterRow="True" ShowGroupPanel="True" ShowFooter="True" />
            <SettingsBehavior AllowFocusedRow="True" />
            <SettingsPopup>
                <EditForm HorizontalAlign="WindowCenter" Modal="True" ShowShadow="True" VerticalAlign="WindowCenter" AllowResize="True" MinWidth="70%" Width="70%">
                    <SettingsAdaptivity MinHeight="70%" MinWidth="70%" Mode="Always" VerticalAlign="WindowCenter" />
                </EditForm>
                <CustomizationWindow MinWidth="70%" Width="70%" />
                <CustomizationDialog>
                    <SettingsAdaptivity MinWidth="70%" />
                </CustomizationDialog>
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
                    <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="OIDUnidad" ColumnSpan="2">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="NumEncuesta" ColumnSpan="2">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaInicio">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaUltimoIngreso">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaTermino">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="NumAccesos">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="UltimoSistemaOperativo" Visible="False">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="UltimoNavegador" Visible="False">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="BitacoraAccesos" Visible="False">
                    </dx:GridViewColumnLayoutItem>
                    <dx:GridViewLayoutGroup Caption="Estos datos ser&#225;n recopilados unicamente para emitir la constacia DC-3" ColCount="1" ColSpan="2" ColumnSpan="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Empleado">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Puesto">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="idOcupacion" Caption="Departamento">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="OIDOcupacion" Caption="Ocupacion">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Curp">
                            </dx:GridViewColumnLayoutItem>
                        </Items>
                    </dx:GridViewLayoutGroup>
                    <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
                    </dx:EditModeCommandLayoutItem>
                </Items>
            </EditFormLayoutProperties>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="OIDEncuesta" ReadOnly="True" Visible="False" VisibleIndex="1">
                    <EditFormSettings Visible="False"></EditFormSettings>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OIDEmpresa" Visible="False" VisibleIndex="2">
                    <PropertiesTextEdit>
                        <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="NumEncuesta" VisibleIndex="4" Caption="Núm. Encuesta" ReadOnly="true">
                    <PropertiesTextEdit>
                        <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="NumAccesos" VisibleIndex="5" Caption="Núm. Accesos" ReadOnly="true">
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                    <PropertiesTextEdit>
                        <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="FechaInicio" VisibleIndex="6" Caption="Fecha de inicio" ReadOnly="true">
                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime">
                        <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="FechaUltimoIngreso" VisibleIndex="7" Caption="Ultimo ingreso" ReadOnly="true">
                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime">
                        <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="FechaTermino" VisibleIndex="8" Caption="Fecha de finalización" ReadOnly="true">
                    <PropertiesDateEdit DisplayFormatString="g" EditFormat="DateTime">
                        <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="UltimoSistemaOperativo" VisibleIndex="9" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UltimoNavegador" VisibleIndex="10" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BitacoraAccesos" VisibleIndex="11" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Empleado" VisibleIndex="12">
                    <PropertiesTextEdit MaxLength="100">
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Puesto" VisibleIndex="13">
                    <PropertiesTextEdit MaxLength="100">
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Curp" VisibleIndex="15">
                    <PropertiesTextEdit MaxLength="18">
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Sensibilización trabajadores" FieldName="SensibilizacionNOM" ReadOnly="True" VisibleIndex="16">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Sensibilización directivos" FieldName="SensibilizacionNOMDirectivos" ReadOnly="True" VisibleIndex="17">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="GuiaI" ReadOnly="True" VisibleIndex="18">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="GuiaII" ReadOnly="True" VisibleIndex="19">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="GuiaIII" ReadOnly="True" VisibleIndex="20">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="GuiaV" ReadOnly="True" VisibleIndex="21">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="NumEncuesta1" Visible="False" VisibleIndex="22" ReadOnly="true">
                    <PropertiesTextEdit>
                        <ReadOnlyStyle BackColor="Gray" ForeColor="White"></ReadOnlyStyle>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Descarga de constancia" FieldName="DescargarConstancia" ReadOnly="True" VisibleIndex="23">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Primer video sensibilización" FieldName="PrimerVideoSensibilizacion" ReadOnly="True" VisibleIndex="24">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Retroalimentación 1 parte 1" FieldName="Retroalimentacion1" ReadOnly="True" VisibleIndex="25">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Retroalimentación 1 parte 2" FieldName="Retroalimentacion1Parte2" ReadOnly="True" VisibleIndex="26">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Retroalimentación 1 parte 3" FieldName="Retroalimentacion1Parte3" ReadOnly="True" VisibleIndex="27">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Segundo video sensibilización de 1 a 15" FieldName="SegVideoSensibilizacion1a15" ReadOnly="True" VisibleIndex="28">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Segundo video sensibilización de 6 a 50" FieldName="SegVideoSensibilizacion16a50" ReadOnly="True" VisibleIndex="29">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Segundo video sensibilización de 51 o más" FieldName="SegVideoSensibilizacion51oMas" ReadOnly="True" VisibleIndex="30">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Retroalimentación 2 parte 1" FieldName="Retroalimentacion2" ReadOnly="True" VisibleIndex="31">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Retroalimentación 2 parte 2" FieldName="Retroalimentacion2Parte2" ReadOnly="True" VisibleIndex="32">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Retroalimentación 2 parte 3" FieldName="Retroalimentacion2Parte3" ReadOnly="True" VisibleIndex="33">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="Centro de trabajo" FieldName="OIDUnidad" VisibleIndex="3" ReadOnly="true">
                    <PropertiesComboBox DataSourceID="SqlDSUnidades" TextField="NombreUnidad" ValueField="OIDUnidadEvaluar">
                        <ReadOnlyStyle BackColor="Gray" ForeColor="White">
                        </ReadOnlyStyle>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="Departamento" FieldName="idOcupacion" VisibleIndex="14">
                    <PropertiesComboBox DataSourceID="sqlDSOcupaciones" TextField="Departamento" ValueField="OIDDepartamento" NullText="Seleccione Departamento">
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn FieldName="OIDOcupacion" Caption="Ocupacion" VisibleIndex="34">
                    <PropertiesComboBox DataSourceID="sqlOcup" TextField="Denominacion" ValueField="idOcupacion" NullText="Seleccione Ocupación">
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewCommandColumn VisibleIndex="0" Caption="Seleccionar" Name="Seleccionar" SelectAllCheckboxMode="Page" ShowSelectCheckbox="True" Width="50px"></dx:GridViewCommandColumn>

            </Columns>
            <Toolbars>
                <dx:GridViewToolbar ItemAlign="Right" Name="toolbarEncuestas">
                    <Items>
                        <dx:GridViewToolbarItem AdaptiveText="Editar" BeginGroup="True" Command="Edit" Name="editar" Text="Editar" Visible="false">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar.png" UrlChecked="~/Content/icons/iconos-nuevos/editar.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar.png" UrlSelected="~/Content/icons/iconos-nuevos/editar.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>
                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem BeginGroup="True" Name="constancia" Text="Constancia" Visible="false">
                            <Image Height="32px" Url="~/Content/icons/Bill.png" UrlChecked="~/Content/icons/Bill.png" UrlDisabled="~/Content/icons/Bill.png" UrlHottracked="~/Content/icons/Bill.png" UrlSelected="~/Content/icons/Bill.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem BeginGroup="True" Name="respuestas" Text="Reporte de Respuestas">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/report.png" UrlChecked="~/Content/icons/iconos-nuevos/report.png" UrlDisabled="~/Content/icons/iconos-nuevos/report.png" UrlHottracked="~/Content/icons/iconos-nuevos/report.png" UrlSelected="~/Content/icons/iconos-nuevos/report.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" ForeColor="White" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>
                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem Name="guiaiii" BeginGroup="True" Text="Reporte de Guía">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/report-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/report-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/report-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/report-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/report-icono.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>

                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem Name="ReporteConteo" BeginGroup="True" Text="Resumen Respuestas" ToolTip="Este reporte indica la cantidad de veces que fue seleccionada una respuesta por pregunta">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlChecked="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlDisabled="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlHottracked="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlSelected="~/Content/icons/iconos-nuevos/descargaReporte.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>
                        </dx:GridViewToolbarItem>
                        <dx:GridViewToolbarItem Name="GenerarReportes" BeginGroup="True" Text="Descargar carpeta de implementación" ToolTip="Seleccione las encuestas de las que desea descargarsus reportes">
                            <Image Height="32px" Url="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlChecked="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlDisabled="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlHottracked="~/Content/icons/iconos-nuevos/descargaReporte.png" UrlSelected="~/Content/icons/iconos-nuevos/descargaReporte.png" Width="32px">
                            </Image>
                            <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" BackColor="Navy">
                                <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                                </HoverStyle>
                            </ItemStyle>
                        </dx:GridViewToolbarItem>
                    </Items>
                </dx:GridViewToolbar>
            </Toolbars>
            <GroupSummary>
                <dx:ASPxSummaryItem FieldName="NumEncuesta" SummaryType="Count" />
            </GroupSummary>

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
                <PagerBottomPanel BackColor="#43BFC7" ForeColor="White">
                </PagerBottomPanel>
                <FilterBar ForeColor="#43BFC7">
                </FilterBar>
                <HeaderFilterItem ForeColor="#43BFC7">
                </HeaderFilterItem>
            </Styles>
        </dx:ASPxGridView>


    </div>

    <br />
    <br />
    <asp:SqlDataSource ID="SqlDSEncuestas" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="select * from(SELECT  OIDEncuesta,  OIDEmpresa,  OIDUnidad,  NumEncuesta,  NumAccesos,  FechaInicio,  FechaUltimoIngreso,  FechaTermino, 
 UltimoSistemaOperativo,  UltimoNavegador,  BitacoraAccesos,  Empleado,  Puesto,  idOcupacion,OIDOcupacion,  Curp FROM  OpeNOMEncuestas) as Encuestas
left join
(SELECT case when SensibilizacionNOM = 0 then 'Pendiente' else 'Completo' end as 'SensibilizacionNOM'
      ,case when SensibilizacionNOMDirectivos = 0 then 'Pendiente' else 'Completo' end as 'SensibilizacionNOMDirectivos'
      ,case when GuiaI = 0 then 'Pendiente' else 'Completo' end as 'GuiaI'
    ,case when GuiaII = 0 then 'Pendiente' else 'Completo' end as 'GuiaII'
      ,case when GuiaIII = 0 then 'Pendiente' else 'Completo' end as 'GuiaIII'
      ,case when GuiaV = 0 then 'Pendiente' else 'Completo' end as 'GuiaV'
      , NumEncuesta
      ,case when DescargarConstancia = 0 then 'Pendiente' else 'Completo' end as 'DescargarConstancia'
      ,case when PrimerVideoSensibilizacion = 0 then 'Pendiente' else 'Completo' end as 'PrimerVideoSensibilizacion'
      ,case when Retroalimentacion1 = 0 then 'Pendiente' else 'Completo' end as 'Retroalimentacion1'
      ,case when Retroalimentacion1Parte2 = 0 then 'Pendiente' else 'Completo' end as 'Retroalimentacion1Parte2'
      ,case when Retroalimentacion1Parte3 = 0 then 'Pendiente' else 'Completo' end as 'Retroalimentacion1Parte3'
      ,case when SegVideoSensibilizacion1a15 = 0 then 'Pendiente' else 'Completo' end as 'SegVideoSensibilizacion1a15'
      ,case when SegVideoSensibilizacion16a50 = 0 then 'Pendiente' else 'Completo' end as 'SegVideoSensibilizacion16a50'
      ,case when SegVideoSensibilizacion51oMas = 0 then 'Pendiente' else 'Completo' end as 'SegVideoSensibilizacion51oMas'
      ,case when Retroalimentacion2 = 0 then 'Pendiente' else 'Completo' end as 'Retroalimentacion2'
      ,case when Retroalimentacion2Parte2 = 0 then 'Pendiente' else 'Completo' end as 'Retroalimentacion2Parte2'
      ,case when Retroalimentacion2Parte3 = 0 then 'Pendiente' else 'Completo' end as 'Retroalimentacion2Parte3'
  FROM  NOM035.dbo.OpeNOMAvanceUsuarios) as Avance
on Encuestas.NumEncuesta = Avance.NumEncuesta
 WHERE ([OIDEmpresa] = @OIDEmpresa) and (avance.GuiaII = 'Completo' or avance.GuiaIII = 'Completo') ORDER BY Encuestas.[OIDEncuesta] DESC"
        UpdateCommand="UPDATE [NOM035].[dbo].[OpeNOMEncuestas]
   SET [Empleado] = @Empleado
      ,[Puesto] = @Puesto
      ,[idOcupacion] = @idOcupacion
      ,[Curp] = @Curp
      ,[OIDOcupacion] = @OIDOcupacion
 WHERE OIDEncuesta = @OIDEncuesta">
        <SelectParameters>
            <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Empleado" />
            <asp:Parameter Name="Puesto" />
            <asp:Parameter Name="idOcupacion" />
            <asp:Parameter Name="Curp" />
            <asp:Parameter Name="OIDOcupacion" />
            <asp:Parameter Name="OIDEncuesta"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSUnidades" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDUnidadEvaluar], [NombreUnidad], [idEmpresa] FROM [CatNOMUnidadesEvaluar] WHERE ([idEmpresa] = @idEmpresa)">
        <SelectParameters>
            <asp:SessionParameter Name="idEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlDSOcupaciones" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [OIDDepartamento], [Departamento] FROM [CatNomDepartamento] WHERE (([OIDEmpresa] = @OIDEmpresa))">
        <SelectParameters>
            <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlOcup" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [idOcupacion], [Denominacion] FROM [CatNomOcupaciones]"></asp:SqlDataSource>

    <%--Avisos de constancia--%>
    <dx:ASPxPopupControl
        ID="popupAvisoConstancia"
        ClientInstanceName="popupAvisoConstancia"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="411px" HeaderText="Constancia">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6 style="color: navy; font-size: 20px;">Se abrirá una nueva pestaña</h6>
                <br />
                <br />
                <div style="text-align: right">
                    <asp:Button ID="btnAceptarReporte" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnAceptarReporte_Click" OnClientClick="CerrarAvisoConstancia()" />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <%--Reporte de respuestas--%>
    <dx:ASPxPopupControl
        ID="popupAvisoPreguntas"
        ClientInstanceName="popupAvisoPreguntas"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="717px" HeaderText="Ventana emergente">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderImage IconID="support_info_32x32">
        </HeaderImage>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h5>Se abrirá una nueva pestaña donde se mostrará el reporte</h5>
                <h5 style="color: red">Nota: si no se muestra, siga las siguientes instrucciones:</h5>

                <p style="padding-left: 10px">1.- Haz clic en el siguiente ícono que aparece en la barra de dirección. </p>
                <p style="padding-left: 10px">2.- Selecciona la opción de permitir siempre ventanas emergentes y redirecciones. </p>
                <div class="text-center">
                    <img src="../Content/img/ventana.png" style="width: 50px" />
                </div>




                <div style="text-align: right">
                    <br />
                    <asp:Button ID="btnRespuestas" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnRespuestas_Click" OnClientClick="CerrarAvisoRespuestas()" />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <%--Reporte por guía--%>
    <dx:ASPxPopupControl
        ID="popupAvisoGuias"
        ClientInstanceName="popupAvisoGuias"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="717px" HeaderText="Ventana emergente">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderImage IconID="support_info_32x32">
        </HeaderImage>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h5>Se abrirá una nueva pestaña donde se mostrará el reporte</h5>
                <h5 style="color: red">Nota: si no se muestra, siga las siguientes instrucciones:</h5>

                <p style="padding-left: 10px">1.- Haz clic en el siguiente ícono que aparece en la barra de dirección. </p>
                <p style="padding-left: 10px">2.- Selecciona la opción de permitir siempre ventanas emergentes y redirecciones. </p>
                <div class="text-center">
                    <img src="../Content/img/ventana.png" style="width: 50px" />
                </div>



                <div style="text-align: right">
                    <br />
                    <asp:Button ID="btnGuias" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnGuias_Click" OnClientClick="CerrarAvisoGuias()" />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupVerificar"
        ClientInstanceName="popupVerificar"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="409px" HeaderText="Constancia">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6 style="color: navy; font-size: 20px">Falta agregar los datos del empleado</h6>
                <br />
                <br />
                <div style="text-align: right">
                    <button class="btn btn-primary" type="button" onclick="CerrarVerificacion()">Aceptar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupNoHayRespuestas"
        ClientInstanceName="popupNoHayRespuestas"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="651px" HeaderText="Constancia">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6 style="color: navy; font-size: 20px">No se ha contestado ninguna pregunta de la Guía I, Guía II y Guía III</h6>
                <br />
                <div style="text-align: right">
                    <button class="btn btn-primary" type="button" onclick="cerrarNoHayRespuestas()">Aceptar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popAdvertencia"
        ClientInstanceName="popAdvertencia"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="651px" HeaderText="Seleccione una encuesta" HeaderStyle-ForeColor="White" HeaderStyle-CssClass="bg-warning">
        <HeaderImage IconID="status_warning_32x32">
        </HeaderImage>
        <HeaderStyle CssClass="bg-warning" ForeColor="White"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6 style="font-size: 20px">No se ha seleccionado ningún número de encuesta.</h6>
                <br />
                <div style="text-align: right">
                    <button class="btn btn-warning" type="button" onclick="cerrarAd()">Aceptar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupVerificarGuias"
        ClientInstanceName="popupVerificarGuias"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="651px" HeaderText="Constancia">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6 style="color: navy; font-size: 20px">No se ha contestado ninguna pregunta de la Guía I, Guía II y Guía III</h6>
                <br />
                <div style="text-align: right">
                    <button class="btn btn-primary" type="button" onclick="cerrarGuias()">Aceptar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popReportesMasivos"
        ClientInstanceName="popReportesMasivos"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="651px" HeaderText="Descargar reportes">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6>Al darle clic al botón "Descargar Reportes" comenzará la descarga de todos los reportes en una carpeta comprimida  .zip, esto demorará unos minutos.</h6>
                <br />
                <div style="text-align: right">
                    <dx:ASPxButton ID="btnGenerarReportes" runat="server" Text="Descargar Reportes" class="btn btn-primary" OnClick="btnDescargarReportes_Click">
                        <ClientSideEvents Click=" function OcultarDescargar() {
            popReportesMasivos.Hide();
        }" />
                    </dx:ASPxButton>
                    <%--<asp:Button ID="btnDescargarReportes" runat="server"Text="Descargar Reportes"  OnClick="btnDescargarReportes_Click"/>--%>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <!-- DISTRACTOR CARGANDO -->
    <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel" Modal="True" Text="Generando reportes"></dx:ASPxLoadingPanel>
    <br />
    <br />
    <br />
</asp:Content>
