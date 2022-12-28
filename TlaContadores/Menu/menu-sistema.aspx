<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menu-sistema.aspx.cs" Inherits="CreandoProductividad.Menu.menu_sistema" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
          window.onload = function active() {
           
            var act2 = document.getElementById("mas");
            
            if (act2.className.match("menum")) {
                act2.className = "menum active";
               document.getElementById("radio-3").checked = true;
            } else {
                act2.remove.className("active");
                document.getElementById("radio-3").checked = false;
            }
    
        }
    </script>
      <div class="content-header" >
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12" >
                    <br />
                    <h1 class="m-0 text-center" style="color: white; text-shadow: 1px 2px navy; font-size: 26px"><b>Menú</b></h1>
                    <br />
                </div>
                <div class="col-sm-6"></div>
                <div class="col-sm-6">
                  
                </div>
            </div>

        </div>
    </div>
      <div class="container-fluid">
          <div class="row">
              <div class="col-sm-12">
            <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Inicio
                            </a></li>
                        <li class="breadcrumb-item active">Menú</li>
                    </ol>
      </div>
          
      </div>
      </div>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                <a href="/Panel/ExpedientesATS.aspx" class="btn btn-primary" style=" width:100%"> <i class="fas fa-chart-area" style="font-size:30px" ></i><br />Expedientes ATS</a>
            </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Constancias/DC-3.aspx" class="btn btn-primary" style=" height:100%; width:100%"> <i class="fas fa-file-invoice" style="font-size:30px" ></i><br />Constancias DC-3</a>
              </div>
             <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Panel/AreaEvaluacion.aspx" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-building" style="font-size:30px" ></i><br />Centros de trabajo</a>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="#" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-book" style="font-size:30px" ></i><br />Plan de capacitación</a>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="Cursos.aspx" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-chalkboard-teacher" style="font-size:30px" ></i><br />Cursos</a>
              </div>
             <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="Guias.aspx" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-users-cog" style="font-size:30px" ></i><br />Guias de Usuarios</a>
              </div>
        </div>
        <br />
        
        
    </div>
    <br />
    <br />
    <br />
</asp:Content>
