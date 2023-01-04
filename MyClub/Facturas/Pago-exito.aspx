<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago-exito.aspx.cs" Inherits="Sistema_web.Facturas.Pago_exito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Pago Exitoso</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
 <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon"/>
</head>
<body>
    <%=CargarTema() %>
<%--     <style>
        .btn-info{
            background-color:#0090bf
        }
        .card-header{
          background-color:#0090bf;
          color:white
        }
        .banner{
            padding:5%
        }
        h1{
            font-size:50px;
            color:white;
        }
        p{
            font-size:18px;
            color:white
        }
    .navbar-expand-sm{
    background-color:#f7aa00
    }
    </style>--%>
    <nav class="navbar navbar-expand-sm" >
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    
   <%-- <img src="../Content/images/logo-mascontrolVB.png" alt="logo" style="width:150px;"/>--%>
  </a>
  <br />
        <br />
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="btn btn-info" href="/index.aspx" ><i class="fas fa-arrow-left"></i> Volver</a>
    </li>
   
    
  </ul>
</nav>
    <form id="form1" runat="server">
        
        <div class="container-fluid" style="background:url(../Content/images/campo.jpg); background-size:cover">
            <div class="banner text-center">
               
                <h1>Gracias por su Pago</h1>
                <p>Esperamos que tenga una experiencia positiva de nuestros servicios</p>
            </div>

        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-12 col-md-6">
  
                <div>
  <img src="../Content/images/logo-mascontrol.png" style="width:300px"/>
                </div>
            <br />
                <h3>Su pago ha sido realizado con éxito</h3>
               
               
            <br /> <br />
            <ul>
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu erat ipsum. </li>
                     <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu erat ipsum. </li>
                     <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu erat ipsum. </li>
                </ul>
                    <a class="btn btn-danger" style="width:100%">Volver a página principal</a>
                </div>
                <div class="col-lg-6 col-sm-12 col-md-6 text-right">
                    <img src="../Content/images/Sistema-Responsive.png"  style="width:80%"/>
                </div>
            </div>
          
        </div>
    </form>
</body>
</html>
