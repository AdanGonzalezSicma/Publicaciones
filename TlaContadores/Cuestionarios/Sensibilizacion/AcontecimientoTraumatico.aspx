<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="AcontecimientoTraumatico.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.AcontecimientoTraumatico" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenUltimoSistemaOperativo" runat="server" ClientInstanceName="hiddenUltimoSistemaOperativo"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenUltimoNavegador" runat="server" ClientInstanceName="hiddenUltimoNavegador"></dx:ASPxHiddenField>
    <dx:aspxhiddenfield id="hiddenValorRespuesta" runat="server" clientinstancename="hiddenValorRespuesta"></dx:aspxhiddenfield>
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
    <script>
        function MostarDistractor() {
            loadingPanel.Show();
        }</script>
    <%@ Import Namespace="CreandoProductividad.Models" %>
    <%@ Import Namespace="CreandoProductividad.Class" %>

    <%   
    HttpContext context = HttpContext.Current;
    TCIHerramientas oHerramientas = new TCIHerramientas();
    string CodigoEmpresa = string.Empty;
    string NombreEmpresa = string.Empty;
    string UrlImagen = string.Empty;
    string NumEncuesta = string.Empty;
    string CentroTrabajo = string.Empty;
    int OIDEmpresa = 0;
    int OIDEncuesta = 0;

    CentroTrabajo = context.Session["CentroTrabajo"].ToString();
    NumEncuesta = context.Session["NumEncuesta"].ToString();
    CodigoEmpresa = context.Session["CodigoEmpresa"].ToString();
    using (var oContext = new NOM035Entities())
    {
        var getOIDEncuesta = oContext.OpeNOMEncuestas.Where(s => s.NumEncuesta == NumEncuesta).Select(sel => new
        {
            sel.OIDEncuesta
        }).ToList();
        if (getOIDEncuesta.Count == 1)
            OIDEncuesta = Convert.ToInt32(getOIDEncuesta[0].OIDEncuesta);
    }
    %>
     <br />
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid text-center">
            <button type="button" id="sidebarCollapse" class="btn btn-info">
                <i class="fas fa-align-justify"></i>
            </button>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <br />
            <div class="col-lg-2 text-center"></div>
            <div class="col-lg-8 text-center">
                <h3  class="tituloOpciones">Acontecimientos Traumáticos Severos

                </h3>

                <p>Informe de acontecimientos traumáticos severos en el centro de trabajo</p>
                <br />
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card text-left" style="height: 100%">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="usr">Nombre del trabajador:</label>
                                    <asp:TextBox ID="txtNombreTrabajador" runat="server" class="form-control" />
                                    <asp:RequiredFieldValidator ID="req_txtNombreTrabajador" ForeColor="Red" runat="server" ValidationGroup="req_Form"
                                        ControlToValidate="txtNombreTrabajador" ErrorMessage="Es necesario ingresar este campo."></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label for="usr">Nombre de trabajadores involucrados:</label>
                                    <asp:TextBox ID="txtNombreInvolucrados" runat="server" class="form-control" />
                                    <asp:RequiredFieldValidator ID="req_txtNombreInvolucrados" ForeColor="Red" runat="server" ValidationGroup="req_Form"
                                        ControlToValidate="txtNombreInvolucrados" ErrorMessage="Es necesario ingresar este campo."></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label for="usr">Fecha en que ocurrió el acontecimiento:</label>
                                    <dx:aspxdateedit id="dtFechaEvento" runat="server" width="100%"></dx:aspxdateedit>
                                    <asp:RequiredFieldValidator ID="req_dtFechaEvento" ForeColor="Red" runat="server" ValidationGroup="req_Form"
                                        ControlToValidate="dtFechaEvento" ErrorMessage="Es necesario ingresar este campo."></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <label for="usr">Descripción del acontecimiento:</label>
                                    <asp:TextBox style="resize:none" ID="txtDescripcionEvento" runat="server" Rows="3" Columns="50" TextMode="MultiLine" class="form-control" />
                                    <asp:RequiredFieldValidator ID="req_txtDescripcionEvento" ForeColor="Red" runat="server" ValidationGroup="req_Form"
                                        ControlToValidate="txtDescripcionEvento" ErrorMessage="Es necesario ingresar este campo."></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>



                <br />
                <div class="row">
                    <div class="col-lg-6" style="margin-bottom: 3px">
                        <%--<a href="../ejemploProgresoUsuario.html" class="btn btn-info">Anterior</a>--%>
                    </div>
                    <div class="col-lg-6" style="margin-bottom: 3px">
                        <button id="btnGuardar" onserverclick="btnGuardar_ServerClick" onmouseup="MostarDistractor()" validationgroup="req_Form" type="button" class="btn btn-info" runat="server">
                            <span id="texto">Siguiente</span>
                        </button>
                    </div>

                </div>

            </div>
            <div class="col-lg-2"></div>
        </div>
        <br />
        <br id="menos1600" />

        <script src="/Content/js/jquery.min.js" type="text/javascript"></script>

        <!-- SCRIPT -->
        <script>
        function getNavigator() {
            var agente = navigator.userAgent;
            var navegadores = ["Chrome", "Firefox", "Safari", "Opera", "Trident", "MSIE", "Edge"];

            for (var i in navegadores) {
                if (agente.indexOf(navegadores[i]) != -1) {
                    hiddenUltimoNavegador.Set("UltimoNavegador", navegadores[i]);
                    return navegadores[i];
                }
            }
        }

        $(document).ready(function () {
            getNavigator();
            retornarSO();
        });

        var navInfo = window.navigator.appVersion.toLowerCase();
        var so = 'Sistema Operativo';
        function retornarSO() {
            if (navInfo.indexOf('win') != -1) {
                so = 'Windows';
            }
            else if (navInfo.indexOf('linux') != -1) {
                so = 'Linux';
            }
            else if (navInfo.indexOf('mac') != -1) {
                so = 'Macintosh';
            }
            var UltimoSistemaOperativo = so;
            hiddenUltimoSistemaOperativo.Set("UltimoSistemaOperativo", UltimoSistemaOperativo);
            return so;
        }
        </script>

        <br />
        <br />
    </div>
</asp:Content>
