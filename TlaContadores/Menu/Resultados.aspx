<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="CreandoProductividad.Menu.Resultados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <script>
      
         window.onload = function active() {
            var act = document.getElementById("res");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
            var act2 = document.getElementById("resultados");
           
            if (act2.className.match("menum")) {
                act2.className = "menum active";
                 document.getElementById("radio-0").checked = true;
            } else {
                act2.remove.className("active");
                  document.getElementById("radio-0").checked = false;
            }
    
        }
  
</script>
     <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <br />
                    <h1 class="m-0 text-center" style="color: white; text-shadow: 1px 2px navy; font-size: 26px"><b>Menú Resultados</b></h1>
                    <br />
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
                <a href="/Panel/Dashboard.aspx" class="btn btn-primary" style=" width:100%"> <i class="fas fa-chart-line" style="font-size:30px" ></i><br />Gráficos x Frecuencia</a>
            </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Observaciones/Observacion-Categorias.aspx" class="btn btn-primary" style=" height:100%; width:100%"> <i class="fas fa-eye" style="font-size:30px" ></i><br />Observaciones Categorias</a>
              </div>
             <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Observaciones/Observacion-Dominios.aspx" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-eye" style="font-size:30px" ></i><br />Observaciones Dominios</a>
              </div>
        </div>
        <br />
        
        
    </div>
    <br />
    <br />
    <br />
</asp:Content>
