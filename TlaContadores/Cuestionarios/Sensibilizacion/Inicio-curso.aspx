<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Inicio-curso.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Inicio_curso" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../js/jquery-3.3.1.min.js"></script>
    <span id="hour" style="display: none;"></span>
    <span id="min" style="display: none;"></span>
    <span id="sec" style="display: none;"></span>
    <input type="text" id="txtMin" style="display: none" />

    <input id="pauseButton" type="button" value="Pause" style="display: none">
    <input id="resumeButton" type="button" value="Resume" style="display: none">

    <dx:ASPxHiddenField ID="hiddenVisualizado" runat="server" ClientInstanceName="hiddenVisualizado"></dx:ASPxHiddenField>
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" Border-BorderColor="Transparent" Border-BorderWidth="0" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
    <script>

        var Clock = {

            totalSeconds: 0,

            start: function () {
                var self = this;

                this.interval = setInterval(function () {
                    self.totalSeconds += 1;
                    console.log(self.totalSeconds)
                    if (self.totalSeconds == 2040) {
                        $('#ContentPlaceHolder1_btnSiguiente').removeAttr('disabled');

                        $('#ContentPlaceHolder1_btnSiguiente').attr('enabled', 'enabled');

                        //$('#ContentPlaceHolder1_btnSiguiente').attr('disabled', 'false')
                    }
                }, 1000);
            },

            pause: function () {
                clearInterval(this.interval);
                delete this.interval;
            },

            resume: function () {
                if (!this.interval) this.start();
            }
        };
        console.log(Clock.totalSeconds)
        Clock.start();

        function fncPlay() {
            var btnReproducir = document.getElementById("btnReproducir");
            var myVideo = document.getElementById("video");
            if (btnReproducir.innerText == "Reproducir") {
                var segundos = (Math.round(Clock.totalSeconds % 0x3C)).toString();
                var minutos = (Math.floor(Clock.totalSeconds / 0x3C) % 0x3C).toString();

                if (segundos > 0) {
                    segundos = segundos - 1;
                }

                console.log(minutos)
                console.log(segundos)
                $("#video")[0]['src'] = 'https://player.vimeo.com/video/664354732?h=b92f796bdf&badge=0&autopause=0&player_id=0&app_id=58479&autoplay=1 #t=' + minutos + 'm' + segundos + 's';

                Clock.resume();
                $("#btnReproducir").text("Pausar");
            }
            else {

                Clock.pause();
                $("#video")[0]['src'] = 'https://player.vimeo.com/video/664354732?h=b92f796bdf&badge=0&autopause=1&player_id=0&app_id=58479&autoplay=0';
                $("#btnReproducir").text("Reproducir");
            }
        }



        function Distracto() {
            loadingPanel.Show();
        }
    </script>
    <style>
        .btn-info.disabled, .btn-info:disabled {
    color: #fff;
    background-color: #707070;
    border-color: #707070;
}
    </style>
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
                <h3 class="tituloOpciones">Sensibilización e inicio de implementación de la NOM-035
                </h3>
                <br />
                <br />
                <section id="videoMuestra">
                    <iframe id="video" src="https://player.vimeo.com/video/664354732?h=b92f796bdf&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479&autoplay=1" height="400" frameborder="0" allow="autoplay; fullscreen" allowfullscreen style="width: 100%"></iframe>

                </section>
                <br />
                <div class="row" style="justify-content:center">
    <!-- PLAY -->
                    <div class="col-md-4  col-sm-12 col-lg-4 text-center">
                        <a class="btn btn-info" onmouseup="fncPlay();" href="#" data-caption-animate="fadeInUp" data-caption-delay="200" style="margin: 5px">
                            <span  id="btnReproducir">Pausar</span>
                        </a>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-6" style="margin-bottom: 10px">
                        <a href="indicaciones.aspx" class="btn btn-info" onmouseup=" Distracto()">Regresar</a>
                    </div>
                
                    <div class="col-lg-6" style="margin-bottom: 10px">
                        <asp:Button ID="btnSiguiente" Text="Continuar" runat="server" class="btn btn-info" OnClick="btnSiguiente_Click" onmouseup=" Distracto()" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br id="menos1600" />
    <br />
    <br />
    <%--<script src="/js/jquery-3.3.1.slim.min.js"></script>--%>
    <%--    <script src="/js/script.js"></script>--%>
    <%--    <script src="/js/core.min.js"></script>
    <script type="text/javascript">
        window.onload = InicioPagina;
        function InicioPagina (){
            var Verificado = "";
            Verificado = hiddenVisualizado.Get("Visualizado");

            if (!Verificado)
                fncDeshabilitarSiguiente();
        };

        //AL ENTRAR A LA PAGINA POR PRIMERA VEZ, EL BOTON SIGUIENTE SE ENCUENTRA DESHABILITADO
        function fncDeshabilitarSiguiente() {
            var btnSiguiente = document.getElementById("ContentPlaceHolder1_btnSiguiente");
            btnSiguiente.disabled = true;
        }

        function fncHabilitarSiguiente() {
            var btnSiguiente = document.getElementById("ContentPlaceHolder1_btnSiguiente");
            btnSiguiente.disabled = false;
        }

        //FUNCION PARA REPRODUCIR Y PAUSAR EL VIDEO
        function fncPlay() {
            var btnReproducir = document.getElementById("btnReproducir");
            var myVideo = document.getElementById("video");
            alert(btnReproducir.innerText);
            if (btnReproducir.innerText == "Reproducir") {
                 $(myVideo).play();
                //myVideo.play();
                Clock.resume();
                $("#btnReproducir").text("Pausa");
            }
            else {
                myVideo.pause(); 
                Clock.pause();
                $("#btnReproducir").text("Reproducir");
            }
        }

        //FUNCION PARA DESHABILITAR CLIC DERECHO
        //$(function(){
        //    $(document).bind("contextmenu",function(e){
        //    return false;
        //    });
        //});

        var Clock = {
          totalSeconds: 0,

          start: function () {
            var self = this;

            this.interval = setInterval(function () {
              self.totalSeconds += 1;

              $("#hour").text(Math.floor(self.totalSeconds / 3600));
                $("#min").text(Math.floor(self.totalSeconds / 60 % 60));
                $("#txtMin").val(Math.floor(self.totalSeconds / 60 % 60));
              $("#sec").text(parseInt(self.totalSeconds % 60));
            }, 1000);
          },

          pause: function () {
            clearInterval(this.interval);
            delete this.interval;
          },

          resume: function () {
            if (!this.interval) this.start();
          }
        };

        //Clock.start();

        $('#pauseButton').click(function () { Clock.pause(); });
        $('#resumeButton').click(function () { Clock.resume(); });

        setInterval(function () {
            var valMinutos = 0;
            var Contador = 0;
            valMinutos = document.getElementById("txtMin").value;

            if (valMinutos == 35) {
                fncHabilitarSiguiente();
            }
                
        }, 3000);
    </script>--%>
    <script>
            $('#ContentPlaceHolder1_btnSiguiente').attr('disabled','true');


    </script>
</asp:Content>
