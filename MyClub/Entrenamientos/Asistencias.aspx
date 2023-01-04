<%@ Page Title="" Language="C#" MasterPageFile="~/Site-Entrenadores.Master" AutoEventWireup="true" CodeBehind="Asistencias.aspx.cs" Inherits="Sistema_web.Entrenamientos.Asistencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Asistencias</b></h3>
                </div>
            
            </div>
        </div>
    </div>
    <br />
    <div class="container-fluid">
        <div class="row">
           
             <div class="col-lg-12 text-center" style="text-align:center">
                 <div class="form-inline" style="text-align:center">
                     <div style="text-align:center">
<i class="fas fa-running" style="font-size: 30px; margin-right:15px; color:#0090bf"></i>
                     </div>
     
                    <asp:DropDownList ID="ddlEntremientos" runat="server" AutoPostBack="true" DataSourceID="SqlDSEntrenamientos" DataTextField="Nombre" DataValueField="Oid" OnSelectedIndexChanged="ddlEntremientos_SelectedIndexChanged" CssClass="form-control form-select">
                      
                    </asp:DropDownList>

</div>
             </div>
               
            
                    <asp:SqlDataSource runat="server" ID="SqlDSEntrenamientos" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT P.Oid,P.Nombre From
(SELECT [OIDPersonalizadosEntrenadores]
      ,[OIDClub]
      ,[OIDPersonalizados]
      ,[OIDEntrenador]
  FROM [MyClub].[dbo].[ClubPersonalizadosEntrenadores]) as PE
  left join
  (SELECT [Oid]
      ,[Nombre]
  FROM [MyClub].[dbo].[ClubPersonalizados]) as P
  on PE.OIDPersonalizados = P.Oid
  where PE.OIDEntrenador = @OIDEntrenador and PE.OIDClub = @OIDClub UNION select 0,'Seleccione entrenamiento'">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="OIDEntrenador" Name="OIDEntrenador"></asp:SessionParameter>
                            <asp:SessionParameter SessionField="OIDClub" Name="OIDClub"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
             
           </div>
        <br />
        <br />
        <div class="row">
 <div class="col-lg-12">
                    <asp:Repeater ID="repeatAsistencias" runat="server">
                        <HeaderTemplate>
                            <table class="table table-striped table-hover shadow-sm">
                                <thead>
                                    <tr>
                                        <td>Nombre completo</td>
                                        <td class="text-center">Asistencia</td>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="table">
                                <td><%# DataBinder.Eval(Container.DataItem, "NombreCompleto") %></td>
                                <td class="text-center">
                                    <asp:CheckBox ID="chkAsistenciaHoy" ToolTip='<%# DataBinder.Eval(Container.DataItem, "OIDAsistencia") %>' Checked='<%# DataBinder.Eval(Container.DataItem, "Asistio") %>' runat="server" Width="30px" Height="30px" CssClass="check"/></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
     <div style="text-align:right">
         <br />
         <br />
                           <asp:Button Text="Guardar" ID="btnGuardarAsietencias" runat="server" OnClick="btnGuardarAsietencias_Click" cssclass="btn btn-primary" BorderStyle="None"/></div>

                </div>
        </div>
               
         </div>  
        
   <style>
       thead{
           background-color:#0090bf;
           color:white
       }
       .check{
 transform: scale(2);
        margin: 5px;
       }
   </style>
     <br />
         <br />
     <br />
         <br />
     <br />
         <br />
</asp:Content>
