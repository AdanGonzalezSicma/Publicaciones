<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Encuestas.aspx.cs" Inherits="CreandoProductividad.Menu.Encuestas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script>
      
         window.onload = function active() {
            var act = document.getElementById("enc");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
            var act2 = document.getElementById("Encuestas");
           
            if (act2.className.match("menum")) {
                act2.className = "menum active";
                 document.getElementById("radio-1").checked = true;
            } else {
                act2.remove.className("active");
                  document.getElementById("radio-1").checked = false;
            }
    
        }
  
</script>
     <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <br />
                    <h1 class="m-0 text-center" style="color: white; text-shadow: 1px 2px navy; font-size: 26px"><b>Menú Encuestas</b></h1>
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
                <a href="/Panel/Encuestas-Guia-I.aspx" class="btn btn-primary" style=" width:100%"> <i class="fas fa-chart-line" style="font-size:30px" ></i><br />Encuestas Guía I</a>
            </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Panel/Detalle-informe-I.aspx" class="btn btn-primary" style=" height:100%; width:100%"> <i class="fas fa-info-circle" style="font-size:30px" ></i><br />Detalle Guía I</a>
              </div>
             <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Panel/Encuestas-Guia-II-III.aspx" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-chart-area" style="font-size:30px" ></i><br />Encuestas Guía II/III</a>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Panel/Detalle.aspx" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-info-circle" style="font-size:30px" ></i><br />Detalle Guías II/III</a>
              </div>
             <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Panel/Encuestas-Guia-V.aspx" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-chart-bar" style="font-size:30px" ></i><br />Encuestas Guía V</a>
              </div>
               <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="margin-bottom:10px">
                   <a href="/Panel/Detalle-Informe-V.aspx" class="btn btn-primary" style="height:100%; width:100%"> <i class="fas fa-info-circle" style="font-size:30px" ></i><br />Detalle Guía V</a>
              </div>
        </div>
        <br />
        
        
    </div>
    <br />
    <br />
    <br />
</asp:Content>
