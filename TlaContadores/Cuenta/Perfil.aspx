<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="CreandoProductividad.Cuenta.Perfil" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenComprobantePago" ClientInstanceName="hiddenComprobantePago" runat="server"></dx:ASPxHiddenField>
   
    <!-- SCRIPT -->
    <script>
         window.onload = function active() {
           
            var act2 = document.getElementById("bob");

             act2.style.display = "none";
    
        }
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
 .container-fluid {
    width: 100%;
    padding-right: .10rem!important;
    padding-left: .10rem!important;
    margin-right: auto;
    margin-left: auto;
}
 h3{
     font-size: 1.3rem
 }
}
       
    </style>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="card card-primary card-outline cardFoto" >
                        <div class="card-body box-profile datos">
                            <div class="text-center">
                                <asp:Image ID="imgPerfil" runat="server" class="profile-user-img img-fluid img-circle" />
                            </div>
                            <br />
                            <h3 class="profile-username text-center" >
                                <asp:Label ID="lblUsuario" runat="server" Text="@Usuario"></asp:Label>
                            </h3>

                            <p class="text-center " >
                                <asp:Label ID="lblTelefono" runat="server" Text="@Telefono" ></asp:Label>
                            </p>

                            <p class=" text-center ">
                                <asp:Label ID="lblCorreo" runat="server" Text="@Correo" ></asp:Label>
                            </p>

                            <ul class="list-group list-group-unbordered mb-3">
                                <li class="list-group-item" >
                                    <b>Encuestas</b> <a class="float-right">
                                        <asp:Label ID="lblCantEncuestas" runat="server" Text="0"></asp:Label></a>
                                </li>
                            </ul>

                            <a href="https://www.facebook.com/CreandoProductividad/" target="_blank" class="btn btn-follow" style="width: 100%"><b>Seguir</b></a>
                        </div>
                    </div>
                    <br />
                    <div class="card ">
                        <div class="card-header" >
                            <h3 class="card-title text-center" style=" font-size: 20px"><b>A cerca de</b></h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body datos">
                            <strong><i class="fas fa-book mr-1"></i>Estado</strong>
                            <p class="text-muted">
                                <asp:Label ID="lblEstado" runat="server" Text="Estado" ></asp:Label>
                            </p>
                            <hr>
                            <strong ><i class="fas fa-map-marker-alt mr-1"></i>Localidad</strong>
                            <p class="text-muted">
                                <asp:Label ID="lblMunicipio" runat="server" Text="Localidad" ></asp:Label>
                            </p>
                            <hr>
                            <strong><i class="fas fa-map-marker-alt mr-1"></i>Código postal</strong>
                            <p class="text-muted">
                                <asp:Label ID="lblCodigoPostal" runat="server" Text="CP" ></asp:Label>
                            </p>
                            <hr>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <br />
                </div>
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-header p-2">
                            <ul class="nav nav-pills">
                                <li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">Configuración</a></li>
                                 <li class="nav-item"><a class="nav-link " href="/manual-usuario/Manual-usuario.aspx#Perfil"  data-toggle="tooltip" title="Más información" ><i class="fas fa-question-circle" style="color:white;font-size:25px"></i></a></li>
                         <%--   <li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#ModalInfo">Boton</a></li>--%>
                            
                            </ul>
                        </div>
                            <div class="card-body">
                            <div class="tab-content">
                        <div class="tab-pane container active" id="activity">
                            <div class="form-horizontal">

                                <div class="form-group row">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-6">
                                        <label style="color: navy">Imagen de la empresa:</label>
                                        <asp:Image ID="imgProducto" runat="server" Style="width: 100%" />
                                        <div class="form-group">
                                            <asp:FileUpload ID="duImagenEmpresa" runat="server" class="form-control-file border" onchange="ShowPreviewPerfil(this)" />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <asp:Label ID="lblError" Text="" Visible="false" ForeColor="Red" runat="server" />
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <asp:Label Text="Nombre de la empresa:" runat="server" />
                                        <asp:TextBox ID="txtNombreEmpresa" MaxLength="100" runat="server" class="form-control" placeholder="Ingresar nombre de la empresa." autocomplete="off"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="req_txtNombreEmpresa" ValidationGroup="Perfil" ControlToValidate="txtNombreEmpresa" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <asp:Label Text="Código de la empresa: (Este código sirve para ingresar a los cuestionarios, los espacios y los acentos no son permitidos)" runat="server" />
                                        <asp:TextBox ID="txtCodigoEmpresa" MaxLength="20" runat="server" class="form-control" placeholder="Ingresar código de la empresa." autocomplete="off"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="req_txtCodigoEmpresa" ValidationGroup="Perfil" ControlToValidate="txtCodigoEmpresa" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <asp:Label Text="RFC:" runat="server" />
                                        <asp:TextBox ID="txtRFC" ReadOnly="true" MaxLength="13" runat="server" class="form-control" placeholder="Ingresar RFC de la empresa." autocomplete="off"/>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="req_txtRFC" ControlToValidate="txtRFC" ValidationGroup="Perfil" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="form-group row">
                                            <div class="col-sm-10">
                                                <asp:Label Text="Entidad federativa:" runat="server" />
                                                <dx:ASPxComboBox
                                                    class="form-control"
                                                    ID="cmbEstado"
                                                    ClientInstanceName="cmbEstado"
                                                    DataSourceID="SqlDSEstados"
                                                    runat="server"
                                                    ValueField="IdEntidadFederativa"
                                                    TextField="Descripcion"
                                                    Width="100%"
                                                    OnTextChanged="cmbEstado_TextChanged"
                                                    AutoPostBack="true"
                                                    NullText="Seleccionar una entidad federativa."
                                                    autocomplete="off">
                                                </dx:ASPxComboBox>
                                            </div>
                                        </div>
                                        <asp:RequiredFieldValidator ID="req_cmbEstado" ValidationGroup="Perfil" ControlToValidate="cmbEstado" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                        <div class="form-group row">
                                            <div class="col-sm-10">
                                                <asp:Label Text="Municipios:" runat="server" />
                                                <dx:ASPxComboBox
                                                    class="form-control"
                                                    ID="cmbMunicipios"
                                                    ClientInstanceName="cmbMunicipios"
                                                    runat="server"
                                                    Width="100%"
                                                    TextField="Municipio"
                                                    ValueField="idMunicipio"
                                                    NullText="Seleccionar un municipio."
                                                    autocomplete="off">
                                                </dx:ASPxComboBox>
                                            </div>
                                        </div>
                                        <asp:RequiredFieldValidator ID="req_cmbMunicipios" ValidationGroup="Perfil" ControlToValidate="cmbMunicipios" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                    </ContentTemplate>
                                </asp:UpdatePanel>

                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <asp:Label Text="Código postal:" runat="server" />
                                        <asp:TextBox ID="txtCodigoPostal" runat="server" class="form-control" placeholder="Ingresar código postal." autocomplete="off"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="req_txtCodigoPostal" ValidationGroup="Perfil" ControlToValidate="txtCodigoPostal" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <asp:Label Text="Correo electrónico:" runat="server" />
                                        <asp:TextBox ID="txtCorreo" MaxLength="70" runat="server" class="form-control" placeholder="Ingresar correo electrónico." autocomplete="off"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="req_txtCorreo" ValidationGroup="Perfil" ControlToValidate="txtCorreo" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <asp:Label Text="Teléfono:" runat="server" />
                                        <asp:TextBox ID="txtTelefono" MaxLength="10" runat="server" class="form-control" placeholder="Ingresar teléfono." autocomplete="off"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="req_txtTelefono" ValidationGroup="Perfil" ControlToValidate="txtTelefono" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <asp:Label Text="Teléfono fijo:" runat="server" />
                                        <asp:TextBox ID="txtTelefonoFijo" MaxLength="10" runat="server" class="form-control" placeholder="Ingresar teléfono fijo." autocomplete="off"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="req_txtTelefonoFijo" ValidationGroup="Perfil" ControlToValidate="txtTelefonoFijo" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                <div id="divAgenteCapacitador" runat="server">
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <asp:Label Text="Agente capacitador:" runat="server" />
                                            <asp:TextBox ID="txtAgenteCapacitador" MaxLength="50" runat="server" class="form-control" placeholder="Ingresar el nombre del Capacitador." autocomplete="off"></asp:TextBox>
                                        </div>
                                    </div>
                                    <asp:RequiredFieldValidator ID="req_txtAgenteCapacitador" ValidationGroup="Perfil" ControlToValidate="txtAgenteCapacitador" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                </div>
                                
