<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cargos.aspx.cs" Inherits="Sistema_web.Membresias.Pagos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
       window.onload = function active() {
            var act = document.getElementById("Membresias");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
    
        }
   </script>
              <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Cargos</b></h3>
                </div>
            
            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView ID="gridAlumnosCargos" ClientInstanceName="gridAlumnosCargos" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSPagos" KeyFieldName="Oid" Width="100%">
<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>
        <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>
        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

        <SettingsSearchPanel Visible="True"></SettingsSearchPanel>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>

        <Columns>
            <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn FieldName="Descripcion" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellidos" VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="5"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Concepto" VisibleIndex="6"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Importe" VisibleIndex="7">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="PagoVerificado" VisibleIndex="8"></dx:GridViewDataCheckColumn>
        </Columns>
        <GroupSummary>
            <dx:ASPxSummaryItem SummaryType="Sum" FieldName="Importe" DisplayFormat="c"></dx:ASPxSummaryItem>
        </GroupSummary>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSPagos" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="
select CargosAbonos.Oid,CargosAbonos.OidClub,membrecia.Descripcion, alumnos.Nombre, alumnos.Apellidos, CargosAbonos.FechaRegistro,CargosAbonos.Concepto, CargosAbonos.Importe, CargosAbonos.PagoVerificado  from 
(SELECT * FROM [MyClub].[dbo].[ClubMembresiasCargosAbonos]) as CargosAbonos
left join
(SELECT * FROM [MyClub].[dbo].[ClubMembresiasAlumnos]) as membreciasalumnos
on CargosAbonos.OidMembresiaAlumno = membreciasalumnos.Oid
left join
(SELECT * FROM [MyClub].[dbo].[ClubAlumnos])  as alumnos
on
membreciasalumnos.OidAlumno = alumnos.OIDAlumnos
left join
(SELECT * FROM [MyClub].[dbo].[ClubMembresias]) as membrecia
on CargosAbonos.OidMembresiaAlumno = membrecia.Oid

where CargosAbonos.OidClub = @OIDClub">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
      <br />
     <br />
    <br />
</asp:Content>
