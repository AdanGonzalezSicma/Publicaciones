<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="DatosLaborales.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.DatosLaborales" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Import Namespace="CreandoProductividad.Models" %>
<%@ Import Namespace="CreandoProductividad.Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenOIDPreguntas" runat="server" ClientInstanceName="hiddenOIDPreguntas"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenOIDRespuestas" runat="server" ClientInstanceName="hiddenOIDRespuestas"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenUltimoSistemaOperativo" runat="server" ClientInstanceName="hiddenUltimoSistemaOperativo"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenUltimoNavegador" runat="server" ClientInstanceName="hiddenUltimoNavegador"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenValorRespuesta" runat="server" ClientInstanceName="hiddenValorRespuesta"></dx:ASPxHiddenField>
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
    <script>
        function CerrarPOPUP() {
            popupError.Hide();
        }
        function MostarDistractor() {
            loadingPanel.Show();
        }
    </script>
    <%   
        HttpContext context = HttpContext.Current;
        TCIHerramientas oHerramientas = new TCIHerramientas();
        string CodigoEmpresa = string.Empty;
        string NombreEmpresa = string.Empty;
        string UrlImagen = string.Empty;
        string NumEncuesta = string.Empty;
        string CentroTrabajo = string.Empty;
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
        string _Respuesta5 = "";
        string _Respuesta6 = "";
        int _Respuesta7 = 0;
        int _Respuesta8 = 0;
        int _Respuesta9 = 0;
        int _Respuesta10 = 0;
        int _Respuesta11 = 0;
        string _Respuesta12 = "";
        int _Respuesta13 = 0;
        int _Respuesta14 = 0;
        string chkOperativo = string.Empty;
        string chkSupervisor = string.Empty;
        string chkProfesionalTecnico = string.Empty;
        string chkGerente = string.Empty;
        string chkObraProyecto = string.Empty;
        string chkTiempoIndeterminado = string.Empty;
        string chkTiempoDeterminado = string.Empty;
        string chkHonorario = string.Empty;
        string chkSindicalizado = string.Empty;
        string chkConfianza = string.Empty;
        string chkNinguno = string.Empty;
        string chkNocturno = string.Empty;
        string chkMixto = string.Empty;
        string chkDiurno = string.Empty;
        string chkSi = string.Empty;
        string chkNo = string.Empty;
        string chkMenos6Meses = string.Empty;
        string chkEntre6Meses1Anio = string.Empty;
        string chkEntre1a4Anios = string.Empty;
        string chkEntre5a9Anios = string.Empty;
        string chkEntre10a14Anios = string.Empty;
        string chkEntre15a19Anios = string.Empty;
        string chkEntre20a24Anios = string.Empty;
        string chkEntre25AniosOMas = string.Empty;
    %>
   <%-- <style>
        /*
            DEMO STYLE
        */
        @import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";

        body {
            font-family: 'Poppins', sans-serif;
            background: #fafafa;
        }

        p {
            font-family: 'Poppins', sans-serif;
            font-size: 1.1em;
            font-weight: 300;
            line-height: 1.7em;
            color: #606060;
        }

        a,
        a:hover,
        a:focus {
            color: inherit;
            text-decoration: none;
            transition: all 0.3s;
        }

        .navbar {
            padding: 15px 10px;
            background: #fff;
            border: none;
            border-radius: 0;
            margin-bottom: 40px;
            box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

        .navbar-btn {
            box-shadow: none;
            outline: none !important;
            border: none;
        }

        .line {
            width: 100%;
            height: 1px;
            border-bottom: 1px dashed #ddd;
            margin: 40px 0;
        }

        /* ---------------------------------------------------
            SIDEBAR STYLE
        ----------------------------------------------------- */

        .wrapper {
            display: flex;
            width: 100%;
            align-items: stretch;
        }

        @media screen and (max-width: 991px) {
            #sidebar {
                min-width: 250px;
                max-width: 250px;
                background: #00367c;
                color: #fff;
                transition: all 0.3s;
            }
        }

        @media screen and (max-width: 1599px) {
            #menos1600 {
                display: none
            }

            h5 {
                font-size: 18px
            }
        }

        @media screen and (min-width: 992px) {
            #sidebar {
                min-width: 350px;
                max-width: 250px;
                background: #00367c;
                color: #fff;
                transition: all 0.3s;
            }

            #sidebarCollapse {
                display: none
            }
        }
        /*#sidebar {
            min-width: 250px;
            max-width: 250px;
            background: #00367c;
            color: #fff;
            transition: all 0.3s;
        }*/

        #sidebar.active {
            margin-left: -250px;
        }

        #sidebar .sidebar-header {
            padding: 20px;
            background: #548cde;
        }

        #sidebar ul.components {
            padding: 20px 0;
            border-bottom: 1px solid #47748b;
        }

        #sidebar ul p {
            color: #fff;
            padding: 10px;
        }

        #sidebar ul li a {
            padding: 10px;
            font-size: 1.1em;
            display: block;
        }

            #sidebar ul li a:hover {
                color: #7386D5;
                background: #fff;
            }

        #sidebar ul li.active > a,
        a[aria-expanded="true"] {
            color: #fff;
            background: #548cde;
        }

        a[data-toggle="collapse"] {
            position: relative;
        }

        .dropdown-toggle::after {
            display: block;
            position: absolute;
            top: 50%;
            right: 20px;
            transform: translateY(-50%);
        }

        ul ul a {
            font-size: 0.9em !important;
            padding-left: 30px !important;
            background: #6d7fcc;
        }

        ul.INFO {
            padding: 20px;
        }

            ul.INFO a {
                text-align: center;
                font-size: 0.9em !important;
                display: block;
                border-radius: 5px;
                margin-bottom: 5px;
            }

        a.cancelar {
            background: #dc3545;
            color: #fff;
        }

        a.article,
        a.article:hover {
            background: #6d7fcc !important;
            color: #fff !important;
        }

        /* ---------------------------------------------------
            CONTENT STYLE
        ----------------------------------------------------- */

        #content {
            width: 100%;
            padding: 20px;
            min-height: 100vh;
            transition: all 0.3s;
        }

        /* ---------------------------------------------------
            MEDIAQUERIES
        ----------------------------------------------------- */

        @media (max-width: 768px) {
            #sidebar {
                margin-left: -250px;
            }

                #sidebar.active {
                    margin-left: 0;
                }

            #sidebarCollapse span {
                display: none;
            }
        }

        .btn-info {
            background-color: #548cde;
            border-color: #548cde
        }

            .btn-info:hover {
                background-color: #045fac;
                border-color: #045fac
            }

        .btn-primary {
            background-color: #548cde;
            border-color: #548cde;
            color: white !important
        }

            .btn-primary:hover {
                background-color: #045fac;
                border-color: #045fac;
                color: white !important
            }

        .card-header {
            background-color: #045fac;
            color: white;
        }

        .card {
            box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

        .section-banner {
            background-color: #00367c;
            color: white;
        }

        .borde {
            border-right: 3px solid #548cde;
        }




        h3 {
            color: #045fac
        }

        .card-resaltada {
            background-color: #548cde;
            color: white
        }

            .card-resaltada p {
                color: white !important
            }

        .card p {
            color: #045fac
        }

        .informacionT {
            background-color: #548cde6b;
        }

            .informacionT strong {
                color: #000;
            }
    </style>--%>
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
            <div class="col-lg-12 text-center">
                <h3 class="tituloOpciones">Datos Laborales
                </h3>

                <p>Conteste el siguiente formulario:</p>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card text-left" style="height: 100%">
                            <div class="card-body">
                                <div class="alert alert-info informacionT">
                                    <strong>Ocupación/profesión/puesto:</strong>
                                </div>
                                <input type="hidden" id="5" value="5" />
                                <input type="hidden" id="6" value="6" />
                                <input type="hidden" id="7" value="7" />
                                <input type="hidden" id="8" value="8" />
                                <input type="hidden" id="9" value="9" />
                                <input type="hidden" id="10" value="10" />
                                <input type="hidden" id="11" value="11" />
                                <input type="hidden" id="12" value="12" />
                                <input type="hidden" id="13" value="13" />
                                <input type="hidden" id="14" value="14" />
                                <input type="hidden" id="Contador" value="10" />
                                <div class="respuestas">
                                    <% 
                                        using (var oContext = new NOM035Entities())
                                        {
                                            var _getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.Where(ss => ss.OIDEncuesta == OIDEncuesta && ss.OIDPreguntaRef5 >= 5 && ss.OIDPreguntaRef5 <= 14).ToList();
                                            if (_getOpeNOMRespuestasRef5.Count > 0)
                                            {
                                                var _oRespuesta5 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 5);
                                                var _oRespuesta6 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 6);
                                                var _oRespuesta7 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 7);
                                                var _oRespuesta8 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 8);
                                                var _oRespuesta9 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 9);
                                                var _oRespuesta10 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 10);
                                                var _oRespuesta11 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 11);
                                                var _oRespuesta12 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 12);
                                                var _oRespuesta13 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 13);
                                                var _oRespuesta14 = _getOpeNOMRespuestasRef5.FirstOrDefault(ss => ss.OIDPreguntaRef5 == 14);
                                                _Respuesta5 = _oRespuesta5 == null ? "" : _oRespuesta5.RespuestaLibre.Trim();
                                                _Respuesta6 = _oRespuesta6 == null ? "" : _oRespuesta6.RespuestaLibre.Trim();
                                                _Respuesta7 = _oRespuesta7 == null ? 0 : _oRespuesta7.OIDRespuestaRef5.Value;
                                                _Respuesta8 = _oRespuesta8 == null ? 0 : _oRespuesta8.OIDRespuestaRef5.Value;
                                                _Respuesta9 = _oRespuesta9 == null ? 0 : _oRespuesta9.OIDRespuestaRef5.Value;
                                                _Respuesta10 = _oRespuesta10 == null ? 0 : _oRespuesta10.OIDRespuestaRef5.Value;
                                                _Respuesta11 = _oRespuesta11 == null ? 0 : _oRespuesta11.OIDRespuestaRef5.Value;
                                                _Respuesta12 = _oRespuesta12 == null ? "" : _oRespuesta12.RespuestaLibre.Trim();
                                                _Respuesta13 = _oRespuesta13 == null ? 0 : _oRespuesta13.OIDRespuestaRef5.Value;
                                                _Respuesta14 = _oRespuesta14 == null ? 0 : _oRespuesta14.OIDRespuestaRef5.Value;
                                                switch (_Respuesta7)
                                                {
                                                    case 37:
                                                        chkOperativo = "checked='checked'";
                                                        break;
                                                    case 38:
                                                        chkSupervisor = "checked='checked'";
                                                        break;
                                                    case 39:
                                                        chkProfesionalTecnico = "checked='checked'";
                                                        break;
                                                    case 40:
                                                        chkGerente = "checked='checked'";
                                                        break;
                                                }
                                                switch (_Respuesta8)
                                                {
                                                    case 41:
                                                        chkObraProyecto = "checked='checked'";
                                                        break;
                                                    case 42:
                                                        chkTiempoIndeterminado = "checked='checked'";
                                                        break;
                                                    case 43:
                                                        chkTiempoDeterminado = "checked='checked'";
                                                        break;
                                                    case 44:
                                                        chkHonorario = "checked='checked'";
                                                        break;
                                                }
                                                switch (_Respuesta9)
                                                {
                                                    case 45:
                                                        chkSindicalizado = "checked='checked'";
                                                        break;
                                                    case 46:
                                                        chkConfianza = "checked='checked'";
                                                        break;
                                                    case 47:
                                                        chkNinguno = "checked='checked'";
                                                        break;
                                                }
                                                switch (_Respuesta10)
                                                {
                                                    case 48:
                                                        chkNocturno = "checked='checked'";
                                                        break;
                                                    case 49:
                                                        chkMixto = "checked='checked'";
                                                        break;
                                                    case 50:
                                                        chkDiurno = "checked='checked'";
                                                        break;
                                                }
                                                switch (_Respuesta11)
                                                {
                                                    case 51:
                                                        chkSi = "checked='checked'";
                                                        break;
                                                    case 52:
                                                        chkNo = "checked='checked'";
                                                        break;
                                                }
                                                switch (_Respuesta13)
                                                {
                                                    case 54:
                                                        chkMenos6Meses = "checked='checked'";
                                                        break;
                                                    case 55:
                                                        chkEntre6Meses1Anio = "checked='checked'";
                                                        break;
                                                    case 56:
                                                        chkEntre1a4Anios = "checked='checked'";
                                                        break;
                                                    case 57:
                                                        chkEntre5a9Anios = "checked='checked'";
                                                        break;
                                                    case 58:
                                                        chkEntre10a14Anios = "checked='checked'";
                                                        break;
                                                    case 59:
                                                        chkEntre15a19Anios = "checked='checked'";
                                                        break;
                                                    case 60:
                                                        chkEntre20a24Anios = "checked='checked'";
                                                        break;
                                                    case 61:
                                                        chkEntre25AniosOMas = "checked='checked'";
                                                        break;
                                                }
                                                switch (_Respuesta14)
                                                {
                                                    case 62:
                                                        chkMenos6Meses = "checked='checked'";
                                                        break;
                                                    case 63:
                                                        chkEntre6Meses1Anio = "checked='checked'";
                                                        break;
                                                    case 64:
                                                        chkEntre1a4Anios = "checked='checked'";
                                                        break;
                                                    case 65:
                                                        chkEntre5a9Anios = "checked='checked'";
                                                        break;
                                                    case 66:
                                                        chkEntre10a14Anios = "checked='checked'";
                                                        break;
                                                    case 67:
                                                        chkEntre15a19Anios = "checked='checked'";
                                                        break;
                                                    case 68:
                                                        chkEntre20a24Anios = "checked='checked'";
                                                        break;
                                                    case 69:
                                                        chkEntre25AniosOMas = "checked='checked'";
                                                        break;
                                                }
                                            }
                                    %>
                                    <div class="form-group">

                                        <input type="text" class="form-control" id="txtOcupacion" onkeypress="fncGetOIDRespuesta();" maxlength="50" value="<%= _Respuesta5 %>">
                                    </div>


                                    <div class="alert alert-info informacionT">
                                        <strong>Departamento/Sección/Área:</strong>
                                    </div>
                                    <div class="form-group">

                                        <input type="text" class="form-control" id="txtDepartamento" onkeypress="fncGetOIDRespuesta();" maxlength="50" value="<%= _Respuesta6 %>">
                                    </div>


                                    <div class="alert alert-info informacionT">
                                        <strong>Tipo de puesto:</strong>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="37" <%= chkOperativo %> name="3" title="Operativo" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                    Operativo
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="38" <%= chkSupervisor %> name="3" title="Supervisor" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                    Supervisor
                                                    <br />

                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="39" <%= chkProfesionalTecnico %> name="3" title="Profesional o técnico" onclick="fncGetOIDRespuesta(this);"  class="form-check-input" />
                                                    Profesional o técnico
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="40" <%= chkGerente %> name="3" title="Gerente" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>
                                                    Gerente
                                                </label>
                                            </div>
                                        </div>

                                    </div>
                                    <br />
                                    <div class="alert alert-info informacionT">
                                        <strong>Tipo de contratación:</strong>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="41" <%= chkObraProyecto %> name="4" title="Por obra o proyecto" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                    Por obra o proyecto
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="42" <%= chkTiempoIndeterminado %> name="4" title="Tiempo indeterminado" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Tiempo indeterminado
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="43" <%= chkTiempoDeterminado %> name="4" title="Por tiempo determinado (temporal)" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Por tiempo determinado (temporal)
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="44" <%= chkHonorario %> name="4" title="Honorarios" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Honorarios
                                                </label>
                                            </div>
                                        </div>

                                    </div>
                                    <br />
                                    <div class="alert alert-info informacionT">
                                        <strong>Tipo de personal:</strong>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="45" <%= chkSindicalizado %> name="5" title="Sindicalizado" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                    Sindicalizado
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="46" <%= chkConfianza %> name="5" title="Confianza" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>
                                                    Confianza
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="47" <%= chkNinguno %> name="5" title="Ninguno" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>
                                                    Ninguno 
                                                </label>
                                            </div>
                                        </div>


                                    </div>
                                    <br />
                                    <div class="alert alert-info informacionT">
                                        <strong>Tipo de jornada de trabajo:</strong>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="48" <%= chkNocturno %> name="6" title="Fijo nocturno (entre las 20:00 y 6:00 hrs)" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Fijo nocturno (entre 20:00 y 6:00 hrs)
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="49" <%= chkMixto %> name="6" title="Fijo mixto (combinación de nocturno y diurno)" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Fijo mixto (combinación de nocturno y diurno)
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="50" <%= chkDiurno %> name="6" title="Fijo diurno (entre las 6:00 y 20:00 hrs" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Fijo diurno (entre  6:00 y 20:00 hrs)
                                                </label>
                                            </div>
                                        </div>


                                    </div>
                                    <br />
                                    <div class="alert alert-info informacionT">
                                        <strong>Realiza rotación de turnos:</strong>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="51" <%= chkSi %> name="7" title="Si" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Si
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="52" <%= chkNo %> name="7" title="No" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>No
                                                </label>
                                            </div>
                                        </div>



                                    </div>

                                    <div class="alert alert-info informacionT">
                                        <strong>Experiencia (años):</strong>
                                    </div>
                                    <div class="form-group">

                                        <input type="text" class="form-control" id="txtExperencia" onkeypress="fncGetOIDRespuesta();" value="<%= _Respuesta12 %>" maxlength="2" />
                                    </div>
                                    <br />
                                    <div class="alert alert-info informacionT">
                                        <strong>Tiempo en el puesto actual</strong>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="54" <%= chkMenos6Meses %> name="9" title="Menos de 6 meses" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Menos de 6 meses
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="55" <%= chkEntre6Meses1Anio %> name="9" title="Entre 6 meses y 1 año" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 6 meses y 1 año
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="56" <%= chkEntre1a4Anios %> name="9" title="Entre 1 a 4 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 1 a 4 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="57" <%= chkEntre5a9Anios %> name="9" title="Entre 5 a 9 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 5 a 9 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="58" <%= chkEntre10a14Anios %> name="9" title="Entre 10 a 14 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 10 a 14 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="59" <%= chkEntre15a19Anios %> name="9" title="Entre 15 a 19 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 15 a 19 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="60" <%= chkEntre20a24Anios %> name="9" title="Entre 20 a 24 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 20 a 24 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="61" <%= chkEntre25AniosOMas %> name="9" title="25 años o más" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>25 años o más
                                                </label>
                                            </div>
                                        </div>



                                    </div>
                                    <br />
                                    <div class="alert alert-info informacionT">
                                        <strong>Tiempo experiencia laboral</strong>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="62" <%= chkMenos6Meses %> name="10" title="Menos de 6 meses" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>
                                                    Menos de 6 meses
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="63" <%= chkEntre6Meses1Anio %> name="10" title="Entre 6 meses y 1 año" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 6 meses y 1 año
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="64" <%= chkEntre1a4Anios %> name="10" title="Entre 1 a 4 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 1 a 4 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="65" <%= chkEntre5a9Anios %> name="10" title="Entre 5 a 9 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 5 a 9 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="66" <%= chkEntre10a14Anios %> name="10" title="Entre 10 a 14 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 10 a 14 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="67" <%= chkEntre15a19Anios %> name="10" title="Entre 15 a 19 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 15 a 19 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="68" <%= chkEntre20a24Anios %> name="10" title="Entre 20 a 24 años" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>Entre 20 a 24 años
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-sm-12">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" value="68" <%= chkEntre25AniosOMas %> name="10" title="25 años o más" onclick="fncGetOIDRespuesta(this);"  class="form-check-input"/>25 años o más
                                                </label>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-lg-6" style="margin-bottom: 3px">
                            <button id="btnAnterior" type="button" onserverclick="btnAnterior_ServerClick" onclick="fncGuardarRespuestas();" class="btn btn-primary " runat="server">
                                <span id="texto">Anterior</span>
                            </button>
                        </div>
                        <div class="col-lg-6" style="margin-bottom: 3px">
                            <button id="btnGuardar" type="button" onserverclick="btnGuardar_ServerClick" onclick="fncGuardarRespuestas();" class="btn btn-primary" runat="server">
                                <span id="texto">Siguiente</span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2"></div>
            </div>
            <br />
            <br id="menos1600" />
            <dx:ASPxPopupControl ID="popupError" ClientInstanceName="popupError" runat="server" HeaderStyle-ForeColor="White" HeaderText="Oh oh" Width="500px">
                <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" FixedFooter="False" />
                <HeaderImage IconID="status_warning_16x16">
                </HeaderImage>
                <HeaderStyle ForeColor="White" BackColor="#DC3545" Border-BorderColor="#DC3545" Border-BorderStyle="Solid" Border-BorderWidth="1px"></HeaderStyle>
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server">
                        <p  style="font-size: 18px; color:red!important"> Es necesario contestar todas las preguntas</p>
                        <p style="font-size: 18px">
                            <asp:Label ID="lblError" Text="Es necesario seleccionar las respuestas correctas." ForeColor="#ffffff" runat="server" />
                        </p>
                      
                        <div class="text-right">
                            <a class="btn btn-primary" style="padding: 8px 33px 8px; color: white; background-color: #DC3545; border-color: #DC3545" onclick="CerrarPOPUP()">Aceptar</a>
                        </div>
                    </dx:PopupControlContentControl>
                </ContentCollection>
                <Border BorderStyle="None" />
            </dx:ASPxPopupControl>


            <br />
            <br />
        </div>
        <script src="/Content/js/jquery.min.js"></script>
        <script>
    $.widget.bridge('uibutton', $.ui.button)
        </script>
        <script>
    $(document).ready(function () {
        $('[data-toggle="popover"]').popover();
    });
        </script>

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
        fncLimpiarHidden();
        fncGetOIDRespuesta();
    });

    function fncLimpiarHidden() {
        var arrOIDPregunta = "";
        var arrOIDRespuesta = "";
        var arrValorRespuesta = "";

        hiddenOIDPreguntas.Set("OIDPreguntas", arrOIDPregunta);
        hiddenOIDRespuestas.Set("OIDRespuestas", arrOIDRespuesta);
        hiddenValorRespuesta.Set("ValorRespuesta", arrValorRespuesta);
    }

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

    var Contador = 0;
    function fncGuardarRespuestas() {

        //ContadorJS ALAMACENA EL NUMERO DE PREGUNTAS QUE SE MUESTRAN.
        var ContadorJS = 0;
        var ContadorJS = document.getElementById("Contador").value;
        var arrOIDPregunta = "";

        for (var i = 5; i <= 14; i++) {
            var OIDPregunta = document.getElementById(i).value;

            if (i >= 14) {
                arrOIDPregunta += OIDPregunta;
            } else {
                arrOIDPregunta += OIDPregunta + ",";
            }
        }

        //alert("arrOIDPregunta: " + arrOIDPregunta);
        hiddenOIDPreguntas.Set("OIDPreguntas", arrOIDPregunta);
        MostarDistractor();
    }

    function fncGetOIDRespuesta() {
        //fncHabilitar();

        var valRespuesta = "";
        if (valRespuesta != "S") {
            valRespuesta = $("input[name=" + 1 + "]:checked", "#myForm").val();
        }

        var ContadorJS = 0;
        var ContadorJS = document.getElementById("Contador").value;
        var arrOIDRespuesta = "";
        var arrValorRespuesta = "";
        
        for (var i = 1; i <= ContadorJS; i++) {
            try {
                var str;
                var res;
                var strVR;
                var resVR;
                var txtOcupacion = document.getElementById("txtOcupacion").value;
                var txtDepartamento = document.getElementById("txtDepartamento").value;
                var txtExperencia = document.getElementById("txtExperencia").value;

                if (i == 1) {
                    res = txtOcupacion;
                    resVR = txtOcupacion;
                } else if (i == 2) {
                    res = txtDepartamento;
                    resVR = txtDepartamento;
                } else if (i == 8) {
                    res = txtExperencia;
                    resVR = txtExperencia;
                } else {
                    var OIDRespuesta = $("input[name=" + i + "]:checked", "#myForm").val();
                    str = OIDRespuesta;
                    res = str.split(',');

                    var ValorRespuesta = $("input[name=" + i + "]:checked", "#myForm").attr("title");
                    strVR = ValorRespuesta;
                    resVR = strVR.split(',');
                }

                if (i >= ContadorJS) {
                    arrOIDRespuesta += res;
                    arrValorRespuesta += resVR;
                } else {
                    arrOIDRespuesta += res + ',';
                    arrValorRespuesta += resVR + ',';
                }
            } catch (e) {

                var Dependencia = 0;
                try {
                    Dependencia = document.getElementById("Dependencia").value;
                } catch (e) {
                    Dependencia = 0;
                }

                if (Dependencia == 1) {
                    if (valRespuesta == "S") {
                        if (i >= ContadorJS) {
                            arrOIDRespuesta += "|";
                            arrValorRespuesta += "|";
                        } else {
                            arrOIDRespuesta += "|" + ',';
                            arrValorRespuesta += "|" + ',';
                        }
                    } else {
                        if (i >= ContadorJS) {
                            arrOIDRespuesta += "#";
                            arrValorRespuesta += "#";
                        } else {
                            arrOIDRespuesta += "#" + ',';
                            arrValorRespuesta += "#" + ',';
                        }
                    }
                } else {
                    if (i >= ContadorJS) {
                        arrOIDRespuesta += "|";
                        arrValorRespuesta += "|";
                    } else {
                        arrOIDRespuesta += "|" + ',';
                        arrValorRespuesta += "|" + ',';
                    }
                }
            }
        }

        //alert("arrOIDRespuesta: " + arrOIDRespuesta);
        //alert("arrValorRespuesta: " + arrValorRespuesta);

        hiddenOIDRespuestas.Set("OIDRespuestas", arrOIDRespuesta);
        hiddenValorRespuesta.Set("ValorRespuesta", arrValorRespuesta);
    }
        </script>
</asp:Content>

