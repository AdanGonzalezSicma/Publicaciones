<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Bienvenida.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Bienvenida" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:aspxloadingpanel id="loadingPanel" showimage="true" image-url="/images/load.gif" clientinstancename="loadingPanel" modal="true" runat="server" border-bordercolor="Transparent" border-borderwidth="0" backcolor="Transparent" image-width="100px" imageposition="Top" CssClass="shadow-none"></dx:aspxloadingpanel>
    <script>
        function Distracto() {
            loadingPanel.Show();
        }
    </script>
   <br />
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid text-center">
            <button type="button" id="sidebarCollapse" class="btn btn-info">
                <i class="fas fa-align-justify"></i>
            </button>
        </div>
    </nav>
    <div class="container-fluid">
 <div class="row">
        <br />
        <div class="col-lg-12 text-center">
            <h2 class="tituloOpciones">Bienvenidos al curso
                "Sensibilización e inicio de implementación de la NOM-035"
            </h2>
            <br />
            <a href="/Cuestionarios/Sensibilizacion/Indicaciones.aspx" class="btn btn-info" onmouseup="Distracto()">Iniciar con la aplicación</a>

            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <img src="../../images/Bienvenidos.png" style="width: 60%" />
                </div>
                <div class="col-lg-2"></div>
            </div>

        </div>
    </div>
    </div>
   
    <br />
    <br id="menos1600" />



    <br />
    <br />
</asp:Content>
