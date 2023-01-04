<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empresas.aspx.cs" Inherits="Sistema_web.Configuracion.Empresas" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Empresas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenEmpresa" ClientInstanceName="hiddenEmpresa" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenCursosVisualizaciones" ClientInstanceName="hiddenCursosVisualizaciones" runat="server"></dx:ASPxHiddenField>>
    <dx:ASPxGridView 
        ID="gridEmpresas" 
        ClientInstanceName="gridEmpresas" 
        runat="server" 
        AutoGenerateColumns="False" 
        DataSourceID="SqlDSEmpresas" 
        KeyFieldName="OIDEmpresa" 
        Width="100%">
        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0" Visible="False"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CodigoEmpresa" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RFC" VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="5"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelefonoMovil" VisibleIndex="6"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaAlta" VisibleIndex="7"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRenovacion" VisibleIndex="8"></dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Suspendido" VisibleIndex="9"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="SuspendidoFecha" VisibleIndex="10"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="SuspendidoMotivo" VisibleIndex="11"></dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Baja" VisibleIndex="12"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="BajaFecha" VisibleIndex="13"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="BajaMotivo" VisibleIndex="14"></dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarEmpresa">
                <Items>
                    <dx:GridViewToolbarItem Command="Edit" Visible="false" AdaptiveText="Editar" BeginGroup="True" Name="Editar" Text="Editar">
                        <Image Height="32px" Url="~/Content/iconos/editar-icono.png" UrlChecked="~/Content/iconos/editar-icono.png" UrlDisabled="~/Content/iconos/editar-icono.png" UrlHottracked="~/Content/iconos/editar-icono.png" UrlSelected="~/Content/iconos/editar-icono.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Baja" BeginGroup="True" Name="Baja" Text="Baja">
                        <Image Height="32px" Url="~/Content/iconos/cancelDocument-v2.png" UrlChecked="~/Content/iconos/cancelDocument-v2.png" UrlDisabled="~/Content/iconos/cancelDocument-v2.png" UrlHottracked="~/Content/iconos/cancelDocument-v2.png" UrlSelected="~/Content/iconos/cancelDocument-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Suspender" BeginGroup="True" Name="Suspender" Text="Suspender">
                        <Image Height="32px" Url="~/Content/iconos/cancelDocument-v2.png" UrlChecked="~/Content/iconos/cancelDocument-v2.png" UrlDisabled="~/Content/iconos/cancelDocument-v2.png" UrlHottracked="~/Content/iconos/cancelDocument-v2.png" UrlSelected="~/Content/iconos/cancelDocument-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Módulos" BeginGroup="True" Name="Modulos" Text="Permisos">
                        <Image Height="32px" Url="~/Content/iconos/Module-v2.png" UrlChecked="~/Content/iconos/Module-v2.png" UrlDisabled="~/Content/iconos/Module-v2.png" UrlHottracked="~/Content/iconos/Module-v2.png" UrlSelected="~/Content/iconos/Module-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Conceptos de cobro" Visible="false" BeginGroup="True" Name="Cobro" Text="Conceptos de cobro">
                        <Image Height="32px" Url="~/Content/iconos/Bill-v2.png" UrlChecked="~/Content/iconos/Bill-v2.png" UrlDisabled="~/Content/iconos/Bill-v2.png" UrlHottracked="~/Content/iconos/Bill-v2.png" UrlSelected="~/Content/iconos/Bill-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#F88017" Border-BorderColor="#F88017" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem AdaptiveText="Cursos y Talleres" Text="Cursos y Talleres" BeginGroup="True" Name="Cursos">
                        <Image Height="32px" Url="~/Content/iconos/Module-v2.png" UrlChecked="~/Content/iconos/Module-v2.png" UrlDisabled="~/Content/iconos/Module-v2.png" UrlHottracked="~/Content/iconos/Module-v2.png" UrlSelected="~/Content/iconos/Module-v2.png" Width="32px">
                        </Image>
                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                            </HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="Revicion" AdaptiveText="Ingresar como Empresa" BeginGroup="True" Text="Ingresar como Empresa">
                        <Image UrlChecked="~/Content/iconos/empresa-v2.png" UrlDisabled="~/Content/iconos/empresa-v2.png" UrlHottracked="~/Content/iconos/empresa-v2.png" UrlSelected="~/Content/iconos/empresa-v2.png" Height="32px" Width="32px" Url="~/Content/iconos/empresa-v2.png"></Image>

                        <ItemStyle Border-BorderColor="Navy" Border-BorderStyle="Solid" BackColor="Navy" ForeColor="White">
                            <HoverStyle Border-BorderColor="#F88017" Border-BorderStyle="Solid" BackColor="#F88017"></HoverStyle>
                        </ItemStyle>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSEmpresas" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="select clubs.OidClub,clubs.Nombre,clubs.CodigoClub,clubs.CorreoElectronico,clubs.TelMovil,clubs.FechaIngreso,
clubs.Suspendido,clubs.SuspendidoFecha,clubs.SuspendidoMotivo,clubs.Baja,clubs.FechaBaja,clubs.MotivoBaja from 
(select OidClub,Nombre,CodigoClub,CorreoElectronico,TelMovil,FechaIngreso,Suspendido,SuspendidoFecha,
SuspendidoMotivo,Baja,FechaBaja,MotivoBaja from ClubClubs) as clubs
left join 
(select * from OpeEmpresasAsignadas) as asignadas
on clubs.OidClub = asignadas.OIDEmpresaAsignada
where asignadas.OIDEmpresaNodriza = @OIDEmpresaNodriza
ORDER BY clubs.OidClub DESC">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDEmpresaNodriza"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
      <br />
     <br />
    <br />
</asp:Content>
