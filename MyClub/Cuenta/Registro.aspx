<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Sistema_web.Cuenta.Registro" %>

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
<body>
    <style>
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
                <div class="col-sm-6 login-section-wrapper " style="padding-top: 30px">
                    <div class="brand-wrapper">
                        <asp:Image ID="imgnNegocio" runat="server" alt="logo" class="logo" />

                    </div>
                    <div class="login-wrapper">
                        <h1 class="login-title text-center">Iniciar Sesión</h1>
                        <form id="form1" runat="server">
                            <div class="form-group">
                                <label>Nombre</label>
                                <asp:TextBox ID="txtNombreEmpresa" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqtxtNombreEmpresa" ControlToValidate="txtNombreEmpresa" runat="server" ErrorMessage="Este campo es obligatorio" Display="Dynamic" ValidationGroup="registro" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-4">
                                <label>Tipo Membresía</label>
                                <dx:ASPxComboBox ID="ddlTipoMembrecia" NullText="Selecciona tu membresía" TextField="Descripcion" ValueField="Oid" runat="server" DataSourceID="SqlDSTipoMembrecia" Width="100%" Height="45px" class="form-control" EnableCallbackMode="true" OnItemTextCellPrepared="ddlTipoMembrecia_ItemTextCellPrepared" BackColor="Black"></dx:ASPxComboBox>
                                <asp:RequiredFieldValidator ID="reqddlTipoMembrecia" ControlToValidate="ddlTipoMembrecia" runat="server" ErrorMessage="Este campo es obligatorio" Display="Dynamic" ValidationGroup="registro" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-4">
                                <label>Código Postala</label>
                                <asp:TextBox ID="txtCodigoPostal" runat="server" class="form-control" placeholder="Código Postal"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqtxtCodigoPostal" ControlToValidate="txtCodigoPostal" runat="server" ErrorMessage="Este campo es obligatorio" Display="Dynamic" ValidationGroup="registro" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-4">
                                <label>Teléfono/Correo</label>
                                <asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="Teléfono/Correo"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqtxtUsuario" ControlToValidate="txtUsuario" runat="server" ErrorMessage="Este campo es obligatorio" Display="Dynamic" ValidationGroup="registro" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-4">
                                <label>Contraseña</label>
                                 <div class="input-wrapper">
                              <asp:TextBox ID="txtPassword" runat="server"  name="txtPassword" class="form-control" placeholder="Contraseña"  type="password"></asp:TextBox>
                                      <div class="text-right">
                      <i class="fa fa-eye-slash  m-l-5 showpwd" onclick="showPwd('txtPassword', this)"></i></div>
                        </div>
                               <%-- <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Contraseña" TextMode="Password"></asp:TextBox>--%>
                                <asp:RequiredFieldValidator ID="reqtxtPassword" ControlToValidate="txtPassword" runat="server" ErrorMessage="Este campo es obligatorio" Display="Dynamic" ValidationGroup="registro" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group mb-4">
                                <label>Confirmar Contraseña</label>
                                 <div class="input-wrapper">
                              <asp:TextBox ID="txtPasswordConfirm" runat="server"  name="txtPasswordConfirm" class="form-control" placeholder="Confirmar Contraseña"  type="password"></asp:TextBox>
                                      <div class="text-right">
                      <i class="fa fa-eye-slash  m-l-5 showpwd" onclick="showPwd('txtPasswordConfirm', this)"></i></div>
                        </div>
                               <%-- <asp:TextBox ID="txtPasswordConfirm" runat="server" class="form-control" placeholder="Confirmar Contraseña" TextMode="Password"></asp:TextBox>--%>
                                <asp:RequiredFieldValidator ID="reqtxtPasswordConfirm" ControlToValidate="txtPasswordConfirm" runat="server" ErrorMessage="Este campo es obligatorio" Display="Dynamic" ValidationGroup="registro" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" runat="server" id="checkTerminos" value="">
                                    <a href="/../terminos-condiciones.html">Aceptar Términos y Condiciones</a></label>
                                <asp:Label Text="text" ID="lbl" runat="server" Visible="false" />
                            </div>
                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>

                            <asp:Button ID="btnRegistro" runat="server" Text="Registrarse" class="btn btn-block login-btn" OnClick="btnRegistro_Click" ValidationGroup="registro" />


                            <div class=" text-center p-t-12" id="subtitulo">
                                <p class="login-wrapper-footer-text"><b>
                                    <asp:LinkButton ID="lbtnLogin" runat="server" OnClick="lbtnLogin_Click" class="text-reset">¿Ya tienes una cuenta? Inicia Sesión</asp:LinkButton></b></p>
                                <span class="txt1">ir a 
                                </span>
                                <a class="txt2" href="../index.aspx">Página Principal <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                                </a>
                            </div>
                        </form>


                    </div>
                </div>
                <div class="col-sm-6 px-0 d-none d-sm-block">
                    <img src="../../Content/images/login.png" alt="login image" class="login-img">
                </div>
            </div>
        </div>
    </main>

    <asp:SqlDataSource runat="server" ID="SqlDSTipoMembrecia" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Descripcion], [Oid], [Caracteristicas] FROM [OpeMembresias] ORDER BY [Orden]"></asp:SqlDataSource>



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
