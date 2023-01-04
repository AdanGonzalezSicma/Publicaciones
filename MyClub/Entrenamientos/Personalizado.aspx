<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Personalizado.aspx.cs" Inherits="Sistema_web.Entrenamientos.Alumnos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Alumnos con entrenamiento personalizado</b></h3>
                </div>
            
            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView ID="gridAlumnosEntrenamientoPersonalizado" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSAlumnosEntrenamientoPersonalizado" KeyFieldName="OIDAlumnos" Width="100%">
<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDAlumnos" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellidos" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NIP" VisibleIndex="4" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidDisciplina" VisibleIndex="5" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaNacimiento" VisibleIndex="6"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CURP" VisibleIndex="7"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaIngreso" VisibleIndex="8"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="9"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="OidNivelDeIngreso" VisibleIndex="10"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidNivelDeseado" VisibleIndex="11"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidNivelUltimaEvaluacion" VisibleIndex="12"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaUltimaEvaluacion" VisibleIndex="13"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CorreoElectronico" VisibleIndex="14"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionEdicativa" VisibleIndex="15"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionTelefono" VisibleIndex="16"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="InstitucionEntrenador" VisibleIndex="17"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorNombre" VisibleIndex="18"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorTelFijo" VisibleIndex="19"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorTelMovil" VisibleIndex="20"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TutorCorreoElectronico" VisibleIndex="21"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ComentariosTutor" VisibleIndex="22"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="AnotacionesDisciplinaClub" VisibleIndex="23"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="AnotacionesGeneralesClub" VisibleIndex="24"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDTipoAlumno" VisibleIndex="25" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="26"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="Suspendido" VisibleIndex="27"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="FechaSuspendido" VisibleIndex="28"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="MotivoSuspendido" VisibleIndex="29"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TipoServicioMedico" VisibleIndex="30"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PolizaServicioMedico" VisibleIndex="31"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelMovil" VisibleIndex="32"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TelFijo" VisibleIndex="33"></dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSAlumnosEntrenamientoPersonalizado" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDAlumnos], [OidClub], [Nombre], [Apellidos], [NIP], [OidDisciplina], [FechaNacimiento], [ImagenActaNacimiento], [CURP], [ImagenCURP], [FechaIngreso], [FechaRegistro], [OidNivelDeIngreso], [OidNivelDeseado], [OidNivelUltimaEvaluacion], [FechaUltimaEvaluacion], [CorreoElectronico], [InstitucionEdicativa], [InstitucionTelefono], [InstitucionEntrenador], [TutorNombre], [TutorTelFijo], [TutorTelMovil], [TutorCorreoElectronico], [ComentariosTutor], [AnotacionesDisciplinaClub], [AnotacionesGeneralesClub], [OIDTipoAlumno], [Activo], [Suspendido], [FechaSuspendido], [MotivoSuspendido], [INETutor], [TipoServicioMedico], [PolizaServicioMedico], [TelMovil], [TelFijo] FROM [ClubAlumnos] WHERE (([OidClub] = @OidClub) AND (([OIDTipoAlumno] = @OIDTipoAlumno) OR ([OIDTipoAlumno] = @OIDTipoAlumno2)))">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
            <asp:Parameter DefaultValue="2" Name="OIDTipoAlumno" Type="Int32"></asp:Parameter>
            <asp:Parameter DefaultValue="3" Name="OIDTipoAlumno2" Type="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
      <br />
     <br />
    <br />
</asp:Content>
