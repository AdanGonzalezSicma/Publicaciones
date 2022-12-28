<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CreandoProductividad.Cuenta.Login_propuesta" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html lang="en">
<head>
	<title>NOM-035</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--====-->	
	 <link href="/images/demo/logo-icon2.ico" rel="icon" />
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/bootstrap/css/bootstrap.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/animate/animate.css">
<!--====-->	
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/css-hamburgers/hamburgers.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/vendor/select2/select2.min.css">
<!--====-->
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/css/util-min.css">
	<link rel="stylesheet" type="text/css" href="/Cuenta/Login/css/main-min.css">
<!--====-->
</head>
<body>
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" BackColor="Transparent" Image-Width="100px" ImagePosition="Top"></dx:ASPxLoadingPanel>
    <script>
        function Distractor() {
            loadingPanel.Show();
        }
    </script>
   <%-- <style>
     /*#borderraibown{ border-image: linear-gradient(100deg, #f88017, #43bfc7) 1; }
     #titulo{ color:#000080}
     #btnIngresar{ color: #ffffff; background-color:green; }*/
    </style>--%>
    <%=CargarTema() %>
    <style>
        .relative {
  position: relative;
  width: 100%;
  }
  .relative i {
    position: absolute;
    top: 3px;
    right: 5px;
  }
  .showpwd {
  position: absolute;
  right: 25px;
  top: 20px;
  cursor: pointer;
}

    </style>
	<div class="limiter">
		<div class="container-login100" >
			<div id="borderraibown" class="wrap-login100" style="border-top: 15px solid;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;">
				<div class="login100-pic js-tilt" data-tilt>
                    <asp:Image ID="imgnNegocio" runat="server" />
					<%--<img src="Login/images/img-01.png" alt="IMG">--%>
				</div>

				<form id="form1" class="login100-form validate-form" runat="server">
					<span class="login100-form-title" id="titulo">
						Iniciar Sesión
					</span>

					<div class="wrap-input100 validate-input" data-validate="Introduce teléfono o Correo">
                        <asp:TextBox ID="txtUsuario" runat="server" class="input100" placeholder="Teléfono/Correo"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

                    <div class="wrap-input100 validate-input" data-validate="La contraseña es requerida">
                        <div class="form-group element">
                              <asp:TextBox ID="txtPassword" runat="server"  name="txtPassword" class="input100" placeholder="Contraseña"  type="password"></asp:TextBox>
                      <i class="fa fa-eye-slash showpwd" onclick="showPwd('txtPassword', this)"></i>
                        </div>

                     

                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>
					 <asp:CheckBox  runat="server"  class="input-checkbox100" BorderColor="#CCCCCC" />
                            <label class="txt2" for="ckb1" >
                                Recordarme 	
                            </label>
					<div class="container-login100-form-btn">
                        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="login100-form-btn" OnClick="btnIngresar_Click" onmouseup="Distractor()" />
					</div>
                    <asp:Label ID="lblError" runat="server" Text="Error" ForeColor="Red" Visible="false"></asp:Label>
					<div class="text-center p-t-12">
					<%--	<span class="txt1">
							¿Olvide mi
						</span>
						<a class="txt2" href="PasswordRecover.aspx">
							Usuario / Contraseña?
						</a>--%>
					</div>

					<div class="text-center p-t-12">

                        <a class="txt2">
                            <asp:LinkButton ID="lbtnOlvideContra" runat="server" onmouseup="Distractor()" OnClick="lbtnOlvideContra_Click">¿Olvidaste la contraseña?</asp:LinkButton>
							
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
                          <br />
                        <a class="txt2">
                            <asp:LinkButton ID="lbtnRegistro" runat="server" onmouseup="Distractor()" OnClick="lbtnRegistro_Click">Crea una cuenta</asp:LinkButton>
							
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
    <script>
        function showPwd(id, el) {
  let x = document.getElementById(id);
  if (x.type === "password") {
    x.type = "text";
    el.className = 'fa fa-eye showpwd';
  } else {
    x.type = "password";
    el.className = 'fa fa-eye-slash showpwd';
  }
}
    </script>
	
<!--====-->	
	<%--<script src="Login/vendor/jquery/jquery-3.2.1.min.js"></script>--%>
<!--====-->
	<script async src="/Cuenta/Login/vendor/bootstrap/js/popper.js"></script>
	<%--<script src="Login/vendor/bootstrap/js/bootstrap.min.js"></script>--%>
<!--====-->
	<%--<script src="Login/vendor/select2/select2.min.js"></script>--%>
<!--====-->
<%--	<script src="Login/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>--%>
<!--====-->
	<%--<script src="Login/js/main-min.js"></script>--%>

</body>
</html>
