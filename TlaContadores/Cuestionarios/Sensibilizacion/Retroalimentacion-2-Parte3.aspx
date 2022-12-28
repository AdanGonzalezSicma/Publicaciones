<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Retroalimentacion-2-Parte3.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Retroalimentacion_2_Parte3" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenRespuestas" runat="server" ClientInstanceName="hiddenRespuestas"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenRetroalimentacion2Parte3" runat="server" ClientInstanceName="hiddenRetroalimentacion2Parte3"></dx:ASPxHiddenField>
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" Border-BorderColor="Transparent" Border-BorderWidth="0" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
    <script>
        function Distracto() {
            loadingPanel.Show();
        }
        function CerrarPOPUP() {
            popupError.Hide();
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
                <h3 class="tituloOpciones">II Retroalimentación
                </h3>
                <br />
                <br />
                <div class="row">
                
                    <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                        <div class="card text-left" style="height: 100%">
                            <div class="card-body">
                                <p>7. ¿Cuál es la obligación del trabajador, en caso de vivir un caso de violencia laboral?</p>

                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn1" type="radio" class="form-check-input" name="optradio1">Informar sobre prácticas opuestas al entorno organizacional favorable y denunciar actos de violencia laboral.
                                    </label>
                                </div>
                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn2" type="radio" class="form-check-input" name="optradio1">Analizar los factores de riesgo psicosocial y el Mobbing.
                                    </label>
                                </div>
                             


                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:10px">
                        <div class="card  text-left  card-resaltada" style="height: 100%">
                            <div class="card-body">
                                
                                <p>8. ¿Qué es lo que sigue después de terminar la II evaluación del curso?</p>
                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn3" type="radio" class="form-check-input" name="optradio2">Recibir un taller sobre sensibilización de violencia laboral
                                    </label>
                                </div>
                                <div class="form-check" style="margin-bottom:10px">
                                    <label class="form-check-label">
                                        <input id="rbtn4" type="radio" class="form-check-input" name="optradio2">Contestar los cuestionarios que corresponden a su Centro de Trabajo.
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                 
                </div>



                <br />
                <div class="row">
                    <div class="col-lg-6" style="margin-bottom:10px">
                        <a href="retroalimentacion2-p2.html" class="btn btn-info">Regresar</a>
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
            var Retroalimentacion2Parte3 = "";
            Retroalimentacion2Parte3 = hiddenRetroalimentacion2Parte3.Get("Retroalimentacion2Parte3");

            if (Retroalimentacion2Parte3){
                fncMarcarRespuestasCorrectas();
            }
        });

        function fncMarcarRespuestasCorrectas() {
            $("#rbtn1").prop("checked", true);
            $("#rbtn4").prop("checked", true);
        }

        function fncValidarRespuestas() {
             var rbtn1 = document.getElementById('rbtn1').checked;
            var rbtn4 = document.getElementById('rbtn4').checked;

            if (rbtn1 && rbtn4) {
                hiddenRespuestas.Set("Respuestas", true);
                Distracto();
            } else {
                hiddenRespuestas.Set("Respuestas", false);
            }
        }
    </script>
</asp:Content>
