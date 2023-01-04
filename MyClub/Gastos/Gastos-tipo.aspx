<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gastos-tipo.aspx.cs" Inherits="Sistema_web.Gastos.Gastos_tipo" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenTipoGastos" ClientInstanceName="hiddenTipoGastos" runat="server"></dx:ASPxHiddenField>
    <script>
        var visibleIndex;
        function OnToolbarItemClick(s,e) {
            if (e.item.name == "EliminarTipo") {
                var visibleIndex = gridCargosAbonos.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    hiddenTipoGastos.Set("hiddenTipoGastos", gridCargosAbonos.GetRowKey(visibleIndex));
                    popupEliminar.Show();
                }
            }
        }
        function fncConfirmarEliminar() {
            popupEliminar.Hide();
        }
        function fncCancelarEliminar() {
            popupEliminar.Hide();
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
    </script>
     <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Tipo de Gastos</b></h3>
                </div>
            
            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView 
        ID="gridGastosTipo" 
        ClientInstanceName="gridGastosTipo" 
        runat="server" 
        Width="100%"  
        OnRowInserting="gridGastosTipo_RowInserting"
        AutoGenerateColumns="False" 
        DataSourceID="SqlDSTipoGastos" 
        KeyFieldName="OIDTipoGasto">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>
          <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>

        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" VerticalAlign="WindowCenter" />
            </EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDTipoGasto" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="3">
                <PropertiesTextEdit MaxLength="50">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar EnableAdaptivity="True" ItemAlign="Right" Name="toolbarGastos">
                <Items>
                    <dx:GridViewToolbarItem Command="New" Name="NuevoTipo" Text="Nuevo" AdaptiveText="Nuevo" BeginGroup="True">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Edit" Name="EditarTipo" Text="Editar" AdaptivePriority="1" AdaptiveText="Editar" BeginGroup="True">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="EliminarTipo" Text="Eliminar" AdaptivePriority="2" AdaptiveText="Eliminar" BeginGroup="True">
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
    <asp:SqlDataSource runat="server" ID="SqlDSTipoGastos" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDTipoGasto], [OIDClub], [Descripcion] FROM [CATTipoGasto] WHERE ([OIDClub] = @OIDClub) ORDER BY [Descripcion]" InsertCommand="INSERT INTO [dbo].[CATTipoGasto]
           ([OIDClub]
           ,[Descripcion])
     VALUES
           (@OIDClub
           ,@Descripcion)"
        UpdateCommand="UPDATE [dbo].[CATTipoGasto]
   SET [Descripcion] = @Descripcion
 WHERE [OIDTipoGasto] = @OIDTipoGasto">
        <InsertParameters>
            <asp:Parameter Name="OIDClub"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="OIDTipoGasto"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <dx:ASPxPopupControl
        ID="popupEliminar"
        ClientInstanceName="popupEliminar"
        runat="server"
        Modal="true"
        ShowFooter="true"
        CloseOnEscape="true" HeaderText="¡Advertencia!" Font-Bold="False" Width="650px"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
        <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
       <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <div class="container">
  <div class="row">
                    <div class="col-12">
                        <h4>¿Está seguro de continuar con la eliminación de este alumno? Si procede se eliminarán también todos los datos asociados</h4>
                    </div>
                </div>
                </div>
              
                <br />
            </dx:PopupControlContentControl>
        </ContentCollection>
        <FooterTemplate>
            <dx:ASPxFormLayout runat="server" ID="footerFormLayout" Width="100%" CssClass="clearPaddings">
                <Styles LayoutItem-CssClass="clearPaddings" LayoutGroup-CssClass="clearPaddings" />
                <Items>
                    <dx:LayoutGroup GroupBoxDecoration="None">
                        <Paddings Padding="0" />
                        <Items>
                            <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right">
                                <LayoutItemNestedControlCollection>
                                    <dx:LayoutItemNestedControlContainer>
                                        <div class="buttonsContainer">
                                            <dx:ASPxButton ID="btnEliminarAlumnos" AutoPostBack="false" runat="server" Text="Confirmar" Width="100" BackColor="#FF3547" CssClass="btn-danger" OnClick="btnEliminarAlumnos_Click">
                                                <ClientSideEvents Click="fncConfirmarEliminar" />
                                                <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                                            </dx:ASPxButton>
                                            <dx:ASPxButton ID="btnCancelar" runat="server" Text="Cancelar" AutoPostBack="false" Width="100" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                                                <ClientSideEvents Click="fncCancelarEliminar" />
                                                <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                                            </dx:ASPxButton>
                                        </div>
                                    </dx:LayoutItemNestedControlContainer>
                                </LayoutItemNestedControlCollection>
                            </dx:LayoutItem>
                        </Items>
                    </dx:LayoutGroup>
                </Items>
            </dx:ASPxFormLayout>
        </FooterTemplate>
    </dx:ASPxPopupControl>
      <br />
    <br />
    <br /><br />
</asp:Content>