<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DC-3.aspx.cs" Inherits="CreandoProductividad.Constancia.DC_3" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenEncuesta" ClientInstanceName="hiddenEncuesta" runat="server"></dx:ASPxHiddenField>
    <script>
        window.onload = function active() {
              var act2 = document.getElementById("mas");
            
            if (act2.className.match("menum")) {
                act2.className = "menum active";
               document.getElementById("radio-3").checked = true;
            } else {
                act2.remove.className("active");
                document.getElementById("radio-3").checked = false;
            }
            var act = document.getElementById("const");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
         
    
        }
        var visibleIndex;
        var idDocumento;
        function OnToolbarItemClickEncuestas(s, e) {
            if (e.item.name == 'constancia') {
                visibleIndex = gridConstancias.GetFocusedRowIndex();
                //idDocumento = gridEncuestas.GetRowKey(visibleIndex);
                gridConstancias.GetRowValues(visibleIndex, 'NumEncuesta;Empleado;Puesto;idOcupacion;Curp', getNumEncuesta);

            }
            if (e.item.name == 'constanciasMasivas') {
                visibleIndex = gridConstancias.GetFocusedRowIndex();
                if (gridConstancias.GetSelectedRowCount() > -1) {
                    gridConstancias.GetRowValues(visibleIndex, 'NumEncuesta;Empleado;Puesto;idOcupacion;Curp', getNumEncuestas);
                }
                else {
                    popupNoSeleccionados.Show();
                }

                //
            }
        }
        //function onValidation(s,e) {  
        //     if (grid.GetSelectedKeysOnPage().indexOf(s.cpContainerIndex.toString()) > -1 && s.GetText() == '') {  
        //          e.isValid = false;  
        //     }  
        //     else {  
        //          e.isValid = true;  
        //     }  
        // }  
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
        function getNumEncuestas(value) {
            var numEncuesta = value[0];
            var Empleado = value[1];
            var Puesto = value[2];
            var idOcupacion = value[3];
            var Curp = value[4];
            if (numEncuesta != null && Empleado != null && Puesto != null && idOcupacion != null && Curp != null) {
                //hiddenEncuesta.Set('NumEncuesta', numEncuesta);
                popupAvisoConstancia.Show();
            }
            else {

                popupVerificar.Show();
            }

        }
        function CerrarVerificacion() {
            popupVerificar.Hide();
        }
        function CerrarAvisoConstancia() {
            popupAvisoConstancia.Hide();
        }
        function CerrarAvisoConstancias() {
            popupAvisoConstancias.Hide();
        }
        function CerrarpopupNoSeleccionados() {
            popupNoSeleccionados.Hide();
        }
    </script>
    <style>
        .dxmLite_Material .dxctToolbar_Material.dxm-main.dxmtb {
            background-color: #f8f9fc;
            padding-top: 18px;
            padding-bottom: 18px;
            border-width: 0;
        }
    </style>
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0" style="padding-top: 15px;font-weight:600">Constancias DC-3</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item" style="color: white">Constancias DC-3</li>
                        
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />
    <a class="btn btn-primary" data-toggle="tooltip" title="Más información"  href="/manual-usuario/sistema/Guia-sistema.html#ConstanciaDC3"><i class="fas fa-question-circle" style="color:white; font-size:25px"></i></a>
    <br />
    <dx:ASPxGridView
        ID="gridConstancias"
        ClientInstanceName="gridConstancias"
        runat="server"
        AutoGenerateColumns="False"
        DataSourceID="SqlDSConstancias"
        KeyFieldName="OIDEncuesta"
        Width="100%">
        <SettingsPager PageSize="20">
            <PageSizeItemSettings Items="20, 50, 100, 200" Visible="True">
            </PageSizeItemSettings>
        </SettingsPager>
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClickEncuestas" />
        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>

        <SettingsBehavior AllowFocusedRow="True" />
        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />

        <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="Page" VisibleIndex="0"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="Curp" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Puesto" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Empleado" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumEncuesta" VisibleIndex="7" Caption="Núm. Encuesta">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEncuesta" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" Visible="False" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Ocupación" FieldName="idOcupacion" VisibleIndex="6">
                <PropertiesComboBox DataSourceID="sqlDSOcupaciones" TextField="Denominacion" ValueField="idOcupacion">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarDC3">
                <Items>
                    <dx:GridViewToolbarItem Name="constanciasMasivas" BeginGroup="True" Text="Constancias">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/documento-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/documento-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/documento-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/documento-v2.png" AlternateText="Constancias Masivas" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/documento-v2.png"></Image>

                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
<dx:GridViewToolbarItem Name="constanciasMasivas" BeginGroup="True" Text="Constancias" Visible="False">
<Image UrlChecked="~/Content/icons/new.png" UrlDisabled="~/Content/icons/new.png" UrlHottracked="~/Content/icons/new.png" UrlSelected="~/Content/icons/new.png" AlternateText="Constancias Masivas" Height="32px" Width="32px" Url="~/Content/icons/new.png"></Image>

<ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid"></ItemStyle>
</dx:GridViewToolbarItem>
<dx:GridViewToolbarItem Name="constanciasMasivas" BeginGroup="True" Text="Constancias" Visible="False">
<Image UrlChecked="~/Content/icons/new.png" UrlDisabled="~/Content/icons/new.png" UrlHottracked="~/Content/icons/new.png" UrlSelected="~/Content/icons/new.png" AlternateText="Constancias Masivas" Height="32px" Width="32px" Url="~/Content/icons/new.png"></Image>

<ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid"></ItemStyle>
</dx:GridViewToolbarItem>
                </Items>
                <Items>
                    <dx:GridViewToolbarItem Visible="false" BeginGroup="True" Name="constanciasMasivas" Text="Constancias">
                        <Image AlternateText="Constancias Masivas" Height="32px" Width="32px" Url="~/Content/icons/new.png" UrlChecked="~/Content/icons/new.png" UrlDisabled="~/Content/icons/new.png" UrlHottracked="~/Content/icons/new.png" UrlSelected="~/Content/icons/new.png">
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
            <PagerBottomPanel BackColor="#43BFC7" ForeColor="White">
            </PagerBottomPanel>
        </Styles>
    </dx:ASPxGridView>
    <br />
    <br />
    <dx:ASPxPopupControl
        ID="popupAvisoConstancia"
        ClientInstanceName="popupAvisoConstancia"
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
                    <asp:Button ID="btnAceptarReporte" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnAceptarReporte_Click" OnClientClick="CerrarAvisoConstancia()"  />
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupAvisoConstancias"
        ClientInstanceName="popupAvisoConstancias"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="411px" HeaderText="Constancia">
        <HeaderStyle BackColor="Navy" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6 style="color: navy; font-size: 20px;">Se abrirá una nueva pestaña</h6>
                <br />
                <h6 style="color: navy; font-size: 20px;">Nota: Si la pestaña no se abre, siga las siguientes instrucciones</h6>
                <br />
                <div id="demo" class="carousel slide" data-ride="carousel">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                        <li data-target="#demo" data-slide-to="3"></li>
                    </ul>

                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <p style="color: navy">1.- Arriba a la derecha, haz clic en Más <b>፧  ></b> Configuración.</p>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/img/paso1-VentajaEmergente.jpg" Width="100%" />
                        </div>
                        <div class="carousel-item">
                            <p style="color: navy">2.- En "Privacidad y seguridad", haz clic en Configuración de sitios web.</p>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Content/img/paso2-VentajaEmergente.jpg" Width="100%" />
                        </div>
                        <div class="carousel-item">
                            <p style="color: navy">3.- Haz clic en Ventanas emergentes y redirecciones.</p>
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Content/img/paso3-VentajaEmergente.jpg" Width="100%" />
                        </div>
                        <div class="carousel-item">
                            <p style="color: navy">4.- En la parte superior, elige la opción Permitido o Bloqueado.</p>
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Content/img/paso4-VentajaEmergente.jpg" Width="100%" />
                        </div>

                    </div>

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>

                <br />
                <div style="text-align: right">
                    <asp:Button ID="btnGenerarReportes" runat="server" CssClass="btn btn-primary" Text="Aceptar" OnClick="btnGenerarReportes_Click" OnClientClick="CerrarAvisoConstancias()" />
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
        <SettingsAdaptivity MinHeight="20%" MinWidth="30%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6 style=" font-size: 20px">Falta agregar los datos del empleado</h6>
                <br />
                <br />
                <div style="text-align: right">
                    <button class="btn btn-primary" type="button" onclick="CerrarVerificacion()" >Aceptar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupNoSeleccionados"
        ClientInstanceName="popupNoSeleccionados"
        runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" Width="409px" HeaderText="Constancia">
        <SettingsAdaptivity MinHeight="20%" MinWidth="30%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="Navy" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <h6 style=" font-size: 20px">No ha seleccionado ningun registro</h6>
                <br />
                <br />
                <div style="text-align: right">
                    <button class="btn btn-primary" id="botonpopup" type="button" onclick="CerrarpopupNoSeleccionados()" >Aceptar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <asp:SqlDataSource ID="SqlDSConstancias" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [Curp], [idOcupacion], [Puesto], [Empleado], [NumEncuesta], [OIDEncuesta], [OIDEmpresa] FROM [OpeNOMEncuestas] WHERE (([OIDEmpresa] = @OIDEmpresa) AND ([Puesto] IS NOT NULL) AND ([Curp] IS NOT NULL) AND ([Empleado] IS NOT NULL) AND ([idOcupacion] IS NOT NULL)) ORDER BY [OIDEncuesta] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlDSOcupaciones" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [idOcupacion], [Denominacion] FROM [CatNomOcupaciones]"></asp:SqlDataSource>

  <br />
    <br />
    <br />

</asp:Content>
