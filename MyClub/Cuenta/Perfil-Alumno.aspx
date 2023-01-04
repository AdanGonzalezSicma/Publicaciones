<%@ Page Title="" Language="C#" MasterPageFile="~/Site-Alumnos.Master" AutoEventWireup="true" CodeBehind="Perfil-Alumno.aspx.cs" Inherits="Sistema_web.Cuenta.Perfil_Alumno" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Perfil del Alumno</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        @media screen and (max-width: 600px) {
            .cardsDatos {
                display: none;
            }
        }

        .cardInput {
            padding: 0rem !important
        }
        /*menu movil botton*/
        .mobile-bottom-nav {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            will-change: transform;
            transform: translateZ(0);
            display: flex;
            height: 50px;
            box-shadow: 0 -2px 5px -2px #333;
            background-color: #fff;
        }

        .mobile-bottom-nav__item {
            flex-grow: 1;
            text-align: center;
            font-size: 12px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .mobile-bottom-nav__item--active a {
            color: #f7aa00 !important;
        }

        .mobile-bottom-nav__item-content {
            display: flex;
            flex-direction: column;
        }

            .mobile-bottom-nav__item-content a {
                color: #0090bf
            }

        i {
            font-style: normal !important;
            /*font-size: 30px !important*/
        }

        @media screen and (min-width: 850px) {
            .mobile-bottom-nav {
                display: none;
            }
        }

        @media screen and (max-width: 850px) {
            .nav {
                display: none;
            }
        }
    </style>
        <script>
   
        function myfunction2() {
            document.getElementById("menu1ul").className = "active";
           
            document.getElementById("menu2ul").className = "normal";
            document.getElementById("menu1").className = "container tab-pane active";
          
            document.getElementById("menu2").className = "container tab-pane fade";
        }
        function myfunction3() {
            document.getElementById("menu2ul").className = "active";
           
            document.getElementById("menu1ul").className = "normal";
            document.getElementById("menu2").className = "container tab-pane active";
          
            document.getElementById("menu1").className = "container tab-pane fade";
            }
            function ShowPantallaCarga() {
                LoadingSiteMaster.Show();
            }
        </script>

    <div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-lg-3 cardsDatos">
                    <div class="card card-primary card-outline cardFoto">
                        <div class="card-body text-center">
                            <asp:Image ID="imgPerfil" runat="server" Style="width: 100%" />
                            <h3 class="profile-username text-center">
                                <asp:Label ID="lblUsuario" runat="server" Text="@Usuario"></asp:Label>
                            </h3>
                            <p class="text-center ">
                                <asp:Label ID="lblTelefono" runat="server" Text="@Telefono"></asp:Label>
                            </p>
                            <p class=" text-center ">
                                <asp:Label ID="lblCorreo" runat="server" Text="@Correo"></asp:Label>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div class="card card-primary card-outline cardAcercad">
                        <div class="card-header">
                            <h3 class="card-title text-center"><b>A cerca de</b></h3>
                        </div>
                        <div class="card-body datos">
                            <strong><i class="fas fa-book mr-1"></i>Estado</strong>
                            <p class="text-muted">
                                <asp:Label ID="lblEstado" runat="server" Text="Estado"></asp:Label>
                            </p>
                            <hr>
                            <strong><i class="fas fa-map-marker-alt mr-1"></i>Localidad</strong>
                            <p class="text-muted">
                                <asp:Label ID="lblMunicipio" runat="server" Text="Localidad"></asp:Label>
                            </p>
                            <hr>
                            <strong><i class="fas fa-map-marker-alt mr-1"></i>Código postal</strong>
                            <p class="text-muted">
                                <asp:Label ID="lblCodigoPostal" runat="server" Text="CP"></asp:Label>
                            </p>
                            <hr>
                        </div>
                    </div>
                    <br />
                </div>
                <div class="col-md-8 col-lg-9">
                    <div class="card" style="height: 100%">
                        <div class="card-header p-2">
                            <ul class="nav nav-pills" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="pill" href="#menu1">Datos del Usuario</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#menu2">Cambiar Contraseña</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body cardInput">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="menu1" class="container tab-pane active">
                                    <br />
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-2"></div>
                                        <div class="col-lg-8">
                                            <div>
                                                <div class="form-group">
                                                    <label for="usr">Nombre(s):</label>
                                                    <asp:TextBox ID="txtNombre" MaxLength="100" runat="server" class="form-control" placeholder="Ingresar nombre del usuario."></asp:TextBox>
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtNombre" ValidationGroup="PerfilUsuario" ControlToValidate="txtNombre" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <div class="form-group">
                                                    <label for="usr">Apellidos:</label>
                                                    <asp:TextBox ID="txtAPaterno" MaxLength="100" runat="server" class="form-control" placeholder="Ingresar apellido paterno."></asp:TextBox>
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtAPaterno" ValidationGroup="PerfilUsuario" ControlToValidate="txtAPaterno" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                
                                                <div class="form-group">
                                                    <label for="usr">Correo Electrónico:</label>
                                                    <asp:TextBox ID="txtCorreoUsuario" MaxLength="13" runat="server" class="form-control" placeholder="Ingresar correo del usuario." />
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtCorreoUsuario" ValidationGroup="PerfilUsuario" ControlToValidate="txtCorreoUsuario" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <div class="form-group">
                                                    <label for="usr">Teléfono:</label>
                                                    <asp:TextBox ID="txtTelefonoUsuario" MaxLength="13" runat="server" class="form-control" placeholder="Ingresar teléfono del usuario." />
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtTelefonoUsuario" ValidationGroup="PerfilUsuario" ControlToValidate="txtTelefonoUsuario" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <asp:Button ID="btnGuardarDatosUsuario" ValidationGroup="PerfilUsuario" runat="server" Text="Guardar" class="btn btn-cancelar" OnClick="btnGuardarDatosUsuario_Click"  OnClientClick="ShowPantallaCarga()" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu2" class="container tab-pane fade">
                                    <br />
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-2"></div>
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label for="usr">Nueva Contraseña:</label>
                                                <asp:TextBox ID="txtContraseniaNueva" MaxLength="100" runat="server" class="form-control" placeholder="******"></asp:TextBox>
                                            </div>
                                            <asp:RequiredFieldValidator ID="req_txtContraseniaNueva" ValidationGroup="NewPassword" ControlToValidate="txtContraseniaNueva" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                            <div class="form-group">
                                                <label for="usr">Confirmar Contraseña:</label>
                                                <asp:TextBox ID="txtConfirmarContrasenia" MaxLength="100" runat="server" class="form-control" placeholder="******"></asp:TextBox>
                                            </div>
                                            <asp:RequiredFieldValidator ID="req_txtConfirmarContrasenia" ValidationGroup="NewPassword" ControlToValidate="txtConfirmarContrasenia" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="compare_txtConfirmarContrasenia" runat="server" ErrorMessage="Las contraseñas no coinsiden" ControlToValidate="txtContraseniaNueva" ControlToCompare="txtConfirmarContrasenia" Display="Dynamic" ForeColor="Red" ValidationGroup="NewPassword"></asp:CompareValidator>
                                            <asp:Button ID="btnResetearPassword" ValidationGroup="NewPassword" runat="server" Text="Guardar" class="btn btn-cancelar" OnClick="btnResetearPassword_Click" OnClientClick="ShowPantallaCarga()" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                                  <nav class="mobile-bottom-nav">
                            
                                <div class="mobile-bottom-nav__item">
                                    <div class="mobile-bottom-nav__item-content" id="menu1ul">
                                        <a data-toggle="pill" href="#menu1" onclick="myfunction2()" style="color: #0090bf!important; font-size: 30px"><i class="fa fa-user-circle" aria-hidden="true"></i></a>

                                    </div>
                                </div>
                                <div class="mobile-bottom-nav__item">
                                    <div class="mobile-bottom-nav__item-content" id="menu2ul">
                                        <a data-toggle="pill" href="#menu2" onclick="myfunction3()" style="color: #0090bf!important; font-size: 30px"><i class="fa fa-lock" aria-hidden="true"></i></a>

                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDSEstados" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [IdEntidadFederativa], [ClaveEntidad], [Descripcion], [Activo] FROM [CatEntidadFederativa] WHERE ([Activo] = @Activo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <script src="../Content/js/TCIValidations.js"></script>
</asp:Content>
