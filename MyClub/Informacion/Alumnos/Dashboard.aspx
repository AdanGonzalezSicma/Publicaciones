<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Sistema_web.Informacion.Alumnos.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        @media screen and (min-width: 600px) {
            #Vmovil {
                display: none;
            }
        }
    </style>
<%--    <script>
        function cargarReporte() {
            LoadingPanel.Show();
        }
    </script>--%>
    <script>
         window.onload = function active() {
            var act = document.getElementById("dash");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
    
        }
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <%--<dx:aspxloadingpanel id="LoadingPanel" runat="server" clientinstancename="LoadingPanel" modal="True" text="Generando reporte"></dx:aspxloadingpanel>--%>
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 col-lg-10 col-md-6">
                    <h3 class="m-0" style="padding: 15px"><b>Dashboard</b></h3>
                </div>
                <div class="col-sm-12 col-lg-2 col-md-6">
                    <asp:LinkButton ID="btnReporte" runat="server" OnClientClick="cargarReporte()" class=" d-sm-inline-block btn btn-sm btn-primary shadow-sm" Style="margin: 15px; border: none"><i class="fas fa-download fa-sm text-white-50"></i>Generar Reporte</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
     <br />
     <br />
    <br />
</asp:Content>
