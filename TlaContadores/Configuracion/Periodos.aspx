<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Periodos.aspx.cs" Inherits="CreandoProductividad.Configuracion.Periodos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0" style="color: #000080"><b>Periodos de evaluación</b></h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item">Configuración</li>
                        <li class="breadcrumb-item active">Periodos de evaluación</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <dx:ASPxGridView ID="gridPeriodos" ClientInstanceName="gridPeriodos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSPeriodos" KeyFieldName="OIDPeriodoEvaluacion" Width="100%">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsBehavior AllowFocusedRow="True" />
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" Modal="True" ShowShadow="True" VerticalAlign="WindowCenter">
            </EditForm>
        </SettingsPopup>
        <SettingsSearchPanel Visible="True" />

        <StylesPopup>
            <EditForm>
                <Header BackColor="Navy" ForeColor="White">
                </Header>
            </EditForm>
        </StylesPopup>

<EditFormLayoutProperties ColCount="2" ColumnCount="2">
    <Items>
        <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="Periodo" ColumnSpan="2">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaInicio">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="FechaFinal">
        </dx:GridViewColumnLayoutItem>
        <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Activo">
        </dx:GridViewColumnLayoutItem>
        <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right">
        </dx:EditModeCommandLayoutItem>
    </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDPeriodoEvaluacion" ReadOnly="True" Visible="False" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Periodo" VisibleIndex="2">
                <PropertiesTextEdit>
                    <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                        <RequiredField ErrorText="Este campo es obligatorio" IsRequired="True" />
                    </ValidationSettings>
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaInicio" VisibleIndex="3">
                <PropertiesDateEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField ErrorText="Este campo es obligatorio" IsRequired="True" />
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaFinal" VisibleIndex="4">
                <PropertiesDateEdit>
                    <ValidationSettings Display="Dynamic">
                        <RequiredField ErrorText="Este campo es obligatorio" IsRequired="True" />
                    </ValidationSettings>
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="5">
                <PropertiesCheckEdit ValueGrayed="False">
                </PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right">
                <Items>
                    <dx:GridViewToolbarItem BeginGroup="True" Command="New" Name="Nuevo" Text="Nuevo">
                        <Image Height="32px" Url="~/Content/icons/new.png" UrlChecked="~/Content/icons/new.png" UrlDisabled="~/Content/icons/new.png" UrlHottracked="~/Content/icons/new.png" UrlSelected="~/Content/icons/new.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Command="Edit" Name="Editar" Text="Editar">
                        <Image Height="32px" Url="~/Content/icons/edit.png" UrlChecked="~/Content/icons/edit.png" UrlDisabled="~/Content/icons/edit.png" UrlHottracked="~/Content/icons/edit.png" UrlSelected="~/Content/icons/edit.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem BeginGroup="True" Name="Eliminar" Text="Eliminar">
                        <Image Height="32px" Url="~/Content/icons/delete.png" UrlChecked="~/Content/icons/delete.png" UrlDisabled="~/Content/icons/delete.png" UrlHottracked="~/Content/icons/delete.png" UrlSelected="~/Content/icons/delete.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" />
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
    <asp:SqlDataSource ID="SqlDSPeriodos" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" DeleteCommand="DELETE FROM [CatNOMPeriodoEvaluacion] WHERE [OIDPeriodoEvaluacion] = @OIDPeriodoEvaluacion" InsertCommand="INSERT INTO [CatNOMPeriodoEvaluacion] ([Periodo], [FechaInicio], [FechaFinal], [Activo]) VALUES (@Periodo, @FechaInicio, @FechaFinal, @Activo)" SelectCommand="SELECT [OIDPeriodoEvaluacion], [Periodo], [FechaInicio], [FechaFinal], [Activo] FROM [CatNOMPeriodoEvaluacion]" UpdateCommand="UPDATE [CatNOMPeriodoEvaluacion] SET [Periodo] = @Periodo, [FechaInicio] = @FechaInicio, [FechaFinal] = @FechaFinal, [Activo] = @Activo WHERE [OIDPeriodoEvaluacion] = @OIDPeriodoEvaluacion">
        <DeleteParameters>
            <asp:Parameter Name="OIDPeriodoEvaluacion" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Periodo" />
            <asp:Parameter Name="FechaInicio" />
            <asp:Parameter Name="FechaFinal" />
            <asp:Parameter Name="Activo" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Periodo" />
            <asp:Parameter Name="FechaInicio" />
            <asp:Parameter Name="FechaFinal"  />
            <asp:Parameter Name="Activo"  />
            <asp:Parameter Name="OIDPeriodoEvaluacion"  />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
