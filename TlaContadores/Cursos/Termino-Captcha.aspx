<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Termino-Captcha.aspx.cs" Inherits="CreandoProductividad.Cursos.Termino_Captcha" %>

<!DOCTYPE html>

<html class="wide wow-animation" lang="en">

<head>
    <title>NOM-035</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport"
          content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="images/nom.png" type="image/x-icon">
    <!-- Stylesheets-->

    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/style.css">
    <style>
        .ie-panel {
            display: none;
            background: #212121;
            padding: 10px 0;
            box-shadow: 3px 3px 5px 0 rgba(0, 0, 0, .3);
            clear: both;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        html.ie-10 .ie-panel,
        html.lt-ie-10 .ie-panel {
            display: block;
        }
         /*Clase para manipular el color de la barra superior*/
        /*.section-banner { background: rgba(67,191,199,1); }*/
        /*Clase para manipular el color de fondo, borde y letra de los botones*/
        /*.button-primary, .button-primary { background-color: #f88017; border-color: #f88017; color: #fff }*/
        /*Clase para manipular el color de fondo, borde y letra de los botones en hover*/
        /*.button-primary.button-ujarak::before { color: #ffffff; background-color: #151515; border-color: #151515; }*/
        /*Clase para manipular el color del borde de la seccion donde aparece el logo*/
        /*.page-header { border-bottom: 5px solid; border-image: linear-gradient(100deg, #f88017, #43bfc7) 1; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important; }*/
        /*Clases para manipular el color de letra del card*/
        /*.card-body{ color:navy; }*/
        /*.card-body h4, h3 { color: navy; }*/
          /* clase para cambiar el color de letra del banner superior*/
        /*.section-banner h5, h3 { color: white }*/
        /* clase para cambiar el color del borde del banner superior*/
        /*.borde { border-right: 3px solid red; }*/
    </style>
    <%=CargarTema() %>
</head>
       
<body style=" background-position: 100%; background-repeat: no-repeat; background-size: cover">
    <form id="form1" runat="server">
         <div class="page">
        <div id="home">
             <!-- Top Banner-->
             <div class="container-fluid section section-banner text-center d-none d-xl-block">

                <div class="row text-center" style="padding:0.5%; margin-top:0px!important">
                    <div class="col-lg-4 col-md-5 borde"><h3 style="font-size:25px;"> ¡Plataforma NOM-035!</h3></div>
                     <div class="col-lg-5 col-md-5  borde"><h5 style="text-transform:none;">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                     <div class="col-lg-3 col-md-2"><button class="button button-primary button-ujarak" style="padding: 10px 23px 10px!important; min-width:100px" onserverclick="Unnamed_ServerClick" runat="server"> Salir</button></div>
                </div>
            </div>

        </div>
           
       
        <div class="container">
               <div class="card" style=" margin-top:3%;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;">
                       
                        <div class="card-body">
                            
                       
                            <div class="row">
                                <div class="col-lg-5 col-md-12 col-sm-12 ">
                                   
                                    <img src="../Content/img/time-over.png"  style="width:100%"/>
                                   
                                    
                                </div>
                                <div class="col-lg-7 col-md-12 col-sm-12 ">
                                    <br />
                                    <br />
                                    <div class="error-content text-center">
                                        <h1 id="textogrande" style="text-shadow: 3px 3px 2px black; ">¡Se terminó el tiempo!</h1>

                                        <p style="font-size:20px">
                                            Le informamos que duro demaciado tiempo de inactividad tendra que volver a entrar con la liga del curso 


                                        </p>
                                        <asp:Button ID="btnVolver" OnClick="btnVolver_Click" runat="server" Text="vuelve a introducir la liga" Style="width: 100%"  class="button button-primary"/>


                                    </div>
                                    <br />
                                    <br />
                                </div>

                            </div>
                            <br />
                        </div>
                       
                    </div>
            

        </div>
           </div>
    </form>
      <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="../js/core.min.js"></script>
    <script src="../js/script.js"></script>
</body>
</html>