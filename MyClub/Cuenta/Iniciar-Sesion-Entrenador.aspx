<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iniciar-Sesion-Entrenador.aspx.cs" Inherits="Sistema_web.Cuenta.Iniciar_Sesion_Entrenador" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <title>Más Control</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="LoginV2/assets/css/login.css"/>
     <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon"/>
</head>

<dx:ASPxLoadingPanel ID="LoadingLoginA" ClientInstanceName="LoadingLoginA" runat="server"  Text="Cargando" Modal="true" ShowImage="true" Image-Url="/content/images/gif2.gif" Border-BorderColor="Transparent" Border-BorderWidth="0" Image-Width="150px" ImagePosition="Top" CssClass="shadow-none" Height="100%" Width="100%" Style="background-color:#ffffffa8"></dx:ASPxLoadingPanel>
<body style="background-color: #03a9f408">
     <script>
         function MostarDistractor() {
            LoadingLoginA.Show();
        }
    </script>
    <style>
        .login-wrapper a.forgot-password-link{
            margin-bottom:10px!important
        }
        .txt1{
            color:white
        }
    </style>
   
     <main>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-6 login-section-wrapper ">
          <div class="brand-wrapper">
              <img src="../Content/images/logo-mascontrol.png" style="width:250px"/>
            <%--  <asp:Image ID="imgnNegocio" runat="server" class="logo"  />--%>
           
          </div>
          <div class="login-wrapper" >
            <h1 class="login-title text-center">Iniciar Sesión</h1>
            <form id="form1" runat="server">

                <div class="form-group">
                    <label for="Curp">Código del club</label>
                    <asp:TextBox ID="txtCodigoClub" runat="server" Width="100%" class="form-control" placeholder="Ingrese su Correo" CssClass="form-control" required></asp:TextBox>

                </div>
              <div class="form-group">
                <label for="Curp">Correo</label>
                   <asp:TextBox ID="txtCorreo" runat="server" Width="100%" class="form-control" placeholder="Ingrese su Correo" CssClass="form-control" required ></asp:TextBox>
               
              </div>
              <div class="form-group mb-4">
                <label for="nip">NIP</label>             
                    <asp:TextBox ID="txtNip" runat="server"  class="form-control" placeholder="Ingrese su NIP" required></asp:TextBox>
              </div>   
                <asp:LinkButton ID="lbtnIniciarSesion" runat="server" class="btn btn-block login-btn" Onclientclick="MostarDistractor()" OnClick="lbtnIniciarSesion_Click">Iniciar Sesión</asp:LinkButton>
                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
            </form>
            <a href="password-recovery.aspx" class="forgot-password-link" style="padding-bottom:10px!important"><b>¿Olvidaste la contraseña?</b></a>
          <%--  <p class="login-wrapper-footer-text"><b>¿Aún no tienes una cuenta? <a href="Registro.aspx" class="text-reset">Registrate</a></b></p>--%>
                    <div class=" text-center p-t-12" id="subtitulo">
                           <p class="login-wrapper-footer-text"><b>¿Aún no tienes una cuenta? <a href="/Inscripciones/Menu.aspx?mostrarregistro=1" class="text-reset">Registrate</a></b></p>
                        <span class="txt1">ir a 
                        </span>
                        <a class="txt2" href="../index.aspx" >Página Principal <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
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


   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
