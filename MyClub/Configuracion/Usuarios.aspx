<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Sistema_web.Configuracion.Usuarios" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Usuarios</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 col-lg-10 col-md-6">
                    <h3 class="m-0" style="padding: 15px"><b>Alumnos</b></h3>
                </div>

            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView ID="gridUsuarios" ClientInstanceName="gridUsuarios" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSUsuarios" KeyFieldName="OIDUsuario">
        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDUsuario" VisibleIndex="0" ReadOnly="True">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="1"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDRol" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaAlta" VisibleIndex="5"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRenovacon" VisibleIndex="6"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaSuspension" VisibleIndex="7"></dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="8"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="9"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ApePaterno" VisibleIndex="10"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ApeMaterno" VisibleIndex="11"></dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSUsuarios" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDUsuario], [OIDEmpresa], [OIDRol], [Correo], [Telefono],  [FechaAlta], [FechaRenovacon], [FechaSuspension], [Activo], [Nombre], [ApePaterno], [ApeMaterno] FROM [OpeUsuarios] WHERE ([OIDEmpresa] = @OIDEmpresa) ORDER BY [OIDUsuario] DESC" DeleteCommand="DELETE FROM [dbo].[OpeUsuarios]
  WHERE OIDUsuario = @OIDUsuario"
        InsertCommand="INSERT INTO [dbo].[OpeUsuarios]
           ([OIDEmpresa]
           ,[OIDRol]
           ,[Correo]
           ,[Telefono]
           ,[FechaAlta]
           ,[FechaRenovacon]
           ,[FechaSuspension]
           ,[Activo]
           ,[Nombre]
           ,[ApePaterno]
           ,[ApeMaterno])
     VALUES
           (OIDEmpresa, 
           OIDRol, 
           Correo, 
           Telefono, 
           FechaAlta, 
           FechaRenovacon, 
           FechaSuspension, 
           Activo, 
           Nombre, 
           ApePaterno, 
           ApeMaterno)"
        UpdateCommand="UPDATE [dbo].[OpeUsuarios]
   SET [OIDRol] = @OIDRol
      ,[Correo] = @Correo		
      ,[Telefono] = @Telefono	
      ,[FechaAlta] = @FechaAlta
      ,[FechaRenovacon] = @FechaRenovacon  
      ,[FechaSuspension] = @FechaSuspension
      ,[Activo] = @Activo
      ,[Nombre] = @Nombre
      ,[ApePaterno] = @ApePaterno
      ,[ApeMaterno] = @ApeMaterno
 WHERE OIDUsuario = @OIDUsuario">
        <DeleteParameters>
            <asp:Parameter Name="OIDUsuario"></asp:Parameter>
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OIDRol"></asp:Parameter>
            <asp:Parameter Name="Correo"></asp:Parameter>
            <asp:Parameter Name="Telefono"></asp:Parameter>
            <asp:Parameter Name="FechaAlta"></asp:Parameter>
            <asp:Parameter Name="FechaRenovacon"></asp:Parameter>
            <asp:Parameter Name="FechaSuspension"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="ApePaterno"></asp:Parameter>
            <asp:Parameter Name="ApeMaterno"></asp:Parameter>
            <asp:Parameter Name="OIDUsuario"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
      <br />
     <br />
    <br />
</asp:Content>
