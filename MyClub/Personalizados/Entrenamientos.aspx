<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Entrenamientos.aspx.cs" Inherits="Sistema_web.Personalizados.Entrenamientos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenEntrenador" ClientInstanceName="hiddenEntrenador" runat="server"></dx:ASPxHiddenField>
    <script>
         var visibleIndex;
        var idEntrenador;
        function OnToolbarItemClick(s,e) {
            if (e.item.name == "btnEliminarEntrenamiento") {
                visibleIndex = gridEntrenamientos.GetFocusedRowIndex();
                idEntrenador = gridEntrenamientos.GetRowKey(visibleIndex);
                hiddenEntrenador.Set("OIDUsuario", idEntrenador)
                popupEliminar.Show();
            }
            if (e.item.name == "btnEntrenadoresAsignados") {
                visibleIndex = gridEntrenamientos.GetFocusedRowIndex();
                idEntrenador = gridEntrenamientos.GetRowKey(visibleIndex);
                hiddenEntrenador.Set("OIDUsuario", idEntrenador)
                gridEntrenadoesAsignados.Refresh();
                popupEntrenadoesAsignados.Show();
            }
            if (e.item.name == "btnEliminarEntrenadoresAsignados") {
                popupEliminarEntrenador.Show();
            }
        }
        function fncOcultarLograrEliminarEntrenador() {
              var index = gridEntrenadoesAsignados.GetFocusedRowIndex();
        gridEntrenadoesAsignados.DeleteRow(index);
            popupEliminarEntrenador.Hide();
        }
        function fncOcultarEliminarEntrenador() {
            popupEliminarEntrenador.Hide();
        }
        function fncOcultarLograrEliminar() {
            LoadingSiteMaster.Show();
            popupEliminarEntrenador.Hide();
        }
        function fncOcultarEliminar() {
            popupEliminar.Hide();
        }
         window.onload = function active() {
            var act = document.getElementById("EntrenamientosP");
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
                    <h3 class="m-0" style="padding: 15px"><b>Entrenamientos</b></h3>
                </div>            
            </div>
        </div>
    </div>
    <br />
    <%--Loeading Panels--%>
    <dx:ASPxGridView ID="gridEntrenamientos" ClientInstanceName="gridEntrenamientos" runat="server" DataSourceID="SqlDSEntrenamientosPersonalizados" AutoGenerateColumns="False" KeyFieldName="Oid" OnInitNewRow="gridEntrenamientos_InitNewRow" OnRowInserting="gridEntrenamientos_RowInserting" Width="100%">
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick"></ClientSideEvents>

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1">
    <Items>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Nombre">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="NumSesiones">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="TipoPreparacion">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Instrucciones">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Objetivo">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="CostoGeneral">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="CostoAcademia">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="CostoGrupos">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="CargoAutomativo">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="PermiteCambioPrecio">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Activo">
        </dx:GridViewColumnLayoutItem>
    </Items>
    </AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
          <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" />
            </EditForm>
        </SettingsPopup>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Nombre" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Instrucciones" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Objetivo" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="TipoPreparacion" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="CostoGeneral" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="CostoAcademia" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="CostoGrupos" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="NumSesiones" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="CargoAutomativo" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="PermiteCambioPrecio" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="3">
                <PropertiesTextEdit NullDisplayText="Nombre del entrenamiento" NullText="Nombre del entrenamiento">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumSesiones" VisibleIndex="4" Caption="N&#250;m. Sesiones">
                <PropertiesTextEdit NullText="N&#250;mero Sesiones">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CostoGeneral" VisibleIndex="8">
                <PropertiesTextEdit DisplayFormatString="c" DisplayFormatInEditMode="True" NullText="$0.00">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CostoAcademia" VisibleIndex="9">
                <PropertiesTextEdit DisplayFormatString="c" DisplayFormatInEditMode="True" NullText="$0.00">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CostoGrupos" VisibleIndex="10">
                <PropertiesTextEdit DisplayFormatString="c" DisplayFormatInEditMode="True" NullText="$0.00">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="CargoAutomativo" VisibleIndex="11">
                <PropertiesCheckEdit ToggleSwitchDisplayMode="Always" ValueGrayed="False"></PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="PermiteCambioPrecio" VisibleIndex="12">
                <PropertiesCheckEdit ToggleSwitchDisplayMode="Always" ValueGrayed="False"></PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="13">
                <PropertiesCheckEdit ToggleSwitchDisplayMode="Always" ValueGrayed="False"></PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataMemoColumn FieldName="TipoPreparacion" VisibleIndex="5" Caption="Tipo de Preparaci&#243;n">
                <PropertiesMemoEdit Rows="3" NullDisplayText="Tipo de preparaci&#243;n" NullText="Tipo de preparaci&#243;n">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="Instrucciones" VisibleIndex="6">
                <PropertiesMemoEdit Rows="3" NullDisplayText="Instructores Participantes" NullText="Instructores Participantes">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn FieldName="Objetivo" VisibleIndex="7" PropertiesMemoEdit-NullDisplayText="Objetivos que se deben alcanzar">
                <PropertiesMemoEdit Rows="3" NullDisplayText="Objetivos que se deben alcanza" NullText="Objetivos que se deben alcanza">
                    <ValidationSettings Display="Dynamic">
                        <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                    </ValidationSettings>
                </PropertiesMemoEdit>
            </dx:GridViewDataMemoColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarEntrenamiento">
                <Items>
                    <dx:GridViewToolbarItem BeginGroup="true" Command="New" Name="btnNuevoEntrenamiento" Text="Nuevo">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="true" Command="Edit" Name="btnEditarEntrenamiento" Text="Editar">
                       <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="true" Name="btnEliminarEntrenamiento" Text="Eliminar">
                        <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="true" Name="btnEntrenadoresAsignados" Text="Entrenadores asignados">
                        <Image Height="32px" Url="~/Content/iconos/datosgenerales.png" UrlChecked="~/Content/iconos/datosgenerales.png" UrlDisabled="~/Content/iconos/datosgenerales.png" UrlHottracked="~/Content/iconos/datosgenerales.png" UrlSelected="~/Content/iconos/datosgenerales.png" Width="32px"></Image>
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
    <dx:ASPxPopupControl
        ID="popupEliminar"
        ClientInstanceName="popupEliminar"
        runat="server" Width="650px"
        AllowDragging="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Eliminar Entrenamiento Personalizado">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderStyle BackColor="#FF3547" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <p style="font-size: 18px">¿Está seguro que desea eliminar este Entrenamiento Personalizado?</p>
                <br />

                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" BackColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="fncOcultarLograrEliminar" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="4px" />
                    </dx:ASPxButton>
                    <button type="button" class="btn btn-danger" onclick="fncOcultarEliminar()" style="background-color: white; border: 3px solid #FF3547; color: #FF3547">Cancelar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl
        ID="popupEliminarEntrenador"
        ClientInstanceName="popupEliminarEntrenador"
        runat="server" Width="650px"
        AllowDragging="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Eliminar Entrenamiento Personalizado">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderStyle BackColor="#FF3547" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <p style="font-size: 18px">¿Está seguro que desea eliminar este Entrenador?</p>
                <br />

                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminarEntrenador" runat="server" Text="Eliminar"  AutoPostBack="false" BackColor="#FF3547" CssClass="btn-danger">
                        <ClientSideEvents Click="fncOcultarLograrEliminarEntrenador" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="4px" />
                    </dx:ASPxButton>
                    <button type="button" class="btn btn-danger" onclick="fncOcultarEliminarEntrenador()" style="background-color: white; border: 3px solid #FF3547; color: #FF3547">Cancelar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popupEntrenadoesAsignados" ClientInstanceName="popupEntrenadoesAsignados" runat="server" Width="650px"
        AllowDragging="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Entrenadores asignados">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
       
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxGridView OnRowInserting="gridEntrenadoesAsignados_RowInserting"  ID="gridEntrenadoesAsignados" ClientInstanceName="gridEntrenadoesAsignados" runat="server" Width="100%" DataSourceID="SqlDSEntrenadores" AutoGenerateColumns="False" KeyFieldName="OIDPersonalizadosEntrenadores">
                    <SettingsEditing Mode="PopupEditForm"></SettingsEditing>
                    <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
                    <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>
                     <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
                    <SettingsPopup>
                        <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True"></EditForm>
                    </SettingsPopup>

                    <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

                    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColumnName="OIDEntrenador" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDPersonalizadosEntrenadores" VisibleIndex="0" ReadOnly="True" Visible="False">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="OIDEntrenador" Caption="Entrenadores" VisibleIndex="3">
                            <PropertiesComboBox DataSourceID="SqlDSEntrenadoresP" TextField="Nombre" ValueField="Oid" NullDisplayText="Seleccione un entrenador" NullText="Seleccione un entrenador">
                                <ValidationSettings Display="Dynamic">
                                    <RequiredField IsRequired="True" ErrorText="Este campo es obligatorio"></RequiredField>
                                </ValidationSettings>
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>



                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolbarEntrenadores" EnableAdaptivity="True">
                            <Items>
                                <dx:GridViewToolbarItem Name="btnNuevo" BeginGroup="True" Text="Nuevo" Command="New">
                                    <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="btnEditar" BeginGroup="True" Text="Editar" Command="Edit">
                                    <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="btnEliminarEntrenadoresAsignados" BeginGroup="True" Text="Eliminar" Command="Custom">
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
                <asp:SqlDataSource runat="server" ID="SqlDSEntrenadores" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDPersonalizadosEntrenadores]
      ,[OIDClub]
      ,[OIDPersonalizados]
      ,[OIDEntrenador] FROM [ClubPersonalizadosEntrenadores] WHERE (([OIDClub] = @OIDClub) AND ([OIDPersonalizados] = @OIDPersonalizados))"
                    InsertCommand="INSERT INTO [dbo].[ClubPersonalizadosEntrenadores]
           ([OIDClub]
           ,[OIDPersonalizados]
           ,[OIDEntrenador])
     VALUES
           (@OIDClub
           ,@OIDPersonalizados
           ,@OIDEntrenador)"
                    UpdateCommand="UPDATE [dbo].[ClubPersonalizadosEntrenadores]
   SET [OIDEntrenador] = @OIDEntrenador
 WHERE OIDPersonalizadosEntrenadores = @OIDPersonalizadosEntrenadores"
                    DeleteCommand="DELETE FROM [dbo].[ClubPersonalizadosEntrenadores] where OIDPersonalizadosEntrenadores = @OIDPersonalizadosEntrenadores">
                    <DeleteParameters>
                        <asp:Parameter Name="OIDPersonalizadosEntrenadores"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OIDClub"></asp:Parameter>
                        <asp:Parameter Name="OIDPersonalizados"></asp:Parameter>
                        <asp:Parameter Name="OIDEntrenador"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub" Type="String"></asp:SessionParameter>
                        <asp:ControlParameter ControlID="hiddenEntrenador" Name="OIDPersonalizados" PropertyName="['OIDUsuario']" Type="Int32" DefaultValue="0" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="OIDEntrenador"></asp:Parameter>
                        <asp:Parameter Name="OIDPersonalizadosEntrenadores"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <asp:SqlDataSource ID="SqlDSEntrenadoresP" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [Nombre] FROM [ClubEntrenadores] WHERE (([Activo] = @Activo) AND ([OidCLub] = @OidCLub) AND ([InstructorDePersonalizado] = @InstructorDePersonalizado))">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidCLub" Type="Int32"></asp:SessionParameter>
            <asp:Parameter DefaultValue="true" Name="InstructorDePersonalizado" Type="Boolean"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource runat="server" ID="SqlDSEntrenamientosPersonalizados" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [OidClub], [Nombre], [TipoPreparacion], [NumSesiones], [Instrucciones], [Objetivo], [CostoGeneral], [CostoAcademia], [CostoGrupos], [CargoAutomativo], [PermiteCambioPrecio], [Activo] FROM [ClubPersonalizados] WHERE ([OidClub] = @OidClub) ORDER BY [Oid],[Activo] DESC" DeleteCommand="DELETE FROM [dbo].[ClubPersonalizados]
      WHERE Oid = @Oid"
        InsertCommand="INSERT INTO [dbo].[ClubPersonalizados]
           ([OidClub]
           ,[Nombre]
           ,[TipoPreparacion]
           ,[NumSesiones]
           ,[Instrucciones]
           ,[Objetivo]
           ,[CostoGeneral]
           ,[CostoAcademia]
           ,[CostoGrupos]
           ,[CargoAutomativo]
           ,[PermiteCambioPrecio]
           ,[Activo])
     VALUES
           (@OidClub
           ,@Nombre
           ,@TipoPreparacion
           ,@NumSesiones
           ,@Instrucciones
           ,@Objetivo
           ,@CostoGeneral
           ,@CostoAcademia
           ,@CostoGrupos
           ,@CargoAutomativo
           ,@PermiteCambioPrecio
           ,@Activo)"
        UpdateCommand="UPDATE [dbo].[ClubPersonalizados]
   SET [Nombre] = @Nombre
      ,[TipoPreparacion] = @TipoPreparacion
      ,[NumSesiones] = @NumSesiones
      ,[Instrucciones] = @Instrucciones
      ,[Objetivo] = @Objetivo
      ,[CostoGeneral] = @CostoGeneral
      ,[CostoAcademia] = @CostoAcademia
      ,[CostoGrupos] = @CostoGrupos
      ,[CargoAutomativo] = @CargoAutomativo
      ,[PermiteCambioPrecio] = @PermiteCambioPrecio
      ,[Activo] = @Activo
 WHERE Oid = @Oid">
        <DeleteParameters>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OidClub"></asp:Parameter>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="TipoPreparacion"></asp:Parameter>
            <asp:Parameter Name="NumSesiones"></asp:Parameter>
            <asp:Parameter Name="Instrucciones"></asp:Parameter>
            <asp:Parameter Name="Objetivo"></asp:Parameter>
            <asp:Parameter Name="CostoGeneral"></asp:Parameter>
            <asp:Parameter Name="CostoAcademia"></asp:Parameter>
            <asp:Parameter Name="CostoGrupos"></asp:Parameter>
            <asp:Parameter Name="CargoAutomativo"></asp:Parameter>
            <asp:Parameter Name="PermiteCambioPrecio"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="TipoPreparacion"></asp:Parameter>
            <asp:Parameter Name="NumSesiones"></asp:Parameter>
            <asp:Parameter Name="Instrucciones"></asp:Parameter>
            <asp:Parameter Name="Objetivo"></asp:Parameter>
            <asp:Parameter Name="CostoGeneral"></asp:Parameter>
            <asp:Parameter Name="CostoAcademia"></asp:Parameter>
            <asp:Parameter Name="CostoGrupos"></asp:Parameter>
            <asp:Parameter Name="CargoAutomativo"></asp:Parameter>
            <asp:Parameter Name="PermiteCambioPrecio"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
     <br />
     <br />
    <br />
</asp:Content>
