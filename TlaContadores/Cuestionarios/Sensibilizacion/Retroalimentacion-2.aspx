<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Retroalimentacion-2.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Retroalimentacion_2" %>

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
    <dx:ASPxHiddenField ID="hiddenRetroalimentacion2Parte1" runat="server" ClientInstanceName="hiddenRetroalimentacion2Parte1"></dx:ASPxHiddenField>
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
            <h3  class="tituloOpciones">II Retroalimentación
            </h3>
            <br />
            <br />
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12"style="margin-bottom:10px">
                    <div class="card text-left" style="height: 100%">
                        <div class="card-body">
                            <p>1. ¿Qué es un Entorno Organizacional favorable?</p>
                            <div class="form-check"style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn1" type="radio" class="form-check-input" name="optradio1">Aquel en el que se promueve el sentido de pertenencia de los trabajadores a la empresa, capacitación para realizar sus tareas, la definición precisa de responsabilidades, la participación proactiva y comunicación entre trabajadores, distribución de cargas de trabajo adecuadas, jornadas de trabajo regulares y la evaluación y el reconocimiento del desempeño.
                                </label>
                            </div>
                            <div class="form-check"style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn2" type="radio" class="form-check-input" name="optradio1">Aquel en que no hay problemas, ni temporadas altas de trabajo, nunca se requiere trabajar tiempo extra y se mantiene un ambiente pacífico.
                                </label>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12"style="margin-bottom:10px">
                    <div class="card  text-left  card-resaltada" style="height: 100%">
                        <div class="card-body">
                            <p>2. Las obligaciones del patrón, ¿Dependen del número de trabajadores que tenga su Centro de Trabajo?</p>
                           
                            <div class="form-check"style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn3" type="radio" class="form-check-input" name="optradi2">Si
                                </label>
                            </div>
                            <div class="form-check"style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn4" type="radio" class="form-check-input" name="optradi2">No
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12"style="margin-bottom:10px">
                    <div class="card  text-left" style="height: 100%">
                        <div class="card-body">
                            <p>3. ¿Cuál de las obligaciones del patrón es la más importantes y que hay que atender a la brevedad?</p>
                            
                            <div class="form-check"style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn5" type="radio" class="form-check-input" name="optradio3">Todas son importantes, y se atienden mediante un proceso, ya que son diferentes elementos que hay que atender y su conjunto le brindará beneficios de orden y desarrollo de habilidades en toda la organización. a la NOM-035.
                                </label>
                            </div>
                            <div class="form-check"style="margin-bottom:10px">
                                <label class="form-check-label">
                                    <input id="rbtn6" type="radio" class="form-check-input" name="optradio3">Aplicar los cuestionarios y capacitar al personal sobre violencia laboral.
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6" style="margin-bottom:10px">
                    <a href="/Cuestionarios/ProgresoUsuario.aspx" class="btn btn-info">Regresar</a>
                </div>
                <div class="col-lg-6" style="margin-bottom:10px">
                    <asp:Button ID="btnSiguiente" runat="server" Text="Continuar" class="btn btn-info" OnClick="btnSiguiente_Click" onmouseup="fncValidarRespuestas();" />
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

    <script src="/js/core.min.js"></script>
    <script src="/js/script.js"></script>
    <!-- coded by Himic-->

    <script type="text/javascript">

        $(document).ready(function () {
            var Retroalimentacion2Parte1 = "";
            Retroalimentacion2Parte1 = hiddenRetroalimentacion2Parte1.Get("Retroalimentacion2Parte1");

            if (Retroalimentacion2Parte1){
                fncMarcarRespuestasCorrectas();
            }
        });

        function fncMarcarRespuestasCorrectas() {
            $("#rbtn1").prop("checked", true);
            $("#rbtn3").prop("checked", true);
            $("#rbtn5").prop("checked", true);
        }

        function fncValidarRespuestas() {
            var rbtn1 = document.getElementById('rbtn1').checked;
            var rbtn3 = document.getElementById('rbtn3').checked;
            var rbtn5 = document.getElementById('rbtn5').checked;
            if (rbtn1 && rbtn3 && rbtn5) {
                hiddenRespuestas.Set("Respuestas", true);
                Distracto();
            } else {
                hiddenRespuestas.Set("Respuestas", false);
            }
        }
    </script>
</asp:Content>