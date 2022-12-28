<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordSuccessful.aspx.cs" Inherits="CreandoProductividad.Cuenta.passwordSuccessful" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>NOM-035</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--====-->
     <link href="/images/demo/logo-icon2.ico" rel="icon" />
    <!--====-->
    <link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/bootstrap/css/bootstrap.min.css" />
    <!--====-->
    <link rel="stylesheet" type="text/css" href="/Cuenta/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <!--====-->
    <link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/animate/animate.css" />
    <!--====-->
    <link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/css-hamburgers/hamburgers.min.css" />
    <!--====-->
    <link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/select2/select2.min.css" />
    <!--====-->
    <link rel="stylesheet" type="text/css" href="/Cuenta/Login/css/util-min.css" />
    <link rel="stylesheet" type="text/css" href="/Cuenta/Login/css/main-min.css" />
    <!--====-->
</head>
<body>
      <%=CargarTema() %>
    <div class="limiter">
        <div class="container-login100">
            <div id="borderraibown" class="wrap-login100 borderraibown" style="border-top: 15px solid; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;    padding: 51px 130px 33px 95px;
">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <asp:Image ID="imgnNegocio" runat="server" width="250px"/>
                    </div>
                    <div class="col-lg-12">
                        <form class=" validate-form">
                            <br />
                            <h1 id="titulo" class="login100-form-title" style="font-size: 30px;">¡La contraseña ha sido cambiada correctamente!
                            </h1>
                            <div class="text-center">
                                <h5 id="titulo"><b>Por favor inicia sesión de nuevo</b></h5>
                            </div>
                            
                            <br />
                            <div class="container-login100-form-btn">
                                <a href="/cuenta/login.aspx" class="login100-form-btn" id="btnLogin">
                                    Iniciar sesión
                                </a>
                            </div>
                            <br />
                            <br />
                            <br />
                        </form>
                    </div>
                </div>


                <br />

                <div class="login100-more" style="background-image: url('images/bg-02-min.jpg');">
                </div>
            </div>
        </div>
    </div>
</body>
</html>
