<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecover.aspx.cs" Inherits="CreandoProductividad.Cuenta.PasswordRecover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>NOM-035</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--====-->	
	 <link href="/images/demo/logo-icon2.ico" rel="icon" />
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/bootstrap/css/bootstrap.min.css"/>
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/animate/animate.css"/>
<!--====-->	
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/css-hamburgers/hamburgers.min.css"/>
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/select2/select2.min.css"/>
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/css/util-min.css"/>
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/css/main-min.css"/>
<!--====-->
</head>
<body style="background-color: #666666;">
        <%=CargarTema() %>
    <div class="limiter">
        <div class="container-login100">
            <div id="borderraibown" class="wrap-login100 borderraibown" style="border-top: 15px solid;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;" >
                	<div class="login100-pic js-tilt" data-tilt>
					  <asp:Image ID="imgnNegocio" runat="server" />
				</div>
                <form id="form1" runat="server" class="login100-form validate-form">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <span class="login100-form-title" id="titulo">
						Recuperar Contraseña
					</span>
                    <div class="wrap-input100 validate-input" data-validate="El correo no puede estar vacío">
                        <asp:TextBox ID="txtUsuario" TextMode="Email" class="input100" runat="server" placeholder="Teléfono/Correo"></asp:TextBox>
                       <span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                    </div>                    
                    <div class="wrap-input100 validate-input" data-validate="El correo no puede estar vacío">
                        <asp:TextBox ID="txtUsuarioConfirm" TextMode="Email" class="input100" runat="server" placeholder="Confirma Teléfono/Correo"></asp:TextBox>
                          <span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                    </div>   

                    <asp:Label ID="lblError" ForeColor="Red" runat="server" Text="Error" Visible="false"></asp:Label>
                    <div class="container-login100-form-btn">
                        <asp:Button ID="btnLogin" runat="server" Text="Recuperar Contraseña" class="login100-form-btn" OnClick="btnLogin_Click"/>
                        
                    </div>
                    <br />
                    <br />
					<div class="text-center p-t-12">
						<a class="txt2" href="Login.aspx">
							Inicia sesión
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
                
                </form>
                <div class="login100-more" style="background-image: url('images/bg-02-min.jpg');">
                </div>
            </div>
        </div>
    </div>





	
<!--====-->	
	<script src="Login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--====-->
	<script src="Login/vendor/bootstrap/js/popper.js"></script>
	<script src="Login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--====-->
	<script src="Login/vendor/select2/select2.min.js"></script>
<!--====-->
	<script src="Login/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--====-->
	<script src="Login/js/main.js"></script>
</body>
</html>
