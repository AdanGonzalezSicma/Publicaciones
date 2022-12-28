<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Retroalimentacion-1-Parte3.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Retroalimentacion_1_Parte3" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" Border-BorderColor="Transparent" Border-BorderWidth="0" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
    <script>
        function Distracto() {
            loadingPanel.Show();
        }
        function CerrarPOPUP() {
            popupError.Hide();
        }
    </script>
    <dx:ASPxHiddenField ID="hiddenRespuestas" runat="server" ClientInstanceName="hiddenRespuestas"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenRetroalimentacion3" runat="server" ClientInstanceName="hiddenRetroalimentacion3"></dx:ASPxHiddenField>
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
            <h3 class="tituloOpciones">I Retroalimentación
            </h3>
            <br />
            <br />
            <div class="row">
               
                <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                    <div class="card text-left" style="height: 100%">
                        <div class="card-body">
                            <p>7. ¿Qué es Violencia Laboral?</p>

                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn1" type="radio" class="form-check-input" name="rbtnPregunta1">Consecuencias de los malos entendidos al recibir instrucciones del trabajo
                                </label>
                            </div>
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn2" type="radio" class="form-check-input" name="rbtnPregunta1">Situación en la que un trabajador o grupo de trabajadores realizan una serie de acciones violentas psicológicas de forma sistemática en contra de otro u otros trabajadores.
                                </label>
                            </div>
                           


                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12"  style="margin-bottom:10px">
                    <div class="card  text-left  card-resaltada" style="height: 100%">
                        <div class="card-body">
                            <p>8. ¿Qué es Mobbing?</p>
                           
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn3" type="radio" class="form-check-input" name="rbtnPregunta2">Son conductas verbales, físicas o ambas, relacionadas con la sexualidad de connotación lasciva.
                                </label>
                            </div>
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn4" type="radio" class="form-check-input" name="rbtnPregunta2">Es una forma de violencia laboral, consiste en el trato hostil al que es sometida una persona en el ámbito laboral de forma sistemática, que le provoca problemas psicológicos y profesionales
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6" style="margin-bottom:10px">
                    <a href="/Cuestionarios/Sensibilizacion/retroalimentacion-1-Parte2.aspx" class="btn btn-info">Regresar</a>
                </div>
                <div class="col-lg-6" style="margin-bottom:10px">
                    <asp:Button ID="btnSiguiente" Text="Continuar" runat="server" class="btn btn-info" OnClick="btnSiguiente_Click" onmouseup="fncValidarRespuestas();" />
                </div>
            </div>
        </div>
    </div>
          </div>
    <br />
    <br id="menos1600" />
    <br />
    <br />
    <dx:ASPxPopupControl ID="popupError" ClientInstanceName="popupError" runat="server" HeaderStyle-ForeColor="White" HeaderText="Oh oh" Width="500px">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" FixedFooter="False" />
        <HeaderImage IconID="status_warning_16x16">
        </HeaderImage>
        <HeaderStyle ForeColor="White" BackColor="#DC3545" Border-BorderColor="#DC3545" Border-BorderStyle="Solid" Border-BorderWidth="1px"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <p style="font-size: 18px">
                    <asp:Label ID="lblError" Text="Es necesario seleccionar las respuestas correctas." ForeColor="#ffffff" runat="server" />
                </p>
                <br />
                <br />
                <div class="text-right">
                    <a class="btn btn-primary" style="padding: 8px 33px 8px; color: white; background-color: #DC3545; border-color: #DC3545" onclick="CerrarPOPUP()">Aceptar</a>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>
    <script src="/js/core.min.js"></script>
    <script src="/js/script.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            var Retroalimentacion3 = "";
            Retroalimentacion3 = hiddenRetroalimentacion3.Get("Retroalimentacion3");

            if (Retroalimentacion3)
            {
                fncMarcarRespuestasCorrectas();
            }
        });

        function fncMarcarRespuestasCorrectas() {
            $("#rbtn2").prop("checked", true);
            $("#rbtn4").prop("checked", true);
        }

        function fncValidarRespuestas() {
            var rbtn2 = document.getElementById('rbtn2').checked;
            var rbtn4 = document.getElementById('rbtn4').checked;

            if (rbtn2 && rbtn4) {
                hiddenRespuestas.Set("Respuestas", true);
                Distracto();
            } else {
                hiddenRespuestas.Set("Respuestas", false);
            }
        }
    </script>
</asp:Content>
