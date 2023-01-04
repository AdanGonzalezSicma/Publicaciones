<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gastos.aspx.cs" Inherits="Sistema_web.Gastos.Gastos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenGastos" ClientInstanceName="hiddenGastos" runat="server"></dx:ASPxHiddenField>
    <script>
        var visibleIndex;
        var idDocumento;
   
        function OnToolbarItemClick(s,e) {
            if (e.item.name == "Eliminar") {
                 visibleIndex = gridGastos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    idDocumento = gridGastos.GetRowKey(visibleIndex);
                    hiddenGastos.Set("hiddenGastos", idDocumento);
                    popupEliminar.Show();
                }
             }
        }
           window.onload = function active() {
            var act = document.getElementById("Gastos");
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
        function fncConfirmarEliminar() {
            popupEliminar.Hide();
            LoadingPanel.Show();
        }
        function fncCancelarEliminar() {
            popupEliminar.Hide();
        }
    </script>
              <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Gastos</b></h3>
                </div>
            
            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView
        ID="gridGastos" ClientInstanceName="gridGastos"
        runat="server"
        Width="100%"
        AutoGenerateColumns="False"
        DataSourceID="SqlDSGastos"
        OnInitNewRow="gridGastos_InitNewRow"
        OnRowInserting="gridGastos_RowInserting"
        KeyFieldName="OIDGasto">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
         <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" VerticalAlign="WindowCenter" />
            </EditForm>
        </SettingsPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="FechaGasto" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Folio" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="OIDTipoGasto" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Importe" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDGasto" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDUsuario" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaGasto" VisibleIndex="3">
                <PropertiesDateEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Folio" VisibleIndex="4" ReadOnly="true">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="5">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Importe" VisibleIndex="7">
                <PropertiesTextEdit DisplayFormatString="c" DisplayFormatInEditMode="True">
                    <MaskSettings IncludeLiterals="DecimalSymbol" AllowMouseWheel="False" Mask="$&lt;0..999999g&gt;.&lt;00..99&gt;"></MaskSettings>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OIDTipoGasto" Caption="Tipo de gasto" VisibleIndex="6">
                <PropertiesComboBox DataSourceID="SqlDSTipoGastos" TextField="Descripcion" ValueField="OIDTipoGasto">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarGastos">
                <Items>
                    <dx:GridViewToolbarItem Command="New" BeginGroup="True" Name="Nuevo" Text="Nuevo">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Edit" BeginGroup="True" Name="Editar" Text="Editar">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Name="Eliminar" Text="Eliminar">
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

    <asp:SqlDataSource runat="server" ID="SqlDSGastos" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDGasto], [OIDClub], [OIDUsuario], [FechaGasto], [Folio], [Descripcion], [OIDTipoGasto], [Importe] FROM [ClubGastos] WHERE ([OIDClub] = @OIDClub)" DeleteCommand="DELETE FROM [dbo].[ClubGastos]
 WHERE OIDGasto = @OIDGasto"
        InsertCommand="INSERT INTO [dbo].[ClubGastos]
           ([OIDClub]
           ,[OIDUsuario]
           ,[FechaGasto]
           ,[Folio]
           ,[Descripcion]
           ,[OIDTipoGasto]
           ,[Importe])
     VALUES
           (@OIDClub
           ,@OIDUsuario
           ,@FechaGasto
           ,@Folio
           ,@Descripcion
           ,@OIDTipoGasto
           ,@Importe)"
        UpdateCommand="UPDATE [dbo].[ClubGastos]
      SET [FechaGasto] = @FechaGasto
      ,[Folio] = @Folio
      ,[Descripcion] = @Descripcion
      ,[OIDTipoGasto] = @OIDTipoGasto
      ,[Importe] = @Importe
 WHERE OIDGasto = @OIDGasto">
        <DeleteParameters>
<asp:Parameter Name="OIDGasto"></asp:Parameter>
</DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OIDClub"></asp:Parameter>
            <asp:Parameter Name="OIDUsuario"></asp:Parameter>
            <asp:Parameter Name="FechaGasto"></asp:Parameter>
            <asp:Parameter Name="Folio"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="OIDTipoGasto"></asp:Parameter>
            <asp:Parameter Name="Importe"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FechaGasto"></asp:Parameter>
            <asp:Parameter Name="Folio"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="OIDTipoGasto"></asp:Parameter>
            <asp:Parameter Name="Importe"></asp:Parameter>
        </UpdateParameters>
<SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSTipoGastos" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Descripcion], [OIDTipoGasto] FROM [CATTipoGasto] WHERE ([OIDClub] = @OIDClub)">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>


    <dx:ASPxPopupControl
        ID="popupEliminar"
        ClientInstanceName="popupEliminar"
        runat="server"
        Modal="true"
        CloseOnEscape="true" HeaderText="Eliminar gasto"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h5>¿Está seguro de continuar con la eliminación de este gasto?
                                <br />
                                <br />
                            </h5>
                            <div class="buttonsContainer" style="text-align: right">
                                <dx:ASPxButton ID="btnEliminarGasto" AutoPostBack="false" runat="server" Text="Confirmar" Width="100" BackColor="#FF3547" CssClass="btn-danger" OnClick="btnEliminarGasto_Click">
                                    <ClientSideEvents Click="fncConfirmarEliminar" />
                                    <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                                </dx:ASPxButton>
                                <dx:ASPxButton ID="btnCancelarGasto" runat="server" Text="Cancelar" AutoPostBack="false" Width="100" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                                    <ClientSideEvents Click="fncCancelarEliminar" />
                                    <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                                </dx:ASPxButton>
                                <br />
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

    <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel" Modal="True" Text="Eliminando gasto"></dx:ASPxLoadingPanel>
    <br /> <br />
    <br /><br /> <br />
    <br />
</asp:Content>
