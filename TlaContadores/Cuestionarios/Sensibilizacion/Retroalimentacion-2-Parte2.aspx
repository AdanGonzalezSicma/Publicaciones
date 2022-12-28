<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Retroalimentacion-2-Parte2.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Retroalimentacion_2_Parte2" %>

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
    <dx:ASPxHiddenField ID="hiddenRetroalimentacion2Parte2" runat="server" ClientInstanceName="hiddenRetroalimentacion2Parte2"></dx:ASPxHiddenField>
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
                <h3 class="tituloOpciones">II Retroalimentación
                </h3>
                <br />
                <br />
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                        <div class="card text-left" style="height: 100%">
                            <div class="card-body">
                                <p>4. Selecciona, ¿Cuál de estas dos opciones son obligaciones del Patrón en la NOM-035?</p>

                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn1" type="radio" class="form-check-input" name="optradio1">Contratar a un Médico y Psicólogo de planta en la empresa.
                                    </label>
                                </div>
                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn2" type="radio" class="form-check-input" name="optradio1">Identificar a los trabajadores que fueron sujetos a acontecimientos traumáticos severos durante o con motivo del trabajo, Practicar exámenes médicos y evaluaciones psicológicas a los trabajadores expuestos a violencia laboral y/o a los factores de riesgo psicosocial y difundir y proporcionar información a los trabajadores y llevar los Registros.
                                    </label>
                                </div>
                               


                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                        <div class="card  text-left  card-resaltada" style="height: 100%">
                            <div class="card-body">
                                <p>5. Para implementar la NOM-035, ¿el trabajador también tiene obligaciones?</p>
                                
                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn3" type="radio" class="form-check-input" name="optradio2">Si
                                    </label>
                                </div>
                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn4" type="radio" class="form-check-input" name="optradio2">No
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                        <div class="card  text-left" style="height: 100%">
                            <div class="card-body">
                                <p>6. ¿Cuál es la obligación del trabajador, en caso de sufrir un Acontecimiento traumático severo?</p>
                                
                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn5" type="radio" class="form-check-input" name="optradio3">Informar por escrito al patrón directamente, haber presenciado o sufrido un acontecimiento traumático severo.
                                    </label>
                                </div>
                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn6" type="radio" class="form-check-input" name="optradio3">Observa y Colabora con las medidas y acciones preventivas dispuestas por la norma y el Patrón.
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-6" style="margin-bottom:10px">
                        <a href="retroalimentacion-p2.html" class="btn btn-info">Regresar</a>
                    </div>
                    <div class="col-lg-6" style="margin-bottom:10px">
                        <asp:Button ID="btnSiguiente" Text="Continuar" runat="server" class="btn btn-info" OnClick="btnSiguiente_Click" onmouseup="fncValidarRespuestas();" />
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
    </div>
    <!-- Javascript-->
    <script src="../js/core.min.js"></script>
    <script src="../js/script.js"></script>
    <!-- coded by Himic-->

    <script type="text/javascript">

        $(document).ready(function () {
            var Retroalimentacion2Parte2 = "";
            Retroalimentacion2Parte2 = hiddenRetroalimentacion2Parte2.Get("Retroalimentacion2Parte2");

            if (Retroalimentacion2Parte2){
                fncMarcarRespuestasCorrectas();
            }
        });

        function fncMarcarRespuestasCorrectas() {
            $("#rbtn2").prop("checked", true);
            $("#rbtn3").prop("checked", true);
            $("#rbtn5").prop("checked", true);
        }

        function fncValidarRespuestas() {
            var rbtn2 = document.getElementById('rbtn2').checked;
            var rbtn3 = document.getElementById('rbtn3').checked;
            var rbtn5 = document.getElementById('rbtn5').checked;

            if (rbtn2 && rbtn3 && rbtn5) {
                hiddenRespuestas.Set("Respuestas", true);
                Distracto();
            } else {
                hiddenRespuestas.Set("Respuestas", false);
            }
        }
    </script>

</asp:Content>
