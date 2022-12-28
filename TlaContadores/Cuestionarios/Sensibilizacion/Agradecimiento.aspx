<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Agradecimiento.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.Agradecimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-color: #548cde1f
        }
        .btn-primary {
            font-size: 26px;
            background: #548cde;
            border-color: #548cde;
            color: #fff!important;
            width: auto;
            padding: 20px 26px;
            border-radius: 5px;
            box-shadow: rgb(0 0 0 / 25%) 0px 25px 50px -12px;
        }
        .card {
            box-shadow: rgb(0 0 0 / 25%) 0px 25px 50px -12px;
            margin-top: 10%
        }
        h1 {
            font-size: 60px;
            text-align: center;
            padding: 10px;
            margin-top: 0px;
            color: #045fac
        }
        p {
            color: #00367c
        }
        .text-descrip p {
            text-align: left;
           
        }
        @media screen and (max-width: 800px) {
          

            .text-descrip p {
                text-align: center
            }

          
        }
        @media screen and (max-width: 600px) {
            h1 {
                font-size: 35px;
            }
            .text-descrip p{
                text-align:center
            }
            body {
                background-color: #fff
            }
            .card {
                border:none;
                box-shadow:none
            }
        }
        @media screen and (max-width: 1600px) and (min-width:1400px) {

            .card {
                margin-top: 5%
            }
        }
        @media screen and (max-width: 1404px)  {

            .card {
                margin-top: 3%
            }
        }
    </style>
    <div class="container">
        <div class="row text-center">
            <div class="card">
                <div class="card-body">
                    <div class="col-lg-12">
                        <h1><b>¡Gracias por terminar el curso!</b></h1>
                        <p style="font-size: 25px">Sus resultados han sido registrados correctamente.</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-5 text-descrip">

                            <br />
                            <br />
                            <p style="font-size: 20px">Ha completado con éxito el curso de “Sensibilización e inicio de implementación de la NOM-035”</p>
                            <p style="font-size: 20px">
                                Por favor, diríjase a la página de inicio
                            </p>
                            <br />
                            <br />
                            <asp:Button Text="Ir a la pagina de inicio" runat="server" class="btn btn-primary" OnClick="Unnamed_Click" />
                        </div>
                        <div class="col-lg-5">
                            <img src="/images/Bienvenidos.png" style="width: 100%" />
                        </div>
                        <div class="col-lg-1"></div>
                    </div>
                </div>


            </div>
            <br />
            <br />
        </div>

    </div>
</asp:Content>
