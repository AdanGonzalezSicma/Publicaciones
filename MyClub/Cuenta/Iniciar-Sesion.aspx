<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iniciar-Sesion.aspx.cs" Inherits="Sistema_web.Cuenta.IniciarSesion" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Más Control</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="LoginV2/assets/css/login.css" />
    <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon" />
</head>
    <dx:ASPxLoadingPanel ID="LoadingLogin" ClientInstanceName="LoadingLogin" runat="server"  Text="Cargando" Modal="true" ShowImage="true" Image-Url="/content/images/gif2.gif" Border-BorderColor="Transparent" Border-BorderWidth="0" Image-Width="150px" ImagePosition="Top" CssClass="shadow-none" Height="100%" Width="100%" Style="background-color:#ffffffa8"></dx:ASPxLoadingPanel>
<body style="background-color: #03a9f408">
    <script>
         function MostarDistractor() {
            LoadingLogin.Show();
        }
    </script>
    <style>
        .login-wrapper a.forgot-password-link {
            margin-bottom: 10px !important
        }

        .txt1 {
            color: white
        } 
       
 .input-wrapper {
  position: relative;

}

  .showpwd {
    position: absolute;
  width: 20px;
  height: 20px;
  left: 90%;
  top: 50%;
  transform: translateY(-50%);
  color:#f7aa00;
   cursor: pointer;
}
    </style>
   
       
    <%=CargarTema() %>
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 login-section-wrapper ">
                    <div class="brand-wrapper">
                        <asp:Image ID="imgnNegocio" runat="server" class="logo" />

                    </div>
                    <div class="login-wrapper">
                        <h1 class="login-title text-center">Iniciar Sesión</h1>
                        <form id="form1" runat="server">
<%--                            <div class="form-group">
                                <label for="email">Código del Club</label>
                                <asp:TextBox ID="txtCodigoClub" runat="server" Width="100%" class="form-control" placeholder="Ingresecódigo del club" CssClass="form-control" required></asp:TextBox>
                            </div>--%>
                            <div class="form-group">
                                <label for="email">Usuario</label>
                                <asp:TextBox ID="txtUsuario" runat="server" Width="100%" class="form-control" placeholder="Ingrese su Usuario" CssClass="form-control" required></asp:TextBox>
                            </div>
                            <div class="form-group mb-4">
                                <label for="password">Contraseña</label>
                                  <div class="input-wrapper">
                              <asp:TextBox ID="txtPassword" runat="server"  name="txtPassword" class="form-control" placeholder="Contraseña"  type="password" required></asp:TextBox>
                                      <div class="text-right">
                      <i class="fa fa-eye-slash  m-l-5 showpwd" onclick="showPwd('txtPassword', this)"></i></div>
                        </div>
                               <%-- <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Ingrese su Contraseña" type="password" required></asp:TextBox>
                                   <i class="fa fa-eye-slash showpwd" onclick="showPwd('txtPassword', this)" style="color:white; font-size:13px"></i>--%>
                            </div>

                            <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" OnClick="btnIniciarSesion_Click" class="btn btn-block login-btn" Onclientclick="MostarDistractor()"/>
                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </form>
                        <a href="password-recovery.aspx" class="forgot-password-link" style="padding-bottom: 10px!important"><b>¿Olvidaste la contraseña?</b></a>
                        <%--  <p class="login-wrapper-footer-text"><b>¿Aún no tienes una cuenta? <a href="Registro.aspx" class="text-reset">Registrate</a></b></p>--%>
                        <div class=" text-center p-t-12" id="subtitulo">
                            <p class="login-wrapper-footer-text"><b>¿Aún no tienes una cuenta? <a href="Registro.aspx" class="text-reset">Registrate</a></b></p>
                            <span class="txt1">ir a 
                            </span>
                            <a class="txt2" href="../index.aspx">Página Principal <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 px-0 d-none d-sm-block" style="background-color:black">
                    <img src="../../Content/images/login.png" alt="login image" class="login-img"/>
                </div>
            </div>
        </div>
    </main>

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
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
