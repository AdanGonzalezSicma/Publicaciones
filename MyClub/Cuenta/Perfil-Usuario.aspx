<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil-Usuario.aspx.cs" Inherits="Sistema_web.Cuenta.Perfil_Usuario" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Perfil de Club</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenComprobantePago" ClientInstanceName="hiddenComprobantePago" runat="server"></dx:ASPxHiddenField>
    <script>
        function OnComprobantesToolbarItemClick(s, e) {
            if (e.item.name == 'Comprobante') {
                visibleIndex = gridCobros.GetFocusedRowIndex();
                idDocumento = gridCobros.GetRowKey(visibleIndex);
                hiddenComprobantePago.Set('hiddenComprobantePago', idDocumento);
            }
        }
        function ShowPreviewPerfil(input) {
            if (input.files && input.files[0]) {
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    $('#ContentPlaceHolder1_imgProducto').attr('src', e.target.result);
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
        function SaveDocFile(s, e) {
            if (uploadFile.GetText() != '') {
                e.processOnServer = false;
                uploadFile.Upload();
            }
            else {
                gridCobros.UpdateEdit();
            }
        }
    </script>
    <style>
        @media screen and (max-width: 600px) {
            .cardsDatos {
                display: none;
            }
        }

        .cardInput {
            padding: 0rem !important
        }
        
    </style>
    <script>
        function myfunction() {
            document.getElementById("homeul").className = "active";
            document.getElementById("menu1ul").className = "normal";
            document.getElementById("menu2ul").className = "normal";
              document.getElementById("menu3ul").className = "normal";
            document.getElementById("home").className = "container tab-pane active";
            document.getElementById("menu1").className = "container tab-pane fade";
            document.getElementById("menu2").className = "container tab-pane fade";
              document.getElementById("menu3").className = "container tab-pane fade";
        }
        function myfunction2() {
            document.getElementById("menu1ul").className = "active";
            document.getElementById("homeul").className = "normal";
            document.getElementById("menu2ul").className = "normal";
            document.getElementById("menu3ul").className = "normal";
            document.getElementById("menu1").className = "container tab-pane active";
            document.getElementById("home").className = "container tab-pane fade";
            document.getElementById("menu2").className = "container tab-pane fade";
            document.getElementById("menu3").className = "container tab-pane fade";
        }
        function myfunction3() {
            document.getElementById("menu2ul").className = "active";
            document.getElementById("homeul").className = "normal";
            document.getElementById("menu1ul").className = "normal";
            document.getElementById("menu3ul").className = "normal";
            document.getElementById("menu2").className = "container tab-pane active";
            document.getElementById("home").className = "container tab-pane fade";
            document.getElementById("menu1").className = "container tab-pane fade";
            document.getElementById("menu3").className = "container tab-pane fade";
        }
          function myfunction4() {
            document.getElementById("menu3ul").className = "active";
            document.getElementById("homeul").className = "normal";
              document.getElementById("menu1ul").className = "normal";
              document.getElementById("menu2ul").className = "normal";
            document.getElementById("menu3").className = "container tab-pane active";
            document.getElementById("home").className = "container tab-pane fade";
              document.getElementById("menu1").className = "container tab-pane fade";
              document.getElementById("menu2").className = "container tab-pane fade";
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
                                    <a class="nav-link active" data-toggle="pill" href="#home">Configuración</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#menu1">Datos del Usuario</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#menu2">Cambiar Contraseña</a>
                                </li>
                             <%--   <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#menu3"  style="display:none">Configurar Tema</a>
                                </li>--%>
                            </ul>
                        </div>
                        <div class="card-body cardInput">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="home" class="container tab-pane active">
                                    <div class="row">
                                        <div class="col-sm-3"></div>
                                        <div class="col-sm-6">
                                            <asp:Image ID="imgProducto" runat="server" Style="width: 100%" />
                                            <div class="form-group">
                                                <asp:FileUpload ID="duImagenEmpresa" runat="server" class="form-control-file border" onchange="ShowPreviewPerfil(this)" />
                                            </div>
                                        </div>
                                        <div class="col-sm-3"></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-1 col-sm-0"></div>
                                        <div class="col-lg-9 col-sm-12">
                                            <div>
                                                <div class="form-group">
                                                    <div class="alert alert-info">
  <strong>El código del club deberá ser proporcionado a sus alumnos para que se registren en su academia</strong>     
</div>
                                                  
                                                    <label for="usr">Código del Club:</label><br />
                                                    <label for="usr" style="color: #ff0000">El código puede incluir numeros y/o letras, sin espacios ni acentos</label>
                                                    <asp:TextBox ID="txtCodigoClub" MaxLength="20" runat="server" class="form-control" placeholder="Ingresar el código de club" onkeypress="return onlyLetterswithoutspace(event)"></asp:TextBox>
                                                </div>
                                                <asp:RequiredFieldValidator ID="reqtxtCodigoClub" ValidationGroup="Perfil" ControlToValidate="txtCodigoClub" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <div class="form-group">
                                                    <label for="usr">Nombre del Club:</label>
                                                    <asp:TextBox ID="txtNombreEmpresa" MaxLength="100" runat="server" class="form-control" placeholder="Ingresar nombre de la empresa."></asp:TextBox>
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtNombreEmpresa" ValidationGroup="Perfil" ControlToValidate="txtNombreEmpresa" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <div class="form-group">
                                                    <label for="usr">Disciplina:</label>
                                                    <dx:ASPxComboBox ID="ddlDsciplina"
                                                        NullText="Seleccionar una disciplina." Width="100%" class="form-control" TextField="Nombre" ValueField="OIDDiciplinas" runat="server" DataSourceID="SqlDSDisciplinas">
                                                    </dx:ASPxComboBox>
                                                    <asp:SqlDataSource runat="server" ID="SqlDSDisciplinas" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDDiciplinas], RTRIM([Nombre]) as Nombre FROM [CatDisciplinas] WHERE ([Estatus] = @Estatus)">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="true" Name="Estatus" Type="Boolean"></asp:Parameter>
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </div>
                                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        <div class="form-group">
                                                            <label for="usr">Entidad Federativa:</label>
                                                            <dx:ASPxComboBox
                                                                class="form-control"
                                                                ID="cmbEstado"
                                                                ClientInstanceName="cmbEstado"
                                                                DataSourceID="SqlDSEstados"
                                                                runat="server"
                                                                ValueField="IdEntidadFederativa"
                                                                TextField="Descripcion"
                                                                Width="100%"
                                                                OnTextChanged="cmbEstado_TextChanged1"
                                                                AutoPostBack="true"
                                                                NullText="Seleccionar una entidad federativa.">
                                                            </dx:ASPxComboBox>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="usr">Municipio:</label>
                                                            <dx:ASPxComboBox
                                                                class="form-control"
                                                                ID="cmbMunicipios"
                                                                ClientInstanceName="cmbMunicipios"
                                                                runat="server"
                                                                Width="100%"
                                                                TextField="Municipio"
                                                                ValueField="idMunicipio"
                                                                NullText="Seleccionar un municipio.">
                                                            </dx:ASPxComboBox>
                                                        </div>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>


                                                <div class="form-group">
                                                    <label for="usr">Código Postal:</label>
                                                    <asp:TextBox ID="txtCodigoPostal" runat="server" class="form-control" placeholder="Ingresar código postal."></asp:TextBox>
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtCodigoPostal" ValidationGroup="Perfil" ControlToValidate="txtCodigoPostal" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <div class="form-group">
                                                    <label for="usr">Correo Electrónico:</label>
                                                    <asp:TextBox ID="txtCorreo" MaxLength="70" runat="server" class="form-control" placeholder="Ingresar correo electrónico."></asp:TextBox>
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtCorreo" ValidationGroup="Perfil" ControlToValidate="txtCorreo" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                               
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-12" style="margin-bottom:10px">  
                                                        <asp:Label Text="Teléfono:" runat="server" />
                                                        <asp:TextBox ID="txtTelefono" MaxLength="10" runat="server" class="form-control" placeholder="Ingresar teléfono."></asp:TextBox>  
                                                        <asp:RequiredFieldValidator ID="req_txtTelefono" ValidationGroup="Perfil" ControlToValidate="txtTelefono" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator></div>
                                                    <div class="col-lg-6 col-md-6 col-sm-12" style="margin-bottom:10px"> 
                                                        <asp:Label Text="Teléfono fijo:" runat="server" />
                                                        <asp:TextBox ID="txtTelefonoFijo" MaxLength="10" runat="server" class="form-control" placeholder="Ingresar teléfono fijo."></asp:TextBox>
<asp:RequiredFieldValidator ID="req_txtTelefonoFijo" ValidationGroup="Perfil" ControlToValidate="txtTelefonoFijo" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                               
                                                <br />
                                              
                                                
                                                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" ValidationGroup="Perfil" OnClick="btnGuardar_Click" class="btn btn-cancelar" />
                                         
                                                <br />
                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-1 col-sm-0"></div>

                                    </div>
                                </div>
                                <div id="menu1" class="container tab-pane fade">
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
                                                    <label for="usr">Apellido Paterno:</label>
                                                    <asp:TextBox ID="txtAPaterno" MaxLength="100" runat="server" class="form-control" placeholder="Ingresar apellido paterno."></asp:TextBox>
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtAPaterno" ValidationGroup="PerfilUsuario" ControlToValidate="txtAPaterno" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <div class="form-group">
                                                    <label for="usr">Apellido Materno:</label>
                                                    <asp:TextBox ID="txtAMaterno" MaxLength="100" runat="server" class="form-control" placeholder="Ingresar nombre de la empresa."></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="usr">Correo Electrónico:</label>
                                                    <asp:TextBox ID="txtCorreoUsuario" MaxLength="13" runat="server" class="form-control" placeholder="Ingresar correo del usuario." Style="text-transform: uppercase" />
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtCorreoUsuario" ValidationGroup="PerfilUsuario" ControlToValidate="txtCorreoUsuario" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <div class="form-group">
                                                    <label for="usr">Teléfono:</label>
                                                    <asp:TextBox ID="txtTelefonoUsuario" MaxLength="13" runat="server" class="form-control" placeholder="Ingresar teléfono del usuario." Style="text-transform: uppercase" />
                                                </div>
                                                <asp:RequiredFieldValidator ID="req_txtTelefonoUsuario" ValidationGroup="PerfilUsuario" ControlToValidate="txtTelefonoUsuario" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                                <asp:Button ID="btnGuardarDatosUsuario" ValidationGroup="PerfilUsuario" runat="server" Text="Guardar" OnClick="btnGuardarDatosUsuario_Click" class="btn btn-cancelar" />
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
                                            <asp:Button ID="btnResetearPassword" ValidationGroup="NewPassword" runat="server" Text="Guardar" OnClick="btnResetearPassword_Click" class="btn btn-cancelar" />


                                        </div>
                                    </div>
                                </div>
                                <div id="menu3" class="container tab-pane fade" style="display:none">
                                    <br />
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-2"></div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label for="usr">Color Principal:</label>
                                                <dx:ASPxColorEdit ID="txtColorPrincipal" runat="server" Width="100%" ClearButton-DisplayMode="Never" EnableCustomColors="true" ColumnCount="8" Color="#0090bf"></dx:ASPxColorEdit>
                                            </div>
                                            <div class="form-group">
                                                <label for="usr">Color Secundario:</label>
                                                <dx:ASPxColorEdit ID="txtColorScundario" runat="server" Width="100%" ClearButton-DisplayMode="Never" EnableCustomColors="true" ColumnCount="8" Color="#f7aa00"></dx:ASPxColorEdit>
                                            </div>
                                            <asp:Button ID="btnConfigurarTema"  runat="server" Text="Guardar Tema" OnClick="btnConfigurarTema_Click" class="btn btn-cancelar" />
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                            <br />
                                    <br />
                          <%--  <nav class="mobile-bottom-nav">
                                <div class="mobile-bottom-nav__item ">
                                    <div class="mobile-bottom-nav__item-content" id="homeul">
                                        <a data-toggle="pill" href="#home" onclick="myfunction()" style="color: #0090bf!important; font-size: 30px"><i class="fa fa-cog" aria-hidden="true"></i></a>
                                        

                                    </div>
                                </div>
                                <div class="mobile-bottom-nav__item">
                                    <div class="mobile-bottom-nav__item-content" id="menu1ul">
                                        <a data-toggle="pill" href="#menu1" onclick="myfunction2()" style="color: #0090bf!important; font-size: 30px"><i class="fa fa-user-circle" aria-hidden="true"></i></a>

                                    </div>
                                </div>
                                <div class="mobile-bottom-nav__item">
                                    <div class="mobile-bottom-nav__item-content" id="menu2ul">
                                        <a data-toggle="pill" href="#menu2" onclick="myfunction3()" style="color: #0090bf!important; font-size: 30px"><i class="fa fa-unlock-alt" aria-hidden="true"></i></a>

                                    </div>
                                </div>
                                <div class="mobile-bottom-nav__item" style="display:none">
                                    <div class="mobile-bottom-nav__item-content" id="menu3ul">
                                        <a data-toggle="pill" href="#menu3" onclick="myfunction4()" style="color: #0090bf!important; font-size: 30px"><i class="fa fa-paint-brush" aria-hidden="true"></i></a>

                                    </div>
                                </div>







                            </nav>--%>

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDSEstados" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [IdEntidadFederativa], [ClaveEntidad], [Descripcion], [Activo] FROM [CatEntidadFederativa] WHERE ([Activo] = @Activo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <script src="../Content/js/TCIValidations.js"></script>
</asp:Content>
