<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MensajeriaPorEmpresa.aspx.cs" Inherits="CreandoProductividad.Mensajeria.MensajeriaPorEmpresa" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenOIDMensaje" ClientInstanceName="hiddenOIDMensaje" runat="server"></dx:ASPxHiddenField>


    <script>
        var visibleIndex;
        function onClickVerMensajes(s, e) {
            visibleIndex = gdMensajeria.GetFocusedRowIndex();
            if (visibleIndex != -1) {
                var idDocument = gdMensajeria.GetRowKey(visibleIndex);
                hiddenOIDMensaje.Set("OIDMensajeria", idDocument);
                gdMensajeria.GetRowValues(visibleIndex, 'Titulo;Mensaje', fcnGenerarVistaMensajes);
            }
        }

        function fcnGenerarVistaMensajes(value) {
            console.log(value);
            document.getElementById('Titulo').innerText = value[0];
            document.getElementById('Mensaje').innerText = value[1];

            popupVerMensaje.Show();
            gdMensajeria.Refresh();
        }

    </script>



    <asp:SqlDataSource ID="sqlMensajeria" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [idAvisos], [Estado], [OIDUsuarioCreacion], [OIDUsuarioDestino], [Titulo], [Mensaje], [FechaCreacion], [Link], [GuidAviso] FROM [CatNOMAvisos] WHERE ([OIDUsuarioDestino] = @OIDUsuarioDestino) ORDER BY [idAvisos] DESC">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="OIDUsuarioDestino" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0" style="padding-top: 15px;font-weight:600">Mensajería</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item" style="color: white">Mensajes</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />

    <dx:ASPxGridView ID="gdMensajeria"
        ClientInstanceName="gdMensajeria"
        runat="server" AutoGenerateColumns="False" DataSourceID="sqlMensajeria" KeyFieldName="idAvisos" Width="100%">
        <ClientSideEvents ToolbarItemClick="onClickVerMensajes"></ClientSideEvents>

        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>

        <SettingsPager AlwaysShowPager="True">
        </SettingsPager>

        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" />

        <SettingsDataSecurity AllowReadUnlistedFieldsFromClientApi="True" />

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True"></EditForm>
        </SettingsPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Estado" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="OIDUsuarioCreacion" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="OIDUsuarioDestino" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Titulo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Mensaje" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaCreacion" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Link" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="GuidAviso" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="idAvisos" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDUsuarioDestino" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Titulo" VisibleIndex="4" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Mensaje" VisibleIndex="5" Width="60%"></dx:GridViewDataTextColumn>

            <dx:GridViewDataDateColumn FieldName="FechaCreacion" VisibleIndex="6" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Link" VisibleIndex="7" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="GuidAviso" VisibleIndex="8" Visible="False"></dx:GridViewDataTextColumn>

            <dx:GridViewDataMemoColumn FieldName="Titulo" VisibleIndex="3" Width="30%"></dx:GridViewDataMemoColumn>
            <dx:GridViewDataCheckColumn FieldName="Estado" VisibleIndex="2" Width="10%"></dx:GridViewDataCheckColumn>

        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right"  Name="toolbarMensajes">
                <Items>
                    <dx:GridViewToolbarItem BeginGroup="True" Text="Ver Mensaje" Name="btnVer">
                        <Image Height="32px" Url="~/Content/icons/iconos-nuevos/ver-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/ver-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/ver-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/ver-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/ver-v2.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
    </dx:ASPxGridView>


    <dx:ASPxPopupControl ID="popupVerMensaje"
        ClientInstanceName="popupVerMensaje"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        runat="server"  Modal="True"
        CloseAction="CloseButton"
       
        HeaderText="Detalle del mensaje" Font-Bold="False" Width="650px" ShowCloseButton="False">

        <HeaderStyle BackColor="Navy" Font-Bold="false" ForeColor="White" Border-BorderStyle="None" />
          <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Titulo:</label>
                            <div class="form-control" style="width:100%">
                        <p id="Titulo"></p>
                    </div>
                        </div>
                        <div class="form-group">
                            <label>Mensaje:</label>
                             <div class="form-control mb-2 mr-sm-2" style="width:100%; height:100px"  >
                        <p id="Mensaje"></p>
                    </div>
                        </div>
                    </div>
                </div>
             
           
                <div class="row text-right">
                    <div class="col-lg-12">
                        <dx:ASPxButton ID="btnAceptar" OnClick="btnAceptar_Click" runat="server" Text="Aceptar" CssClass="btn-primary">
                            <ClientSideEvents Click="function(s, e) {
                             popupVerMensaje.Hide();  
                             gdMensajeria.Refresh();
                            }" />
                        </dx:ASPxButton>
                    </div>
                    
                </div>
              
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

</asp:Content>
