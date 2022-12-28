<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="CreandoProductividad.Cuenta.Registro_Propuesta" %>

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
<%--    <style>
        #borderraibown{ border-image: linear-gradient(100deg, #f88017, #43bfc7) 1; }
        #titulo{ color:#000080; }
        #btnRegistro{ color: #ffffff; background-color:green; }
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
        <div class="container-login100">
            <div id="borderraibown" class="wrap-login100" style="border-top: 15px solid;  box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important;">
                <div class="login100-pic js-tilt" data-tilt>
                    <br>
                    <br>
                    <br>
                    <asp:Image ID="imgnNegocio" runat="server" />
                    <%--<img src="/Login/images/img-01.png" alt="IMG">--%>
                </div>

                <form class="login100-form validate-form" id="form1" runat="server">
                    <span class="login100-form-title" id="titulo">Crear Cuenta
                    </span>
                    <div class="wrap-input100 validate-input" data-validate="Escriba el nombre de su empresa">
                        <asp:TextBox ID="txtNombreEmpresa" runat="server" class="input100" placeholder="Nombre de Empresa" autocomplete="off"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-briefcase" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Escriba el RFC de su empresa">
                        <asp:TextBox ID="txtRFC" runat="server" class="input100" placeholder="RFC de la Empresa" autocomplete="off" />
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-briefcase" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Escriba el código postal de su empresa">
                        <asp:TextBox ID="txtCodigoPostal" runat="server" class="input100" placeholder="Código Postal" autocomplete="off"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Escriba el teléfono o correo de su empresa">
                        <asp:TextBox ID="txtUsuario" runat="server" class="input100" placeholder="Teléfono/Correo" autocomplete="off"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Escriba su contraseña">
                        <div class="form-group element">
                            <asp:TextBox ID="txtPassword" runat="server" class="input100" placeholder="Contraseña" autocomplete="off" name="txtPassword" type="password"></asp:TextBox>
                         <i class="fa fa-eye-slash showpwd" onclick="showPwd('txtPassword', this)"></i>
                        </div>
                      
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Confirme su contraseña">
                          <div class="form-group element">
                           <asp:TextBox ID="txtPasswordConfirm" runat="server" class="input100" placeholder="Confirmar Contraseña"  autocomplete="off"  name="txtPasswordConfirm" type="password"></asp:TextBox>
                         <i class="fa fa-eye-slash showpwd" onclick="showPwd('txtPasswordConfirm', this)"></i>
                        </div>
                        
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" runat="server" id="checkTerminos" value=""> <a href="/../terminos-condiciones.html">Aceptar Términos y Condiciones</a></label>
                        <asp:Label Text="text" ID="lbl" runat="server" Visible="false"/>
                        </div>
                      <div class="checkbox">
                        <label>
                            <input type="checkbox" runat="server" id="Checkbox1" value=""> <a href="/../Aviso-privacidad.html">Aceptar Aviso de privacidad</a></label>
                       
                        </div>
                    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                    <div class="container-login100-form-btn">
                        <asp:Button ID="btnRegistro" runat="server" Text="Registrarse" class="login100-form-btn" OnClick="btnRegistro_Click" />
                    </div>

                    <br>
                    <br>
                    <div class="text-center ">
                        <a class="txt2">
                            <asp:LinkButton ID="lbtnLogin" runat="server" OnClick="lbtnLogin_Click">¿Ya tienes una cuenta? Inicia Sesión</asp:LinkButton>
                            
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
    <script src="Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--====-->
    <script src="Login/vendor/bootstrap/js/popper.js"></script>
    <script src="Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--====-->
    <script src="Login/vendor/select2/select2.min.js"></script>
    <!--====-->
    <script src="Login/vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--====-->
    <script src="Login/js/main.js"></script>

</body>
</html>
