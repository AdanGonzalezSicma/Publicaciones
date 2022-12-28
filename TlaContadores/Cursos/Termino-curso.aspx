<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Termino-curso.aspx.cs" Inherits="CreandoProductividad.Cursos.Termino_curso" %>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>NOM-035</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../Content/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="../Content/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../Content/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/style.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="icon" href="../images/nom.png" type="image/x-icon">
</head>
<body style="background-color:#ecf3f5">
<%--    <style>
        /*.card{ border-radius:10px; background-image:url(../Content/img/fondo.png); background-size:cover; background-repeat:no-repeat;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important; border:none }*/
        /*h2{ color:navy; text-transform:none; font-weight:900 }*/
        /*.card-header{ background-color:navy; border-color:navy; border-top-left-radius:10px; border-top-right-radius:10px; display:none }*/
        /*.card-body{ padding-top:3% }*/
         /*@media screen and (max-width: 600px) { .card-header{ background-color:#43bfc7; border-color:#43bfc7; border-top-left-radius:10px; border-top-right-radius:10px; display:block }*/
        /*h2{ color:navy; text-transform:none; font-size:25px; font-weight:900 }*/
        /*.card-body{ padding-top:0% }*/
        /*.card{ border-radius:10px; background-image:url(../Content/img/fondo.png); background-size:cover; background-repeat:no-repeat;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important; } }*/
        /*Clase para manipular el color de la barra superior*/
        /*.section-banner { background: rgba(67,191,199,1); }*/      
        /* clase para cambiar el color de letra del banner superior*/
        /*.section-banner h5, h3 { color: white }*/
        /* clase para cambiar el color del borde del banner superior*/
        /*.borde { border-right: 3px solid #f88017; }*/
    </style>--%>
    <%=CargarTema() %>
    <form id="form1" runat="server">
       <div class="wrapper" >
        <div class="content">
           
           <!-- Top Banner-->
             <div class="container-fluid section section-banner text-center d-none d-xl-block">

                <div class="row text-center" style="padding:0.5%; margin-top:0px!important">
                    <div class="col-lg-4 col-md-5 borde"><h3 style="font-size:25px;"> ¡Plataforma NOM-035!</h3></div>
                     <div class="col-lg-5 col-md-5  borde"><h5 style="text-transform:none;">Para cumplir paso a paso con la implementación de la NOM-035</h5></div>
                     <div class="col-lg-3 col-md-2"><button class="button button-primary button-ujarak" style="padding: 10px 23px 10px!important; min-width:100px" onserverclick="Unnamed_ServerClick" runat="server"> Salir</button></div>
                </div>
            </div>
              <div class="container-fluid" style="padding-top: 1%">
            <section>
              
                <div class="container" style="padding-top:3%">
                    <div class="row">
                        <div class="col-lg-12">
                           
                            <div class="card">
                                <div class="card-header" style="  border-top-left-radius:10px;   border-top-right-radius:10px;">
                                
                                </div>
                                <div class="card-body gradient-background">
                                   
                                   <div class="row">
                                       <div class="col-lg-6">
                                           <br />
                                           <h2><b>¡Has completado<br /> el curso correctamente!</b></h2>
                                           <br />
                                           <p>Dirígete a la página ... para seguir con el proceso</p>
                                           <asp:Button ID="btnVolver" runat="server" Text="Ir a página ..." OnClick="btnVolver_Click" class="button button-primary button-ujarak" style="width: 100%" />
                                           
                                       </div>
                                     
                                        <div class="col-lg-6"> 
                                            <br />
                                            <img src="../Content/img/curso-completo2.svg" style="width:100%" />
                                            
                                        </div>
                                   </div><br />  <br />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
        </div>
        </div>
    </form>
</body>
</html>
