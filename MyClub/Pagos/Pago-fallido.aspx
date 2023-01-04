<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago-fallido.aspx.cs" Inherits="Sistema_web.Pagos.Pago_error" %>

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
            color:#f22300
        }
        .login-btn{
            background-color:#f22300; color:white; padding:10px
        }
         .login-btn:hover{
            background-color:#000; color:white; padding:10px
        }
    </style>
    <form id="form1" runat="server">
            <div class="container-fluid" style="background-color:#f22300;">
  <br />
            
        </div>
       
        <div class="container" style="padding-top:7%">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 text-center">
                    <br /><br />
                    <img src="../Content/images/error-pelotas2.jpg" style="width:100%"/>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 text-center">
                    <br />
                   
                    <img src="../Content/images/logo-mascontrol.png" style="width:40%"/>
                    <br /><br />
                    <h2><b>¡Ha ocurrido un <span>Error</span>!</b></h2>
                    <p style="font-size:18px">Lamentablemente el pago no se ha podido realizar, te invitamos a volver a internarlo.</p><br />
                    <asp:Button ID="btnRegresar" Text="Regresar" class="btn btn-block login-btn" runat="server" OnClick="btnRegresar_Click"/>
                </div>
            </div>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
