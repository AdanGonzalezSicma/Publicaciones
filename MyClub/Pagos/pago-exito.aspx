<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pago-exito.aspx.cs" Inherits="Sistema_web.Pagos.pago_exito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="../Content/images/MasControlCLUB.png" type="image/x-icon" />
    <link rel="stylesheet" href="../Content/css/bootstrap.css" />
    <link rel="stylesheet" href="../Content/css/fonts.css" />
    <link rel="stylesheet" href="../Content/css/style.css" />
    <title>Más Control</title>
</head>
<body>
    <style>
        h2 span{
            color:#0090bf
        }
        .login-btn{
            background-color:#ffac00; color:white; padding:10px
        }
         .login-btn:hover{
            background-color:#000; color:white; padding:10px
        }
    </style>
    <form id="form1" runat="server">
        <div class="container-fluid" style="background-color:#0090bf;">
  <br />
            
        </div>
       
        <div class="container" style="padding-top:7%">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 text-center">
                    <br />
                    <img src="../Content/images/agradecimiento.jpg" style="width:100%"/>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 text-center">
                    <br />
                   
                    <img src="../Content/images/logo-mascontrol.png" style="width:40%"/>
                    <br /><br />
                    <h2><b>¡Pago realizado con <span>Éxito</span>!</b></h2>
                    <p style="font-size:18px">Le informamos que su pago se ha realizado correctamente, de click en el botón para iniciar.</p><br />
                    <a href="/Cuenta/iniciar-sesion.aspx" class="btn btn-block login-btn" >Iniciar Sesión</a>
                </div>
            </div>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
