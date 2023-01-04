<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="membresias.aspx.cs" Inherits="Sistema_web.Menu_movil.membresias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <script>
      
        window.onload = function active() {
            var act = document.getElementById("label4");
            if (act.className.match("tab4")) {
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
                    <h3 class="m-0" style="padding: 15px"><b>Membresías</b></h3>
                </div>
             
            </div>
        </div>
    </div>
    <br />
    <div class="container">
         <div class="row">
            <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
                <a class="btn btn-info shadow-sm" href="/Membresias/Membresias.aspx" style="height:100%" onclick="MostarDistractor()"><i class="fas fa-fw fa-id-card"></i><br />Membresias</a>
            </div>
            <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="/Membresias/Alumnos.aspx" style="height:100%" onclick="MostarDistractor()"><i class="fa fa-user-graduate"></i><br />Alumnos</a>
            </div>
               <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="/Membresias/Cargos-Abonos.aspx" style="height:100%" onclick="MostarDistractor()"><i class="fa  fa-file-invoice-dollar"></i><br />Cargos y abonos</a>
            </div>
               <%--  <div class="col-lg-6 col-sm-6 col-md-6 col-6" style="margin-bottom:5%">
            <a class="btn btn-info shadow-sm" href="/Membresias/Pagos.aspx" style="height:100%"><i class="fa fa-money-bill"></i><br />Pagos</a>
            </div>--%>
        </div>
    </div>
</asp:Content>
