<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sistema_web.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Inicio</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
         window.onload = function active() {
            var act = document.getElementById("Config");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
             }
              var act2 = document.getElementById("label4");
            if (act2.className.match("tab4")) {
                act2.className ="tab active";
            } else {
                act2.remove.className("active");
            }
    
        }
    </script>
</asp:Content>
