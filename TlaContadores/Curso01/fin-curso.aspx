<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fin-curso.aspx.cs" Inherits="CreandoProductividad.Curso01.fin_curso" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Import Namespace="CreandoProductividad.Models" %>
<%@ Import Namespace="CreandoProductividad.Class" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Minom035</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <!-- Bootstrap core CSS -->
  <link href="Content/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/media-queries.css" rel="stylesheet" />
    <link href="css/scrolling-nav.css" rel="stylesheet" />
 
</head>


<body id="page-top" style=" background-image: url(img/background2.jpeg);  background-repeat: no-repeat; ">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="../index.html"><img src="img/GrupoCreativo.png" style="width:200px"></a>


    </div>
  </nav>
  <section class="about " style=" background-image: url(/Content/img/background2.jpeg);  background-repeat: no-repeat; ">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12 mx-auto text-center">
         <br />
            <br />
          <h1 style="color: white; "><b>Curso concluido <br>
                <br />
              “SENSIBILIZACIÓN E INICIO DE IMPLEMENTACIÓN DE LA NOM-035 PARA TRABAJADORES”</b></h1>

        


        </div>

      </div>




    </div>



  </section>

  <!-- Footer -->
  <footer class="py-5 ">
    <div class="container">
      <div class="row ">
        <div class="col-lg-4 text-center">
          <br>
          <a href="retroalimentacion-obligaciones.html" class="btn btn-secondary btn-lg btn-atr" >Regresar</a>

        </div>
        <div class="col-lg-4 text-center">
          <br>
          <audio id="miAudio" src="img/modulo3.mpeg" ></audio>

            

          <div id="botones" style="background-color: rgba(204, 204, 206, 0.651); border-radius: 50px;">
            <button onclick="setHalfVolume()" type="button"> <img src="img/volume-menos-icon.png"
                style="width: 150%;"></button>
            <button id="iniciar" onclick="iniciar()"><img src="img/Play.ico" style="width: 150%;"></button>
            <button onclick="setFullVolume()" type="button"> <img src="img/volume-icon.png"
                style="width: 150%;"></button>
            <button id="reiniciar" onclick="reiniciar()"><img src="img/Undo.ico" style="width: 150%;"></button>
          </div>

        </div>
        <div class="col-lg-4 text-center">
          <br>
          <!--<a href="#" class="btn btn-primary btn-lg" style="width:100%">Contestar encuestas</a>-->
        <form runat="server">
            <dx:ASPxHiddenField ID="hiddenUltimoSistemaOperativo" runat="server" ClientInstanceName="hiddenUltimoSistemaOperativo"></dx:ASPxHiddenField>
            <dx:ASPxHiddenField ID="hiddenUltimoNavegador" runat="server" ClientInstanceName="hiddenUltimoNavegador"></dx:ASPxHiddenField>

            <asp:Button Text="Comenzar" id="btnComenzar" OnClick="btnComenzar_Click" class="btn btn-primary btn-lg btn-sig"   runat="server" />
        </form>
        </div>

      </div>
    </div>
    <!-- /.container -->
  </footer>


     <!--Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/jquery/audio.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom JavaScript for this theme -->
  <script src="/Content/js/scrolling-nav.js"></script>

<script>
        function getNavigator() {
            var agente = navigator.userAgent;
            var navegadores = ["Chrome", "Firefox", "Safari", "Opera", "Trident", "MSIE", "Edge"];

            for (var i in navegadores) {
                if (agente.indexOf(navegadores[i]) != -1) {
                    hiddenUltimoNavegador.Set("UltimoNavegador", navegadores[i]);
                    return navegadores[i];
                }
            }
        }

        $(document).ready(function () {
            getNavigator();
            retornarSO();
        });

        var navInfo = window.navigator.appVersion.toLowerCase();
        var so = 'Sistema Operativo';
        function retornarSO() {
            if (navInfo.indexOf('win') != -1) {
                so = 'Windows';
            }
            else if (navInfo.indexOf('linux') != -1) {
                so = 'Linux';
            }
            else if (navInfo.indexOf('mac') != -1) {
                so = 'Macintosh';
            }
            var UltimoSistemaOperativo = so;
            hiddenUltimoSistemaOperativo.Set("UltimoSistemaOperativo", UltimoSistemaOperativo);
            return so;
        }

    function fncComenzar() {

        location.href = location.hostname +"/Cuestionarios/ProgresoUsuario.aspx";
    }

    /*$(document).ready(function () {
        var btnContinuar = document.getElementById("btnComenzar");
        btnContinuar.disabled = true;
    });*/
</script>

</body>

</html>