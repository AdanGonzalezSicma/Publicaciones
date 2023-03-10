<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="404-error2.aspx.cs" Inherits="Sistema_web.Problemas._404_error2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        /*.pagina-nofound{
            text-shadow: 3px 3px 2px black; 
            color:#f7aa00; 
            font-size:12rem
        }*/
 .pagina-nofound {
   background: -webkit-linear-gradient(yellow,red);
   -webkit-background-clip: text;
   -webkit-text-fill-color: transparent;
     color: tomato;
      font-size:12rem;
      font-weight:bold;
      -webkit-text-stroke: 2px black;
    
}
        .texto-descripcion{
            font-size:25px
        }
        .card{
            background-color:transparent;
            border:none
        }
         .btn-primary{
            background-color:red; 
            border: 1px solid red;
            padding:10px 10px
        }
        .btn-primary:hover{
            background-color:#0090bf; 
            border: 1px solid #0090bf;
        }
       
        @media screen and (max-width: 800px) {
            .pagina-nofound{
           background: -webkit-linear-gradient(yellow,red);
   -webkit-background-clip: text;
   -webkit-text-fill-color: transparent;
     color: tomato;
      font-size:10rem;
      font-weight:bold;
      -webkit-text-stroke: 2px black;
        }
             .texto-descripcion{
            font-size:18px
        }
        }
    </style>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                      
                        <div class="row text-center"> 
                          
                            <div class="col-12 col-lg-6 col-md-12 col-sm-12">
                                <br />
                                <br />
                                <br />
                                <div class="error-content">
                                    <h1 class="pagina-nofound"><b>404</b></h1>
                                    <br />
                                    <p class="texto-descripcion">
                                        No pudimos encontrar la página que estabas buscando.
                                    </p>
                                    <br />
                                    <a class="btn btn-primary " href="/index.aspx">Ir a la página de inicio</a>
                                </div>
                                <br />
                                <br />
                            </div> 
                            <div class="col-12 col-lg-6 col-md-12 col-sm-12">
                                <br />
                                <br />
                                <img src="../Content/images/404-2.png" style="width:100%" />
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
