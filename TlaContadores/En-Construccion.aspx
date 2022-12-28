<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="En-Construccion.aspx.cs" Inherits="CreandoProductividad.En_Construccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <style>
             .pagina-nofound{
            text-shadow: 3px 3px 2px black; 
            color:rgba(67,191,199,1); 
            font-size:70px;
            font-weight:700
        }
        .texto-descripcion{
            font-size:25px
        }
          .btn-primary{
            background-color:#045fac; border:1px solid #045fac
        }
         .btn-primary:hover{
            background-color:#26cbc7; border:1px solid #26cbc7
        }
         @media screen and (max-width: 800px) {
            .pagina-nofound{
            text-shadow: 3px 3px 2px black; 
            color:rgba(67,191,199,1); 
            font-size:20px;
            text-shadow: none;
        }
             .texto-descripcion{
            font-size:15px
        }
        }
        </style>
            <div class="row">
                <div class="col-lg-12">
                            <div class="row">
                                <div class="col-12 col-lg-3 col-md-3 col-sm-12"></div>
                                <div class="col-12 col-lg-6 col-md-6 col-sm-12">
                                  
                                    <img src="images/construccion.png" style="width:100%" />
                                </div>
                                 <div class="col-12 col-lg-3 col-md-3 col-sm-12"></div>
                            </div>
                            <div class="row text-center">
                                 <div class="col-12 col-lg-12 col-md-12 col-sm-12">

                                    <div class="error-content">
                                        <h1 class="pagina-nofound">Sitio en mantenimiento</h1>

                                        <p class="texto-descripcion">
                                            Lamentamos las molestias, pronto estará disponible nuevamente.


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
        </div>
</asp:Content>
