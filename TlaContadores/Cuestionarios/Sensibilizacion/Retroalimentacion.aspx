<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Retroalimentacion.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Retroalimentacion" %>

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
    <dx:ASPxHiddenField ID="hiddenRetroalimentacion1" runat="server" ClientInstanceName="hiddenRetroalimentacion1"></dx:ASPxHiddenField>
    <%=CargarTema() %>
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
            <h3  class="tituloOpciones">I Retroalimentación
            </h3>
            <br />
           
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                    <div class="card text-left" style="height: 100%">
                        <div class="card-body">
                            <p>1. Sobre el Objetivo de la NOM-035, ¿Qué previene la NOM 035?</p>
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn1" type="radio" class="form-check-input" name="rbtnPregunta1">El desperdicio de material en las líneas de producción
                                </label>
                            </div>
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn2" type="radio" class="form-check-input" name="rbtnPregunta1">Los Factores de Riesgo Psicosocial
                                </label>
                            </div>
                            <br />
                            <p>¿Qué promueve la NOM 035?</p>
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn3" type="radio" class="form-check-input" name="rbtnPregunta2">Los Factores de Riesgo Psicosocial
                                </label>
                            </div>
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn4" type="radio" class="form-check-input" name="rbtnPregunta2">Entorno Organizacional Favorable en los centros de trabajo.
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                    <div class="card  text-left  card-resaltada" style="height: 100%">
                        <div class="card-body">
                            <p>2. Para la correcta interpretación y aplicación de la NOM-035, ¿Qué otras normas oficiales mexicanas se deben consultar?</p>
                            <br />
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn5" type="radio" class="form-check-input" name="rbtnPregunta3">NOM-019, NOM-030 y NMX-R-025
                                </label>
                            </div>
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn6" type="radio" class="form-check-input" name="rbtnPregunta3">NOM-029, NOM-001 Y NOM-002
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                    <div class="card  text-left" style="height: 100%">
                        <div class="card-body">
                            <p>3. ¿Cuál es su campo de aplicación?</p>
                            <br />
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn7" type="radio" class="form-check-input" name="rbtnPregunta4">Sólo en empresas de 51 trabajadores o más.
                                </label>
                            </div>
                            <div class="form-check" style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn8" type="radio" class="form-check-input" name="rbtnPregunta4">En todos los centros de trabajo de toda la república mexicana.
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <br />
            <div class="row">
                <div class="col-lg-6" style="margin-bottom:10px">
                    <a href="/Cuestionarios/ProgresoUsuario.aspx" class="btn btn-info" onmouseup="Distracto()">Regresar</a>
                </div>
                <div class="col-lg-6" style="margin-bottom:10px">
                    <asp:Button ID="btnSiguiente" Text="Continuar" runat="server" class="btn btn-info" OnClick="btnSiguiente_Click1" onmouseup="fncValidarRespuestas();" />
                </div>

            </div>

        </div>
    </div>
         </div>
    <br />
    <br id="menos1600" />
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


    <br />
    <br />
    <!-- Javascript-->
    <script src="/js/core.min.js"></script>
    <script src="/js/script.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            var Retroalimentacion1 = "";
            Retroalimentacion1 = hiddenRetroalimentacion1.Get("Retroalimentacion1");

            if (Retroalimentacion1){
                fncMarcarRespuestasCorrectas();
            }
        });

        function fncMarcarRespuestasCorrectas() {
            $("#rbtn2").prop("checked", true);
            $("#rbtn4").prop("checked", true);
            $("#rbtn5").prop("checked", true);
            $("#rbtn8").prop("checked", true);
        }

        function fncValidarRespuestas() {
            var rbtn1 = document.getElementById('rbtn2').checked;
            var rbtn2 = document.getElementById('rbtn4').checked;
            var rbtn3 = document.getElementById('rbtn5').checked;
            var rbtn4 = document.getElementById('rbtn8').checked;
            if (rbtn1  &&  rbtn2 && rbtn3  &&  rbtn4) {
                hiddenRespuestas.Set("Respuestas", true);
                Distracto();
            } else {
                hiddenRespuestas.Set("Respuestas", false);
            }
        }
    </script>
</asp:Content>
