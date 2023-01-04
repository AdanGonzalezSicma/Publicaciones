<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medico.aspx.cs" Inherits="Sistema_web.Historial.Medico" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Historial Médico</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function OnToolbarItemClick(s, e) {
            if (e.item.name == "Eliminar") {
            var index = gridHistorialMedico.GetFocusedRowIndex();
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
            var index = gridHistorialMedico.GetFocusedRowIndex();
            gridHistorialMedico.DeleteRow(index);
        }
          window.onload = function active() {
            var act = document.getElementById("Hmedico");
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
                    <h3 class="m-0" style="padding: 15px"><b>Historial Médico</b></h3>
                   
                </div>

            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView ID="gridHistorialMedico" ClientInstanceName="gridHistorialMedico" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDSHistorialClinico" KeyFieldName="OIOHistorialMedico" OnRowInserting="gridHistorialMedico_RowInserting">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
          <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter"></EditForm>
        </SettingsPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Fecha" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="OidTipoAtencionClinica" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="CentroMedico" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="MedicoQueAtendio" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="ResultadoDiagnostico" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Estatus" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIOHistorialMedico" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidAlumno" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="2"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CentroMedico" VisibleIndex="6">
                <PropertiesTextEdit MaxLength="100"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MedicoQueAtendio" VisibleIndex="7">
                <PropertiesTextEdit MaxLength="100"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Estatus" VisibleIndex="8">
                <PropertiesTextEdit MaxLength="15"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidTipoAtencionClinica" Caption="Tipo Atenci&#243;n Cl&#237;nica" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlDSTipoHistorialMedico" TextField="Descripcion" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataMemoColumn FieldName="Descripcion" Visible="False" VisibleIndex="4">
                <PropertiesMemoEdit MaxLength="500" Rows="5"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="ResultadoDiagnostico" Visible="False" VisibleIndex="5">
                <PropertiesMemoEdit MaxLength="500" Rows="5"></PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="ToolHistorialMedico">
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
    <asp:SqlDataSource runat="server" ID="SqlDSHistorialClinico" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIOHistorialMedico], [OidAlumno], [OidTipoAtencionClinica], [Fecha], [Descripcion], [ResultadoDiagnostico], [CentroMedico], [MedicoQueAtendio], [Estatus] FROM [ClubAlumnosHistorialMedico] WHERE ([OidAlumno] = @OidAlumno)" DeleteCommand="DELETE FROM [dbo].[ClubAlumnosHistorialMedico]
 WHERE OIOHistorialMedico = @OIOHistorialMedico"
        InsertCommand="INSERT INTO [dbo].[ClubAlumnosHistorialMedico]
           ([OidAlumno]
           ,[OidTipoAtencionClinica]
           ,[Fecha]
           ,[Descripcion]
           ,[ResultadoDiagnostico]
           ,[CentroMedico]
           ,[MedicoQueAtendio]
           ,[Estatus])
     VALUES
           (@OidAlumno
           ,@OidTipoAtencionClinica
           ,@Fecha
           ,@Descripcion
           ,@ResultadoDiagnostico
           ,@CentroMedico
           ,@MedicoQueAtendio
           ,@Estatus)"
        UpdateCommand="UPDATE [dbo].[ClubAlumnosHistorialMedico]
   SET [OidTipoAtencionClinica] = @OidTipoAtencionClinica
      ,[Fecha] = @Fecha
      ,[Descripcion] = @Descripcion
      ,[ResultadoDiagnostico] = @ResultadoDiagnostico
      ,[CentroMedico] = @CentroMedico
      ,[MedicoQueAtendio] = @MedicoQueAtendio
      ,[Estatus] = @Estatus
 WHERE OIOHistorialMedico = @OIOHistorialMedico">
        <DeleteParameters>
            <asp:Parameter Name="OIOHistorialMedico"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OidAlumno"></asp:Parameter>
            <asp:Parameter Name="OidTipoAtencionClinica"></asp:Parameter>
            <asp:Parameter Name="Fecha"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="ResultadoDiagnostico"></asp:Parameter>
            <asp:Parameter Name="CentroMedico"></asp:Parameter>
            <asp:Parameter Name="MedicoQueAtendio"></asp:Parameter>
            <asp:Parameter Name="Estatus"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDUsuario" Name="OidAlumno" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OidTipoAtencionClinica"></asp:Parameter>
            <asp:Parameter Name="Fecha"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="ResultadoDiagnostico"></asp:Parameter>
            <asp:Parameter Name="CentroMedico"></asp:Parameter>
            <asp:Parameter Name="MedicoQueAtendio"></asp:Parameter>
            <asp:Parameter Name="Estatus"></asp:Parameter>
            <asp:Parameter Name="OIOHistorialMedico"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSTipoHistorialMedico" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [Descripcion] FROM [CatTipoAtencionClinica]"></asp:SqlDataSource>
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
                <h4>¿Desea eliminar el curso seleccionado?</h4>
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
