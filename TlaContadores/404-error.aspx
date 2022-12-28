<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="404-error.aspx.cs" Inherits="CreandoProductividad._404_error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .pagina-nofound{
            text-shadow: 3px 3px 2px #0000007d; 
            color:#045fac; 
            font-size:70px
        }
        .texto-descripcion{
            font-size:25px
        }
        .card{
            border-top:10px solid #26cbc7
        }
        .btn-primary{
            background-color:#045fac; border:1px solid #045fac
        }
         .btn-primary:hover{
            background-color:#26cbc7; border:1px solid #26cbc7
        }
        @media screen and (max-width: 800px) {
            .pagina-nofound{
            text-shadow: none; 
            color:#045fac; 
            font-size:30px
        }
             .texto-descripcion{
            font-size:18px
        }
        }
    </style>
     <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card" >
                      
                        <div class="card-body">
                           
                       
                            <div class="row">
                                 <div class="col-12 col-lg-3 col-md-3 col-sm-12"></div>
                                <div class="col-12 col-lg-6 col-md-6 col-sm-12">
                                    
                                    <img src="Content/img/error-404-800x600.gif" style="width:100%"/>
                                                        
                                   
                                </div>
                                  <div class="col-12 col-lg-3 col-md-3 col-sm-12"></div>
                                </div>
                            <div class="row text-center">
                                <div class="col-12 col-lg-12 col-md-12 col-sm-12">
                                
                                    <div class="error-content">
                                        <h1 class="pagina-nofound"><b>Página no encontrada.</b></h1>
                                        <br />
                                        <p class="texto-descripcion">
                                            No pudimos encontrar la página que estabas buscando.


                                        </p>
                                        <a class="btn btn-primary " href="index.html"> Ir a la página de inicio</a>


                                    </div>
                                    <br />
                                    <br />
                                </div>
                                
                            </div>
                            <br />
                      </div>
                        
                       
                    </div>
                    <br />
                </div>
             
            </div>
        </div>
</asp:Content>
