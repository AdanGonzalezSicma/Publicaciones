<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Membresias.aspx.cs" Inherits="Sistema_web.Membresias.Membresias" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenMembresias" ClientInstanceName="hiddenMembresias" runat="server"></dx:ASPxHiddenField>
   <script>
       let visibleIndex;
       let idDocument;
       window.onload = function active() {
            var act = document.getElementById("Membresias");
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
       function OnToolbarItemClick(s,e) {
           if (e.item.name == "Eliminar") {
               visibleIndex = gridMembrecias.GetFocusedRowIndex();
               if (visibleIndex > -1) {
                   idDocument = gridMembrecias.GetRowKey(visibleIndex);
                   hiddenMembresias.Set("hiddenMembresias", idDocument);
                   popupEliminarMembresia.Show();
               }
           }
       }
       //Eliminación de membresías
       function ConfirmacionEliminarMembresia() {
           popupEliminarMembresia.Hide();
       }
       function CancelarEliminarMembresia() {
           popupEliminarMembresia.Hide();
       }
   </script>
          <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Membresías</b></h3>
                </div>            
            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView ID="gridMembrecias" OnRowInserting="gridMembrecias_RowInserting" ClientInstanceName="gridMembrecias" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSMembrecias" Width="100%" OnInitNewRow="gridMembrecias_InitNewRow" KeyFieldName="Oid">
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
                <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" />
            </EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Costo" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FrecuenciaPago" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="CargoAutomatico" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="PermiteCambioPrecio" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Costo" VisibleIndex="4">
                <PropertiesTextEdit DisplayFormatString="c">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="CargoAutomatico" VisibleIndex="6"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="PermiteCambioPrecio" VisibleIndex="7">
                <PropertiesCheckEdit ValueGrayed="False"></PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataComboBoxColumn FieldName="FrecuenciaPago" VisibleIndex="5">
                <PropertiesComboBox DataSourceID="SqlDSFrecuenciaPago" TextField="Descripcion" ValueField="Oid">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarMembrecias">
                <Items>
                    <dx:GridViewToolbarItem Command="New" Name="Nuevo" BeginGroup="True" Text="Nuevo">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Command="Edit" Name="Editar" BeginGroup="True" Text="Editar">
                          <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="Eliminar" BeginGroup="True" Text="Eliminar">
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
    <asp:SqlDataSource runat="server" ID="SqlDSMembrecias" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [OidClub], [Descripcion], [Costo], [FrecuenciaPago], [CargoAutomatico], [PermiteCambioPrecio] FROM [ClubMembresias] WHERE ([OidClub] = @OidClub)" DeleteCommand="DELETE FROM [dbo].[ClubMembresias]
 WHERE Oid = @Oid"
        InsertCommand="INSERT INTO [dbo].[ClubMembresias]
           ([OidClub]
           ,[Descripcion]
           ,[Costo]
           ,[FrecuenciaPago]
           ,[CargoAutomatico]
           ,[PermiteCambioPrecio])
     VALUES
           (@OidClub
           ,@Descripcion
           ,@Costo
           ,@FrecuenciaPago
           ,@CargoAutomatico
           ,@PermiteCambioPrecio)"
        UpdateCommand="UPDATE [dbo].[ClubMembresias]
   SET [Descripcion] = @Descripcion
      ,[Costo] = @Costo
      ,[FrecuenciaPago] = @FrecuenciaPago
      ,[CargoAutomatico] = @CargoAutomatico
      ,[PermiteCambioPrecio] = @PermiteCambioPrecio 
 WHERE Oid = @Oid">
        <DeleteParameters>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OidClub"></asp:Parameter>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="Costo"></asp:Parameter>
            <asp:Parameter Name="FrecuenciaPago"></asp:Parameter>
            <asp:Parameter Name="CargoAutomatico"></asp:Parameter>
            <asp:Parameter Name="PermiteCambioPrecio"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion"></asp:Parameter>
            <asp:Parameter Name="Costo"></asp:Parameter>
            <asp:Parameter Name="FrecuenciaPago"></asp:Parameter>
            <asp:Parameter Name="CargoAutomatico"></asp:Parameter>
            <asp:Parameter Name="PermiteCambioPrecio"></asp:Parameter>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSFrecuenciaPago" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [Descripcion] FROM [CatFrecuenciasPago]"></asp:SqlDataSource>

    <dx:ASPxPopupControl ID="popupEliminarMembresia" 
         ClientInstanceName="popupEliminarMembresia" runat="server"  Modal="true"
        ShowFooter="true"
        CloseOnEscape="true" HeaderText="Eliminar Membresía"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter">
         <ContentStyle Paddings-Padding="0" Paddings-PaddingTop="12" />
         <HeaderStyle BackColor="#FF3547" Font-Bold="false" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MaxWidth="700px" />
          <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <br />
                <div class="row">
                    <div class="col-12">
                        <h5 style="padding: 10px">¿Está seguro de continuar con la eliminación de la membresía?</h5>
                        <h5 style="padding: 10px">En caso de estar ligada a un alumno, su cargo automático será deshabilitado y los alumnos ligados serán suspendidos</h5>
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
                                            <dx:ASPxButton ID="btnEliminarmembresia" AutoPostBack="false" runat="server"  Text="Confirmar" Width="100"  BackColor="#FF3547" CssClass="btn-danger" OnClick="btnEliminarmembresia_Click">                                                
                                                <ClientSideEvents Click="ConfirmacionEliminarMembresia" />
                                                <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                                            </dx:ASPxButton>
                                            <dx:ASPxButton ID="btnCancelar" runat="server" Text="Cancelar" AutoPostBack="false" Width="100" BackColor="White" ForeColor="#FF3547" CssClass="btn-danger">
                                                 <ClientSideEvents Click="CancelarEliminarMembresia" />
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
    <br />
     <br />
    <br />


</asp:Content>
