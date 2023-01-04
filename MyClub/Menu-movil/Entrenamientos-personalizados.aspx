<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Entrenamientos-personalizados.aspx.cs" Inherits="Sistema_web.Menu_movil.Entrenamientos_personalizados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <script>
          var act2 = document.getElementById("label4");
            if (act2.className.match("tab4")) {
                act2.className ="tab active";
            } else {
                ac2t.remove.className("active");
            }
      </script>
    <style>
        .btn-info{
            background-color:white;
            color:#0090bf!important;
            border-color:#f7aa00!important;
            width:100%; 
            margin-bottom:10%;
        }
         .btn-info:hover{
            background-color:#0090bf!important;
            color:#fff!important;
            border-color:#0090bf!important;
            width:100%; 
            margin-bottom:10%;
        }
          .btn-info i{
           font-size:50px;
           
           
        }
         
    </style>
      <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12 col-lg-10 col-md-6">
                    <h3 class="m-0" style="padding: 15px"><b>Entrenamientos personalizados</b></h3>
                </div>
             
            </div>
        </div>
    </div>
    <br />
    <div class="container" >
         <div class="row">
            <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
                <a class="btn btn-info shadow-sm" href="/Personalizados/Entrenadores-asistentes.aspx" style="height:100%" onclick="MostarDistractor()"><i class="fas fa-user"></i><br />Entrenadores<br />/Asistentes</a>
            </div>
            <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="/Personalizados/Entrenamientos.aspx" style="height:100%" onclick="MostarDistractor()"><i class="fa fa-dumbbell"></i><br />Entrenamientos</a>
            </div>
                 <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="/Personalizados/Inscripciones.aspx" style="height:100%" onclick="MostarDistractor()"><i class="fa fa-id-badge"></i><br />Inscripción a Personalizados</a>
            </div>
              <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
           <a class="btn btn-info shadow-sm" href="/Personalizados/Alumnos.aspx" style="height:100%" onclick="MostarDistractor()"><i class="fa fa-user-graduate"></i><br />Alumnos</a>
            </div>
               <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
           <a class="btn btn-info shadow-sm" href="/Entrenamientos/Pagos.aspx" style="height:100%" onclick="MostarDistractor()"><i class="fa fa-money-bill"></i><br />Pagos</a>
            </div>
           
        </div>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
