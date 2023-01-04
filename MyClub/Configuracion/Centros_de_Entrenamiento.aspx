<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Centros_de_Entrenamiento.aspx.cs" Inherits="Sistema_web.Configuracion.Centros_de_Entrenamiento" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenCentroEntrenamiento" ClientInstanceName="hiddenCentroEntrenamiento" runat="server"></dx:ASPxHiddenField>
    <script>    
        var idDocumento;
        var visibleIndex;
        function toolBarCentrosTrabajo(s,e) {
            if (e.item.name == "Eliminar") {
                visibleIndex = gridCentrosDeTrabajo.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                    idDocumento = gridCentrosDeTrabajo.GetRowKey(visibleIndex);
                    hiddenCentroEntrenamiento.Set("Oid", idDocumento);
                    PopupEliminarCentrosEntrenamiento.Show();
                }
                
            }
        }
         window.onload = function active() {
            var act = document.getElementById("Entrenamientos");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
             }
              var act2 = document.getElementById("label2");
            if (act2.className.match("tab2")) {
                act2.className ="tab active";
            } else {
                act2.remove.className("active");
            }
    
        }
    </script>
      <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Centros de Entrenamientos</b></h3>
                </div>
            
            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView 
        ID="gridCentrosDeTrabajo" 
        ClientInstanceName="gridCentrosDeTrabajo" 
        runat="server" 
        AutoGenerateColumns="False" 
        DataSourceID="SqlDSCentrosTrabajo" 
        Width="100%" 
        KeyFieldName="Oid" OnRowInserting="gridCentrosDeTrabajo_RowInserting" >
        <ClientSideEvents ToolbarItemClick="toolBarCentrosTrabajo"></ClientSideEvents>

        <SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ShowItemCaptionColon="true" ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
         <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>
        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" />
            </EditForm>
        </SettingsPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="DescripcionInstalaciones" ColSpan="2" ColumnSpan="2" Caption="Instalaciones"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Domicilio" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Colonia" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Ciudad" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Estado" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="TelFijo" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="TelMovil" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="UbicacionGoogle" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Oid" VisibleIndex="0" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="2" Caption="Nombre">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Colonia" VisibleIndex="5">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Ciudad" VisibleIndex="6">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Estado" VisibleIndex="7">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelFijo" VisibleIndex="8" Caption="Tel&#233;fono Fijo">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelMovil" VisibleIndex="9" Caption="Tel&#233;fono M&#243;vil">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="11">
                <PropertiesCheckEdit ValueGrayed="False"></PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataMemoColumn FieldName="DescripcionInstalaciones" Caption="Descripci&#243;n de las instalaciones" VisibleIndex="3" Visible="False"></dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="Domicilio" VisibleIndex="4">
                <PropertiesMemoEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="UbicacionGoogle" Caption="Ubicaci&#243;n Google Maps" VisibleIndex="10" Visible="False"></dx:GridViewDataMemoColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="ToolCentrosEntrenamiento">
                <Items>
                    <dx:GridViewToolbarItem Command="New" AdaptiveText="Nuevo" BeginGroup="True" Name="Nuevo" Text="Nuevo">
                        <Image Height="32px" Width="32px" AlternateText="Nuevo" Url="~/Content/Iconos/nuevo.png" UrlChecked="~/Content/Iconos/nuevo.png" UrlDisabled="~/Content/Iconos/nuevo.png" UrlHottracked="~/Content/Iconos/nuevo.png" UrlSelected="~/Content/Iconos/nuevo.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Edit" AdaptiveText="Editar" BeginGroup="True" Name="Editar" Text="Editar">
                         <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Custom" AdaptiveText="Eliminar" BeginGroup="True" Name="Eliminar" Text="Eliminar" >
                        <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px">
                        </Image>
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
    <asp:SqlDataSource runat="server" ID="SqlDSCentrosTrabajo" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [OidClub], [Descripcion], [DescripcionInstalaciones], [Domicilio], [Colonia], [Ciudad], [Estado], [TelFijo], [TelMovil], [UbicacionGoogle], [Activo] FROM [ClubClubsCentrosEntrenamiento] WHERE ([OidClub] = @OidClub) ORDER BY [Oid] DESC" DeleteCommand="DELETE FROM [MyClub].[dbo].[ClubClubsCentrosEntrenamiento]
 WHERE Oid = @Oid"
        InsertCommand="INSERT INTO [MyClub].[dbo].[ClubClubsCentrosEntrenamiento]
           ([OidClub]
           ,[Descripcion]
           ,[DescripcionInstalaciones]
           ,[Domicilio]
           ,[Colonia]
           ,[Ciudad]
           ,[Estado]
           ,[TelFijo]
           ,[TelMovil]
           ,[UbicacionGoogle]
           ,[Activo])
     VALUES
           (@OidClub
           ,@Descripcion
           ,@DescripcionInstalaciones
           ,@Domicilio
           ,@Colonia
           ,@Ciudad
           ,@Estado
           ,@TelFijo
           ,@TelMovil
           ,@UbicacionGoogle
           ,@Activo)"
        UpdateCommand="UPDATE [MyClub].[dbo].[ClubClubsCentrosEntrenamiento]
   SET [OidClub] = @OidClub
      ,[Descripcion] = @Descripcion
      ,[DescripcionInstalaciones] = @DescripcionInstalaciones
      ,[Domicilio] = @Domicilio
      ,[Colonia] = @Colonia
      ,[Ciudad] = @Ciudad
      ,[Estado] = @Estado
      ,[TelFijo] = @TelFijo
      ,[TelMovil] = @TelMovil
      ,[UbicacionGoogle] = @UbicacionGoogle
      ,[Activo] = @Activo
 WHERE Oid = @Oid">
        <DeleteParameters>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OidClub"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="DescripcionInstalaciones"></asp:Parameter>
            <asp:Parameter Name="Domicilio"></asp:Parameter>
            <asp:Parameter Name="Colonia"></asp:Parameter>
            <asp:Parameter Name="Ciudad"></asp:Parameter>
            <asp:Parameter Name="Estado"></asp:Parameter>
            <asp:Parameter Name="TelFijo"></asp:Parameter>
            <asp:Parameter Name="TelMovil"></asp:Parameter>
            <asp:Parameter Name="UbicacionGoogle"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OidClub"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="DescripcionInstalaciones"></asp:Parameter>
            <asp:Parameter Name="Domicilio"></asp:Parameter>
            <asp:Parameter Name="Colonia"></asp:Parameter>
            <asp:Parameter Name="Ciudad"></asp:Parameter>
            <asp:Parameter Name="Estado"></asp:Parameter>
            <asp:Parameter Name="TelFijo"></asp:Parameter>
            <asp:Parameter Name="TelMovil"></asp:Parameter>
            <asp:Parameter Name="UbicacionGoogle"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- POPUP ELIMINAR -->
    <dx:ASPxPopupControl
        ID="PopupEliminarCentrosEntrenamiento"
        ClientInstanceName="PopupEliminarCentrosEntrenamiento"
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
                <h4>¿Desea eliminar el centro seleccionado?</h4>
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
      <br />
     <br />
    <br />
</asp:Content>