<%--                                <div class="form-group row">
                                    <div class="checkbox">
                                        <asp:CheckBox ID="chkPermitirDatosPersonales" Text="Solicitar datos personales al aplicar cuestionarios" runat="server" />
                                    </div>
                                </div>--%>
                                <div class="form-group row">
                                    <div class="checkbox">
                                        <p>
                                            <input type="checkbox" checked="checked">
                                            Acepto <a href="#">terminos y condiciones</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <dx:ASPxButton ID="btnGuardar" OnClick="btnGuardar_Click" runat="server" Text="Guardar" CssClass="btn btn-follow"></dx:ASPxButton>
                                </div>

                            </div>
                        </div>
                        <!-- END: /.tab-pane | CONFIGURACIÓN -->
                        <div class="tab-pane container fade" id="settings">
                            <asp:Repeater ID="rptEncuestas" runat="server">
                                <ItemTemplate>
                                    <div class="post clearfix">
                                        <b><a href="#"><%# Eval("Descripcion") %></a></b>
                                        <br />
                                        <h6><%# Eval("FechaAlta") %></h6>
                                        <p><%# Eval("Indicaciones") %></p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
        </div>
        </div>
    </section>
       <!-- The Modal -->
        <div class="modal" id="ModalAviso" runat="server">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <%-- <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" onclick="cerrarModal()"></button>
      </div>--%>

                    <!-- Modal body -->
                    <div class="modal-body text-center">
                        <img src="/Content/img/exclamacion.png" style="width: 90px" />
                        <br />
                        <br />
                        <h1>¡Completa tu perfil!</h1>
                        <p style="font-size: 17px" id="lblTexto" runat="server"></p>
                        <br />
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="cerrarModal()" style="min-width: 150px; font-size: 17px">Aceptar</button>
                    </div>

                    <!-- Modal footer 
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="cerrarModal()">Close</button>
      </div>-->

                </div>
            </div>
        </div>
    <!-- SQLDS: LISTADO DE ESTADOS -->
    <asp:SqlDataSource ID="SqlDSEstados" runat="server" ConnectionString="<%$ ConnectionStrings:NOM035ConnectionString %>" SelectCommand="SELECT [IdEntidadFederativa], [ClaveEntidad], [Descripcion], [Activo] FROM [CatEntidadFederativa] WHERE ([Activo] = @Activo)">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    <%--<asp:SqlDataSource ID="SqlDSPeriodos" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDPeriodoEvaluacion], [Periodo] FROM [CatNOMPeriodoEvaluacion]"></asp:SqlDataSource>--%>

<br />
    <br />
    <br />
    <br />
    <br />
      <script>
        $(window).on('load', function () {
            setTimeout(function () {
                $(".loader").css({ visibility: "hidden", opacity: "0" })
            }, 1000);
            document.getElementById("ModalAviso").classList.add("show");

          });
          </script>
</asp:Content>
