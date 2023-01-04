<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Deportivo.aspx.cs" Inherits="Sistema_web.Historial.Deportivo" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Historial Deportivo</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenCursos" ClientInstanceName="hiddenCursos" runat="server"></dx:ASPxHiddenField>
    <script>
        function OnToolbarItemClick(s, e) {
            if (e.item.name == "Eliminar") {
                var index = gridHistorialDeportivoAlumno.GetFocusedRowIndex();
                if (index >= 0) {
                popupEliminar.Show();
                }
            }
        }
        function ocultarPopupEliminar() {
            popupEliminar.Hide();
        }
        function ocultarPopupyEliminar() {
            popupEliminar.Hide();
            var index = gridHistorialDeportivoAlumno.GetFocusedRowIndex();
            gridHistorialDeportivoAlumno.DeleteRow(index);
        }
        window.onload = function active() {
            var act = document.getElementById("Hdeportivo");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
    
        }
    </script>
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Historial deportivo</b></h3>
                    
                </div>

            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView ID="gridHistorialDeportivoAlumno" ClientInstanceName="gridHistorialDeportivoAlumno" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSHistorialDeportivoAlumno" KeyFieldName="OIOHistorialDeportivo" Width="100%" OnRowInserting="gridHistorialDeportivoAlumno_RowInserting">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>

 <SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ShowItemCaptionColon="true" ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
         <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

      <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True"></EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Fecha" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="OidTipoEvento" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Entrenadores" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Resultados" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Comentarios" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIOHistorialDeportivo" VisibleIndex="0" ReadOnly="True" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidAlumno" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="3" Caption="Descripci&#243;n" Width="30%">
                <PropertiesTextEdit MaxLength="100"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Entrenadores" VisibleIndex="4" Width="20%">
                <PropertiesTextEdit MaxLength="100"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="5" Width="10%"></dx:GridViewDataDateColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidTipoEvento" Caption="Tipo de Evento" VisibleIndex="2" Width="30%">
                <PropertiesComboBox DataSourceID="SqlDSTipoHistorialDeportivo" TextField="Descripcion" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataMemoColumn FieldName="Resultados" VisibleIndex="6" Width="10%">
                <PropertiesMemoEdit MaxLength="100" Rows="3"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="Comentarios" VisibleIndex="7" Visible="False">
                <PropertiesMemoEdit MaxLength="500" Rows="5"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="ToolHistorialDeportivo">
                <Items>
                    <dx:GridViewToolbarItem Command="New" Name="Nuevo" BeginGroup="True" Text="Nuevo">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/nuevo-icono.png" UrlChecked="~/Content/iconos/nuevo-icono.png" UrlDisabled="~/Content/iconos/nuevo-icono.png" UrlHottracked="~/Content/iconos/nuevo-icono.png" UrlSelected="~/Content/iconos/nuevo-icono.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Edit" Name="Editar" BeginGroup="True" Text="Editar">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/editar-icono.png" UrlChecked="~/Content/iconos/editar-icono.png" UrlDisabled="~/Content/iconos/editar-icono.png" UrlHottracked="~/Content/iconos/editar-icono.png" UrlSelected="~/Content/iconos/editar-icono.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="Eliminar" BeginGroup="True" Text="Eliminar">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png"></Image>
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

    <asp:SqlDataSource ID="SqlDSTipoHistorialDeportivo" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [Descripcion] FROM [CatTipoEventoDeportivo]"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDSHistorialDeportivoAlumno" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIOHistorialDeportivo], [OidAlumno], [OidTipoEvento], [Descripcion], [Entrenadores], [Fecha], [Resultados], [Comentarios] FROM [ClubAlumnosHistorialDeportivo] WHERE ([OidAlumno] = @OidAlumno) ORDER BY [Fecha] DESC" DeleteCommand="DELETE FROM [dbo].[ClubAlumnosHistorialDeportivo]
       WHERE OIOHistorialDeportivo = @OIOHistorialDeportivo"
        InsertCommand="INSERT INTO [dbo].[ClubAlumnosHistorialDeportivo]
           ([OidAlumno]
           ,[OidTipoEvento]
           ,[Descripcion]
           ,[Entrenadores]
           ,[Fecha]
           ,[Resultados]
           ,[Comentarios])
     VALUES
           (@OidAlumno
           ,@OidTipoEvento
           ,@Descripcion
           ,@Entrenadores
           ,@Fecha
           ,@Resultados
           ,@Comentarios)"
        UpdateCommand="UPDATE [dbo].[ClubAlumnosHistorialDeportivo]
   SET 
      [OidTipoEvento] = @OidTipoEvento
      ,[Descripcion] = @Descripcion
      ,[Entrenadores] = @Entrenadores
      ,[Fecha] = @Fecha
      ,[Resultados] = @Resultados
      ,[Comentarios] = @Comentarios
 WHERE OIOHistorialDeportivo = @OIOHistorialDeportivo">
        <DeleteParameters>
            <asp:Parameter Name="OIOHistorialDeportivo"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OidAlumno"></asp:Parameter>
            <asp:Parameter Name="OidTipoEvento"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="Entrenadores"></asp:Parameter>
            <asp:Parameter Name="Fecha"></asp:Parameter>
            <asp:Parameter Name="Resultados"></asp:Parameter>
            <asp:Parameter Name="Comentarios"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDUsuario" Name="OidAlumno" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OidTipoEvento"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="Entrenadores"></asp:Parameter>
            <asp:Parameter Name="Fecha"></asp:Parameter>
            <asp:Parameter Name="Resultados"></asp:Parameter>
            <asp:Parameter Name="Comentarios"></asp:Parameter>
            <asp:Parameter Name="OIOHistorialDeportivo"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <dx:ASPxPopupControl
        ID="popupEliminar"
        ClientInstanceName="popupEliminar"
        runat="server"
        Font-Bold="False"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" AllowDragging="true" HeaderText="¡Advertencia!" Width="650px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h4>¿Desea eliminar el historial deportivo seleccionado?</h4>
                <br />
                <div class="text-right">
                    <%--<asp:Button ID="btnEliminarCursoAsignado" Text="Baja" CssClass="btn btn-danger" runat="server"  BorderColor="#FF3547" BorderStyle="Solid" OnClientClick="fncCerrarPopupBajaCurso();" BackColor="#FF3547" />--%>
                    <dx:ASPxButton ID="btnEliminarCursoAsignado" runat="server" Text="Eliminar" AutoPostBack="false" BackColor="#FF3547" ForeColor="White" CssClass="btn-danger">
                        <ClientSideEvents Click="ocultarPopupyEliminar" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCancelarCursoAsignado" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="ocultarPopupEliminar" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
      <br />
     <br />
    <br />
</asp:Content>
