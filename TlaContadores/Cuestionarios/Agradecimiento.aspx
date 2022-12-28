<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agradecimiento.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Agradecimiento" %>


<!DOCTYPE html>

<html lang="en">
<head>
	<title>NOM-035</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--====-->	
		<link href="/images/demo/logo-icon2.ico" rel="icon" />
<!--====-->
	<link rel="stylesheet" type="text/css" href="../cuenta/Login/vendor/bootstrap/css/bootstrap.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="../cuenta/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="../cuenta/Login/vendor/animate/animate.css">
<!--====-->	
	<link rel="stylesheet" type="text/css" href="../cuenta/Login/vendor/css-hamburgers/hamburgers.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="../cuenta/Login/vendor/select2/select2.min.css">
<!--====-->
		<link rel="stylesheet" type="text/css" href="../cuenta/Login/css/util-min.css">
	<link rel="stylesheet" type="text/css" href="../cuenta/Login/css/main-min.css">
<!--====-->
</head>
<body>






    <%= CargarTema() %>


	<div class="limiter">
		<div class="container-login100" >
			<div id="borderraibown" class="wrap-login100" style="border-top: 15px solid; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;">
				<div class="login100-pic js-tilt" data-tilt>
					<%--<img src="Login/images/img-01.png" alt="IMG">--%>
                    <asp:Image ID="imgnNegocio" runat="server" />
				</div>

				<form class="login100-form validate-form text-center" runat="server">
                    <h1 class="login100-form-title" id="titulorgb" style="font-size: 45px;  -webkit-background-clip: text; -webkit-text-fill-color: transparent;">¡Gracias por terminar el cuestionario!</h1>
                   <%-- <p id="titulo">Por favor, inicia sesión para continuar o dirígete a la página de inicio.</p>--%>
					

				
					
					<div class="container-login100-form-btn">
                        <asp:Button ID="btnLogin" runat="server" Text="ir a la Página Principal"  class="login100-form-btn" OnClick="btnLogin_Click"/>
					</div>

                    <br />
                    <br />
                    <br />
				
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--====-->	
	<script src="../cuenta/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--====-->
	<script src="../cuenta/Login/vendor/bootstrap/js/popper.js"></script>
	<script src="../cuenta/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--====-->
	<script src="../cuenta/Login/vendor/select2/select2.min.js"></script>
<!--====-->
	<script src="../cuenta/Login/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--====-->
	<script src="../cuenta/Login/js/main.js"></script>

</body>
</html>