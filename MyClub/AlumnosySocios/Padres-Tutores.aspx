<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Padres-Tutores.aspx.cs" Inherits="Sistema_web.AlumnosySocios.Padres_Tutores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Padres y/o Tutores</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
         window.onload = function active() {
            var act = document.getElementById("Alumnos");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
             }
              var act2 = document.getElementById("label3");
            if (act2.className.match("tab3")) {
                act2.className ="tab active";
            } else {
                act2.remove.className("active");
            }
    
        }
    </script>
        <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 col-lg-10 col-md-6">
                    <h3 class="m-0" style="padding: 15px"><b>Padres-Tutores</b></h3>
                </div>
             
            </div>
        </div>
    </div>
  <br />
     <br />
    <br />
</asp:Content>
