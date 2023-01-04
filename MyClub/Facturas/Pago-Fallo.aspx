<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago-Fallo.aspx.cs" Inherits="Sistema_web.Facturas.Pago_Fallo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Error de Pago</title>
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
        <nav class="navbar navbar-expand-sm " style="background-color:#f7aa00">
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
               
                <h1>Lo sentimos, ha fallado el pago</h1>
                <p>Le sugerimos volver a intentarlo o comunicarse con nuestro equipo de atención usuario</p>
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
                <h3>Su pago no se ha podido realizar con éxito</h3>
               
               
            <br /> 
            <ul>
                    <li>Revise que el número de tarjeta sea el correcto</li>
                     <li>Revise su conexión de internet </li>
                    
                </ul>
                    <br />
                    <a href="https://www.mascontrol.club/Facturas/Facturas.aspx" class="btn btn-danger" style="width:100%">Volver a Facturas</a>
                </div>
                <div class="col-lg-6 col-sm-12 col-md-6 text-right">
<%--                    <img src="../Content/images/Americano.jpg"   style="width:90%"/>--%>
              <%--      <img src="../Content/images/baseball.jpg"   style="width:90%"/>--%>
             <%--       <img src="../Content/images/basketball-p.jpg"   style="width:90%"/>--%>
                    <%--<img src="../Content/images/Fut.jpg"   style="width:90%"/>--%>
                   <%-- <img src="../Content/images/Golf.jpg"   style="width:90%"/>--%>
                   <%-- <img src="../Content/images/Tenis.jpg"  style="width:90%"/>--%>
                    <asp:Image ID="imgDeporte" runat="server" style="width:90%" />
                    <%--<img src="../Content/images/39d54f4a5e8d1cf5186aadd8722ad659.png"  style="width:90%"/>--%>
                </div>
            </div>
          
        </div>
    </form>
</body>
</html>
