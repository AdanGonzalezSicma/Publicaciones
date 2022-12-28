<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NOMEncuestasPreguntas.aspx.cs" Inherits="CreandoProductividad.Catalogos.NOMEncuestasPreguntas" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenPreguntaID" ClientInstanceName="hiddenPreguntaID" runat="server"></dx:ASPxHiddenField>

    <!-- SCRIPT -->
    <script>

        //TOOLTIPS
        var visibleIndex;
        function OnToolbarItemClick(s, e) {
            if (e.item.name == "EliminarPregunta") {
                visibleIndex = gridPreguntas.GetFocusedRowIndex();
                gridPreguntas.GetRowValues(visibleIndex, 'OIDPregunta;Activo', fncEliminarPregunta);
            }
        }

        function fncEliminarPregunta(value) {
            var OIDPregunta = value[0];

            if (OIDPregunta != 0) {
                hiddenPreguntaID.Set("OIDPregunta", OIDPregunta);
                PopupEliminarPregunta.Show();
            } else {
                PopupError.Show();
            }
        }

    </script>

    <!-- TITULO MODULO -->
    <div>
        <h3 style="text-align: center; color:#000080">
            <b>Preguntas</b>
        </h3>
       <br />
    </div>

    <!-- GRID PREGUNTAS -->
    <dx:ASPxGridView
        ID="gridPreguntas"
        ClientInstanceName="gridPreguntas"
        runat="server"
        AutoGenerateColumns="False"
        DataSourceID="SqlDSPreguntas"
        KeyFieldName="OIDPregunta"
        Width="100%" OnInitNewRow="gridPreguntas_InitNewRow">
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
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True"></EditForm>
        </SettingsPopup>

        <StylesPopup>
            <EditForm>
                <Header BackColor="#007BFF" Border-BorderColor="#007BFF" Border-BorderStyle="Solid" ForeColor="White">
                </Header>
            </EditForm>
        </StylesPopup>

        <EditFormLayoutProperties ColCount="4" ColumnCount="4">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion1" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion2" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Descripcion3" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="NumPregunta" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Orden" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Evento" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Respuestas" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="TieneDependencia" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="PreguntasDependiente" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="RespuestaDependiente" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="4" ColumnSpan="4"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="4" ColumnSpan="4" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn VisibleIndex="0" FieldName="OIDPregunta" ReadOnly="True" Caption="OIDPregunta" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDDominio" VisibleIndex="3" Caption="OIDDominio" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDCategoria" VisibleIndex="5" Caption="OIDCategoria" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Descripcion2" VisibleIndex="6" Caption="Categor&#237;a"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDDimension" VisibleIndex="8" Caption="OIDimension" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NumPregunta" VisibleIndex="10" Caption="No. Pregunta"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Orden" VisibleIndex="11"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Evento" VisibleIndex="12"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TipoRespuesta" VisibleIndex="13" Caption="OIDTipoRespuesta" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="TieneDependencia" ShowInCustomizationForm="True" Caption="Tiene dependencia" VisibleIndex="15"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="PreguntasDependiente" VisibleIndex="16" Caption="Preguntas dependientes"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RespuestaDependiente" VisibleIndex="17" Caption="Respuesta dependiente"></dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="18"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="2" Caption="Cuestionario"></dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="Descripcion1" Caption="Dominio" VisibleIndex="4">
                <PropertiesComboBox DataSourceID="SqlDSDDLDominios" TextField="Descripcion" ValueField="OIDDominio"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>

            <dx:GridViewDataComboBoxColumn FieldName="Descripcion2" Caption="Categor&#237;a" VisibleIndex="7">
                <PropertiesComboBox DataSourceID="SqlDSDDLCategorias" TextField="Descripcion" ValueField="OIDCategoria"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="Descripcion3" Caption="Dimensi&#243;n" VisibleIndex="9">
                <PropertiesComboBox DataSourceID="SqlDSDDLDimensiones" TextField="Descripcion" ValueField="OIDDimension"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="Respuestas" Caption="Respuestas" VisibleIndex="14">
                <PropertiesComboBox DataSourceID="SqlDSDDLTipoRespuestas" TextField="Descripcion" ValueField="OIDTipoRespuesta"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="19"></dx:GridViewDataCheckColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right">
                <Items>
                    <dx:GridViewToolbarItem Text="Nuevo" Command="New" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/new.png" UrlDisabled="~/Content/icons/new.png" UrlHottracked="~/Content/icons/new.png" UrlSelected="~/Content/icons/new.png" Height="32px" Width="32px" Url="~/Content/icons/new.png"></Image>
                        <ItemStyle Border-BorderColor="#007BFF" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Text="Editar" Command="Edit" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/edit.png" UrlDisabled="~/Content/icons/edit.png" UrlHottracked="~/Content/icons/edit.png" UrlSelected="~/Content/icons/edit.png" Height="32px" Width="32px" Url="~/Content/icons/edit.png"></Image>
                        <ItemStyle Border-BorderColor="#007BFF" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Text="Eliminar" Name="EliminarPregunta" BeginGroup="True">
                        <Image UrlChecked="~/Content/icons/delete.png" UrlDisabled="~/Content/icons/delete.png" UrlHottracked="~/Content/icons/delete.png" UrlSelected="~/Content/icons/delete.png" Height="32px" Width="32px" Url="~/Content/icons/delete.png"></Image>
                        <ItemStyle Border-BorderColor="#007BFF" Border-BorderStyle="Solid" />
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

    </dx:ASPxGridView>

    <!-- POPUP ELIMINAR -->
    <dx:ASPxPopupControl
        ID="PopupEliminarPregunta"
        ClientInstanceName="PopupEliminarPregunta"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h4>¿Desea eliminar el registro seleccionado?</h4>
                <br />
                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminarPregunta" OnClick="btnEliminarPregunta_Click" runat="server" Text="Eliminar" BackColor="#FF3547">
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnCerrarEliminar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547">
                        <ClientSideEvents Click="function (s, e) { PopupEliminarPregunta.Hide(); }" />
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

    <!-- SQLDS PREGUNTAS | GRID PRINCIPAL -->
    <asp:SqlDataSource ID="SqlDSPreguntas" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spListadoNOMEncuestasPreguntas"
        InsertCommand="spCrearNOMEncuestasPreguntas"
        UpdateCommand="spActualizarNOMEncuestasPreguntas" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="OIDCuestionario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDDominio" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDCategoria" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDDimension" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="NumPregunta" Type="String"></asp:Parameter>
            <asp:Parameter Name="Orden" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Evento" Type="String"></asp:Parameter>
            <asp:Parameter Name="TipoRespuesta" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="TieneDependencia" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="PreguntasDependiente" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="RespuestaDependiente" Type="String"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OIDCuestionario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDDominio" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OIDCategoria" Type="Int64"></asp:Parameter>
            <asp:Parameter Name="OIDDimension" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="NumPregunta" Type="String"></asp:Parameter>
            <asp:Parameter Name="Orden" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Evento" Type="String"></asp:Parameter>
            <asp:Parameter Name="TipoRespuesta" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="TieneDependencia" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="PreguntasDependiente" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="RespuestaDependiente" Type="String"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="OIDPregunta" Type="Int64"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- SQLDS DDL CATEGORIAS -->
    <asp:SqlDataSource ID="SqlDSDDLCategorias" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLCategorias" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS DDL DIMENSIONES -->
    <asp:SqlDataSource ID="SqlDSDDLDimensiones" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLDimensiones" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS DDL DOMINIOS -->
    <asp:SqlDataSource ID="SqlDSDDLDominios" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLDominios" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <!-- SQLDS DDL TIPO RESPUESTAS -->
    <asp:SqlDataSource ID="SqlDSDDLTipoRespuestas" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="spDDLTipoRespuestas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

</asp:Content>