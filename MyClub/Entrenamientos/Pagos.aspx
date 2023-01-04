<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagos.aspx.cs" Inherits="Sistema_web.Entrenamientos.Pagos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
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
                    <h3 class="m-0" style="padding: 15px"><b>Pagos</b></h3>
                </div>
            
            </div>
        </div>
    </div>
    <br />
      <br />
     <br />
    <br />
</asp:Content>
