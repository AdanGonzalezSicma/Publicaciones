<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Horarios.aspx.cs" Inherits="Sistema_web.Personalizados.Horarios" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        window.onload = function active() {
            var act = document.getElementById("EntrenamientosP");
            if (act.className.match("nav-item")) {
                act.className = "nav-item active";
            } else {
                act.remove.className("active");
            }

        }
       
        function OnToolbarItemClick(s, e) {
            var visible = document.getElementById("visualizar");
        var añadir = document.getElementById("añadir");
            if (e.item.name == 'btnNuevo') {

                if (visible.style.display === "block") {
                    añadir.style.display = "block";
                    visible.style.display = "none";
                } else {
                    visible.style.display = "block";
                     añadir.style.display = "none";
                }
                LoadingSiteMaster.Show();
                setTimeout(OcultarDistractor, 1000);
            } 
        }
        function MostrarDistractor() {
                LoadingSiteMaster.Show();
        }
        function OcultarDistractor() {
                LoadingSiteMaster.Hide();
        }
    </script>
    <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Selección de entrenador y horario</b></h3>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12" id="visualizar" style="display:block">
                <dx:ASPxGridView ID="gridHorariosAlumno" ClientInstanceName="gridHorariosAlumno" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDSHorarios" KeyFieldName="OIDPersonalizadoHorario">

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

                    <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>
                    <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDPersonalizadoHorario" ReadOnly="True" VisibleIndex="0" Visible="False">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDPersonalizado" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="3"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Dia" ReadOnly="True" VisibleIndex="4"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDAlumno" VisibleIndex="7" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTimeEditColumn FieldName="HoraInicio" ReadOnly="True" VisibleIndex="5">
                            <PropertiesTimeEdit DisplayFormatString=""></PropertiesTimeEdit>
                        </dx:GridViewDataTimeEditColumn>
                        <dx:GridViewDataTimeEditColumn FieldName="HoraFinal" ReadOnly="True" VisibleIndex="6">
                            <PropertiesTimeEdit DisplayFormatString=""></PropertiesTimeEdit>
                        </dx:GridViewDataTimeEditColumn>

                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolbarHorario">
                            <Items>
                                <dx:GridViewToolbarItem Name="btnNuevo" Text="Nuevo">
                                     <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                                </dx:GridViewToolbarItem>
                            </Items>
                        </dx:GridViewToolbar>
                    </Toolbars>
                </dx:ASPxGridView>
                <asp:SqlDataSource runat="server" ID="SqlDSHorarios" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDPersonalizadoHorario],[OIDClub],[OIDPersonalizado],E.Nombre,
case when EH.Dia = 1 then 'Lunes' when EH.Dia = 2 then 'Martes' when EH.Dia = 2 then 'Miércoles' when EH.Dia = 2 then 'Jueves'
 when EH.Dia = 2 then 'Viernes' when EH.Dia = 2 then 'Sábado' when EH.Dia = 2 then 'Domingo' end as 'Dia',
 EH.HoraInicio, EH.HoraFinal, AH.OIDAlumno FROM 
(SELECT [OIDPersonalizadoHorario],[OIDClub],[OIDPersonalizado],[OIDEntrenador],[OIDHorarioEntrenador],[OIDAlumno] FROM [MyClub].[dbo].[ClubPersonalizadosAlumnosHorarios]) as AH
left join
(SELECT Oid, Nombre FROM ClubEntrenadores) as E
on AH.OIDEntrenador = E.Oid
right join
(SELECT Oid, OidEntrenador,Dia,HoraInicio, HoraFinal FROM ClubEntrenadoresHorarios) as EH
on AH.OIDHorarioEntrenador  = EH.Oid where OIDClub = @OIDClub and OIDPersonalizado = @OIDPersonalizado and AH.OIDAlumno = @OIDAlumno">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub"></asp:SessionParameter>
                        <asp:SessionParameter SessionField="OIDPersonalizadoTemp" Name="OIDPersonalizado"></asp:SessionParameter>
                        <asp:SessionParameter SessionField="OIDAlumnoTemp" Name="OIDAlumno"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>  <br /><br />
            </div>
          
          
        </div>
    </div>
    <div class="container">
        <div class="row">
  <div class="col-lg-12" style="display:none" id="añadir">
                <dx:ASPxHiddenField ID="hiddenInscripcion" ClientInstanceName="hiddenInscripcion" runat="server"></dx:ASPxHiddenField>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="card">
                            <div class="card-body" style="background-color: #0090bf">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12" style="padding-bottom: 10px">
                                        <dx:ASPxComboBox
                                            ID="ddlEntrenador"
                                            NullText="Selecciona Entrenador"
                                            ClientInstanceName="ddlEntrenador"
                                            AutoPostBack="true" runat="server"
                                            TextField="Nombre"
                                            ValueField="Oid"
                                            DataSourceID="SqlDSEntrenadores"
                                            OnTextChanged="ddlEntrenador_TextChanged" Width="100%" Height="100%" CssClass="form-control">
                                            <Items>
                                                <dx:ListEditItem Selected="true" Text="Selecciona Entrenador" />
                                            </Items>
                                        </dx:ASPxComboBox>
                                        <asp:SqlDataSource runat="server" ID="SqlDSEntrenadores" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="spEntrenadoresPersonalizados" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="OIDEmpresa" Name="OIDClub" Type="Int32" DefaultValue="110"></asp:SessionParameter>
                                                <asp:SessionParameter SessionField="OIDPersonalizadoTemp" Name="OIDPersonalizado" Type="Int32" DefaultValue="106"></asp:SessionParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12" style="padding-bottom: 10px">
                                        <dx:ASPxDateEdit ID="dateFechas" AutoPostBack="true" runat="server" OnCalendarCustomDisabledDate="dateFechas_CalendarCustomDisabledDate" OnValueChanged="dateFechas_ValueChanged" Width="100%" Height="100%" CssClass="form-control "></dx:ASPxDateEdit>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <br />
                            <asp:Repeater ID="repeaterHorarios" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-6" style="padding-bottom: 10px">
                                        <div class="card border-left-secondary shadow-sm" style="border-left-color: #f7aa00!important">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                                        <h5 style="color: black">Horario:</h5>
                                                        <h4 class="text-primary">
                                                            <%# DataBinder.Eval(Container.DataItem, "HoraInicio") %> a  <%# DataBinder.Eval(Container.DataItem, "HoraFinal") %> 
                                                        </h4>
                                                    </div>
                                                    <div class="col-lg-6 text-right">
                                                        <asp:Button CommandName='<%# DataBinder.Eval(Container.DataItem, "Oid") %>' Text="Seleccionar" runat="server" OnClick="Unnamed_Click" CssClass="btn btn-primary" Style="border-color: #0090bf; margin-top: 13px" OnClientClick="MostrarDistractor()" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <br />
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
