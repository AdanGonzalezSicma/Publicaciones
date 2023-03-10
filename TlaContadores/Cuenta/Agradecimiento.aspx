<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agradecimiento.aspx.cs" Inherits="CreandoProductividad.Cuenta.agradecimiento" %>

<!DOCTYPE html>

<html lang="en">
<head>
	<title>NOM-035</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--====-->	
		 <link href="/images/demo/logo-icon2.ico" rel="icon" />
<!--====-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/bootstrap/css/bootstrap.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/animate/animate.css">
<!--====-->	
	<link rel="stylesheet" type="text/css" href="Login/vendor/css-hamburgers/hamburgers.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/select2/select2.min.css">
<!--====-->
		<link rel="stylesheet" type="text/css" href="Login/css/util-min.css">
	<link rel="stylesheet" type="text/css" href="Login/css/main-min.css">
<!--====-->
</head>
<body>
<%--        <style>
        #borderraibown{ border-image: linear-gradient(100deg, #f88017, #43bfc7) 1; }
        #titulorgb{ background: -webkit-linear-gradient(#f88017 , #43bfc7); }
        #titulo{ color:#000080}
        #subtitulo{ color:#000080}
        #btnLogin{ color: #ffffff; background-color:green; }
    </style>--%>
    <%=CargarTema() %>
	<div class="limiter">
		<div class="container-login100" >
			<div id="borderraibown" class="wrap-login100" style="border-top: 15px solid; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;">
				<div class="login100-pic js-tilt" data-tilt>
					<%--<img src="Login/images/img-01.png" alt="IMG">--%>
                    <asp:Image ID="imgnNegocio" runat="server" />
				</div>

				<form class="login100-form validate-form text-center" runat="server">
                    <h1 class="login100-form-title" id="titulorgb" style="font-size: 45px;  -webkit-background-clip: text; -webkit-text-fill-color: transparent;">¡Gracias por registrarte!</h1>
                    <p id="titulo">Por favor, inicia sesión para continuar 
o dirígete a la página de inicio.</p>
					

				
					
					<div class="container-login100-form-btn">
                        <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión"  class="login100-form-btn" OnClick="btnLogin_Click"/>
					</div>

					<div class="text-center p-t-12" id="subtitulo">
						<span class="txt1">
							ir a 
						</span>
						<a class="txt2" href="../index.html">
							Página Principal <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
                    <br />
                    <br />
                    <br />
				
				</form>
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