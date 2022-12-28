<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Indicaciones.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Indicaciones" %>
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
    <div class="container-fluid">
    <div class="row">
        <br />
        <div class="col-lg-12 text-center">
            <h3 class="tituloOpciones">1.-Puedes utilizar cualquier dispositivo móvil, que cuente con:
            </h3>
            <p>
                los siguientes navegadores: Google Chrome, Mozilla Firefox, Opera	 y Microsoft Edge<br />

                <b class="tituloOpciones">Especificaciones:</b><br />
                El curso está desarrollado para dispositivos con pantallas con las siguientes resoluciones: 1920x1080, 1600x900 y 1366x768.
                <br />

                El texto siempre debe estar al 100%, ya que de otra manera, si el porcentaje crece, es probable que se distorsione el contenido y sea más difícil de llevarse a cabo.
            </p>
            <br />


            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <img src="../../images/navegadores.png" style="width: 70%" />
                </div>
                <div class="col-lg-2"></div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6" style="margin-bottom:10px">
                    <a href="/Cuestionarios/Sensibilizacion/Bienvenida.aspx" class="btn btn-info" onmouseup="Distracto()">Regresar</a>
                </div>
                <div class="col-lg-6" style="margin-bottom:10px">
                    <a href="/Cuestionarios/Sensibilizacion/inicio-curso.aspx" class="btn btn-info" onmouseup="Distracto()">Continuar</a>
                </div>

            </div>

        </div>
    </div>
        </div>
    <br />
    <br id="menos1600" />



    <br />
    <br />
</asp:Content>
