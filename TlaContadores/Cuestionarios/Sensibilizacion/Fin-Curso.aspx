<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Fin-Curso.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Fin_Curso" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" Border-BorderColor="Transparent" Border-BorderWidth="0" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
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
    <div class="container">
        <div class="row">
            <br />
            <div class="col-lg-12 text-center">
                <h2 class="tituloOpciones">Fin del curso
                            "Sensibilización e inicio de implementación de la NOM-035"
                </h2>
                <br />
                <p>Por favor de clic al botón para concluir este curso.</p>
                <br />
                <asp:Button Text="Fin del curso" runat="server" class="btn btn-info" ID="btnFinal" OnClick="btnFinal_Click" onmouseup=" Distracto()" />
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <img src="/images/Bienvenidos.png" style="width: 70%" />
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </div>
        </div>
        <br />
        <br id="menos1600" />
        <br />
        <br />
    </div>
</asp:Content>
