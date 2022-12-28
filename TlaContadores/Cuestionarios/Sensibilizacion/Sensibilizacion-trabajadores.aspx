<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Sensibilizacion-trabajadores.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Sensibilizacion_trabajadores" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:aspxloadingpanel id="loadingPanel" showimage="true" image-url="/images/load.gif" clientinstancename="loadingPanel" modal="true" runat="server" border-bordercolor="Transparent" border-borderwidth="0" backcolor="Transparent" image-width="100px" imageposition="Top" CssClass="shadow-none"></dx:aspxloadingpanel>
     <script>


        var Clock = {
            totalSeconds: 0,

            start: function () {
                var self = this;

                this.interval = setInterval(function () {
                    self.totalSeconds += 1;
                    console.log(self.totalSeconds)
                    if (self.totalSeconds == 1461) {
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
                console.log(minutos)
                console.log(segundos)
                 if (segundos > 0) {
                    segundos = segundos - 1;
                }
                $("#video")[0]['src'] = 'https://player.vimeo.com/video/670890346?h=ab0bd4387c&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479&autoplay=1 #t=' + minutos + 'm' + segundos + 's';

                Clock.resume();
            
                $("#btnReproducir").text("Pausar");
            }
            else {

                Clock.pause();
                $("#video")[0]['src'] = 'https://player.vimeo.com/video/670890346?h=ab0bd4387c&amp;badge=0&amp;autopause=1&amp;player_id=0&amp;app_id=58479&autoplay=0';
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
            <iframe id="video" src="https://player.vimeo.com/video/670890346?h=ab0bd4387c&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479&autoplay=1" height="400" frameborder="0" allow="autoplay; fullscreen" allowfullscreen style="width: 100%"></iframe>

            <br />
              <div class="row" style="justify-content:center">
    <!-- PLAY -->
                    <div class="col-md-4  col-sm-12 col-lg-4 text-center">
                        <a class="btn btn-info" onmouseup="fncPlay();" href="#" data-caption-animate="fadeInUp" data-caption-delay="200" style="margin: 5px">
                            <span id="btnReproducir">Pausar</span>
                        </a>
                    </div>
                </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                </div>
                   
                <div class="col-lg-6">
                    <asp:Button class="btn btn-info" Text="Continuar" runat="server" onmouseup="Distracto()" ID="btnSiguiente" OnClick="btnSiguiente_Click" />
                    <%--<a href="../ejemploProgresoUsuario.html">Continuar</a>--%>
                </div>

            </div>


        </div>
    </div>
          </div>
    <br />
    <br id="menos1600" />



    <br />
    <br />
    <script>

        var Clock = {
            totalSeconds: 0,

            start: function () {
                var self = this;

                this.interval = setInterval(function () {
                    self.totalSeconds += 1;
                    console.log(self.totalSeconds)
                    if (self.totalSeconds == 2) {
                          $('#ContentPlaceHolder1_btnSiguiente').attr('disabled','true');
                          Clock.pause();
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
                     
    </script>
</asp:Content>
