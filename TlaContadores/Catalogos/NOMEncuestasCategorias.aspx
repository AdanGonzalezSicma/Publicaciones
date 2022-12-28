<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NOMEncuestasCategorias.aspx.cs" Inherits="CreandoProductividad.Catalogos.NOMEncuestasCategorias" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenCategoriaID" ClientInstanceName="hiddenCategoriaID" runat="server"></dx:ASPxHiddenField>

    <!-- SCRIPT -->
    <script>

        //TOOLTIPS
        var visibleIndex;
        function OnToolbarItemClick(s, e) {
            if (e.item.name == "EliminarCategoria") {
                visibleIndex = gridCategorias.GetFocusedRowIndex();
                gridCategorias.GetRowValues(visibleIndex, 'OIDCategoria;Activo', fncEliminarCategoria);
            }
        }

        function fncEliminarCategoria(value) {
            var OIDCategoria = value[0];

            if (OIDCategoria != 0) {
                hiddenCategoriaID.Set("OIDCategoria", OIDCategoria);
                PopupEliminarCategoria.Show();
            } else {
                PopupError.Show();
            }
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
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h3 class="m-0" style="padding-top:15px;"><b>Categorías</b></h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right" style=" padding-top:15px">
              <li class="breadcrumb-item"><a href="../../index.html" style="color:#ffffff">Inicio</a></li>
                 <li class="breadcrumb-item" style="color:#ffffff">Catálogos</li>
              <li class="breadcrumb-item active"style="color:#ffffff" >Categorias</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- TITULO MODULO -->
   

    <!-- GRID CATEGORIAS -->
    <dx:ASPxGridView
        ID="gridCategorias"
        ClientInstanceName="gridCategorias"
        runat="server"
        AutoGenerateColumns="False"
        DataSourceID="SqlDSCategorias"
        KeyFieldName="OIDCategoria"
        Width="100%" 
        OnInitNewRow="gridCategorias_InitNewRow">
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
                <SettingsAdaptivity MinHeight="20%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
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
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="4" ColumnSpan="4" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn VisibleIndex="0" Caption="OIDCategoria" FieldName="OIDCategoria" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataMemoColumn FieldName="Descripcion" Caption="Descripci&#243;n" VisibleIndex="1">
                <PropertiesMemoEdit MaxLength="500" Rows="5">
                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip" ErrorTextPosition="Right" RequiredField-IsRequired="true" 
                                        RequiredField-ErrorText="Ingresar descripción de la categoría." ValidateOnLeave="true" SetFocusOnError="true">
                        <RequiredField IsRequired="True" ErrorText="Ingresar descripción de la categoría."></RequiredField>
                    </ValidationSettings>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" Caption="Activo" VisibleIndex="2"></dx:GridViewDataCheckColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right">
                <Items>
                    <dx:GridViewToolbarItem Text="Nuevo" Command="New" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/nuevo.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/nuevo.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Text="Editar" Command="Edit" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                        </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Text="Eliminar" Name="EliminarCategoria" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Height="32px" Width="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White" >
                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
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

    <!-- POPUP ELIMINAR -->
    <dx:ASPxPopupControl
        ID="PopupEliminarCategoria"
        ClientInstanceName="PopupEliminarCategoria"
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
                    <dx:ASPxButton ID="btnEliminarCategoria" OnClick="btnEliminarCategoria_Click" runat="server" Text="Eliminar" BackColor="#FF3547" CssClass="btn-danger">
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCerrarEliminar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="function (s, e) { PopupEliminarCategoria.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
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
                    <dx:ASPxButton ID="ASPxButton5" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547">
                        <ClientSideEvents Click="function (s, e) { PopupError.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <!-- SQLDS CATEGORIAS -->
    <asp:SqlDataSource ID="SqlDSCategorias" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spListadoNOMEncuestasCategorias"
        InsertCommand="spCrearNOMEncuestasCategorias"
        UpdateCommand="spActualizarNOMEncuestasCategorias" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="OIDCategoria" Type="Int64"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>