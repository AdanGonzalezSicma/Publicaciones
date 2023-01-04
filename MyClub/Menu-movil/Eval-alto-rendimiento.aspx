<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eval-alto-rendimiento.aspx.cs" Inherits="Sistema_web.Menu_movil.Eval_alto_rendimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <script>
      
        window.onload = function active() {
            var act = document.getElementById("label4");
            if (act.className.match("tab")) {
                act.className ="tab active";
            } else {
                act.remove.className("active");
            }
    
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
                    <h3 class="m-0" style="padding: 15px"><b>Evaluación de alto rendimiento</b></h3>
                </div>
             
            </div>
        </div>
    </div>
    <br />
    <div class="container" >
         <div class="row">
            <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
                <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-basketball-ball"></i><br />Agilidad</a>
            </div>
            <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-dumbbell"></i><br />Resistencia</a>
            </div>
                 <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-weight-hanging"></i><br />Fuerza</a>
            </div>
              <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
           <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-child"></i><br />Composición Corporal</a>
            </div>
               <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
           <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-walking"></i><br />Movilidad y equilibrio</a>
            </div>
             <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
                <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-running"></i><br />Velocidad<br />y potencia</a>
            </div>
            <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-hand-holding-heart"></i><br />Psicología</a>
            </div>
                 <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-weight"></i><br />Nutrición y Gasto calórico</a>
            </div>
              <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
           <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-cog"></i><br />Otras habilidades</a>
            </div>
               <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
           <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-medkit"></i><br />Salud del deportista</a>
            </div>
              <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
           <a class="btn btn-info shadow-sm" href="#" style="height:100%"><i class="fa fa-chart-line"></i><br />Estadísticas / desempeño</a>
            </div>
           
        </div>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
