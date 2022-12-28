<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="DatosTrabajador.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Sensibilizacion.DatosTrabajador" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
    <script>
        function CerrarPOPUP() {
            popupError.Hide();
        }
        function MostarDistractor() {
            loadingPanel.Show();
        }
    </script>
    <dx:ASPxHiddenField ID="hiddenOIDPreguntas" runat="server" ClientInstanceName="hiddenOIDPreguntas"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenOIDRespuestas" runat="server" ClientInstanceName="hiddenOIDRespuestas"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenUltimoSistemaOperativo" runat="server" ClientInstanceName="hiddenUltimoSistemaOperativo"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenUltimoNavegador" runat="server" ClientInstanceName="hiddenUltimoNavegador"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenValorRespuesta" runat="server" ClientInstanceName="hiddenValorRespuesta"></dx:ASPxHiddenField>
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
        <input type="hidden" id="1" value="1" />
        <input type="hidden" id="2" value="2" />
        <input type="hidden" id="3" value="3" />
        <input type="hidden" id="4" value="4" />
        <input type="hidden" id="Contador" value="4" />
        <div class="row">
            <br />
            <div class="col-lg-12 text-center">
                <h3 class="tituloOpciones">Información del trabajador
                </h3>

                <p>Conteste el siguiente formulario:</p>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card text-left" style="height: 100%">
                            <div class="card-body">
                                <div class="alert alert-info informacionT">
                                    <strong>Sexo</strong>
                                </div>

                                <div class="row">
                                    <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 1).Select(sel => new
                                                            {
                                                                sel.RespuestaLibre
                                                            }).ToList();
                                                        string Respuesta = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = getOpeNOMRespuestasRef5[0].RespuestaLibre;
                                                        }

                                                        string chkMasculino = string.Empty;
                                                        string chkFemenino = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
                                                            {
                                                                case "Masculino":
                                                                    chkMasculino = "checked='checked'";
                                                                    break;
                                                                case "Femenino":
                                                                    chkFemenino = "checked='checked'";
                                                                    break;
                                                            }
                                                        }
                                    %>

                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="1" <%= chkMasculino %> name="1" title="Masculino" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                Masculino
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="2" <%= chkFemenino %> name="1" title="Femenino" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                               Femenino
                                            </label>
                                        </div>
                                    </div>
                                    <%
                                                    }//END: USING
                                    %>
                                </div>
                                <br />
                                <div class="alert alert-info informacionT">
                                    <strong>Edad en años:</strong>
                                </div>
                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 2).Select(sel => new
                                                            {
                                                                sel.RespuestaLibre
                                                            }).ToList();
                                                        string Respuesta = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = getOpeNOMRespuestasRef5[0].RespuestaLibre;
                                                        }

                                                        string chk15_19 = string.Empty;
                                                        string chk20_24 = string.Empty;
                                                        string chk25_29 = string.Empty;
                                                        string chk30_34 = string.Empty;
                                                        string chk35_39 = string.Empty;
                                                        string chk40_44 = string.Empty;
                                                        string chk45_49 = string.Empty;
                                                        string chk50_54 = string.Empty;
                                                        string chk55_59 = string.Empty;
                                                        string chk60_64 = string.Empty;
                                                        string chk65_69 = string.Empty;
                                                        string chk70omás = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
                                                            {
                                                                case "15 - 19":
                                                                    chk15_19 = "checked='checked'";
                                                                    break;
                                                                case "20 - 24":
                                                                    chk20_24 = "checked='checked'";
                                                                    break;
                                                                case "25 - 29":
                                                                    chk25_29 = "checked='checked'";
                                                                    break;
                                                                case "30 - 34":
                                                                    chk30_34 = "checked='checked'";
                                                                    break;
                                                                case "35 - 39":
                                                                    chk35_39 = "checked='checked'";
                                                                    break;
                                                                case "40 - 44":
                                                                    chk40_44 = "checked='checked'";
                                                                    break;
                                                                case "45 - 49":
                                                                    chk45_49 = "checked='checked'";
                                                                    break;
                                                                case "50 - 54":
                                                                    chk50_54 = "checked='checked'";
                                                                    break;
                                                                case "55 - 59":
                                                                    chk55_59 = "checked='checked'";
                                                                    break;
                                                                case "60 - 64":
                                                                    chk60_64 = "checked='checked'";
                                                                    break;
                                                                case "65 - 69":
                                                                    chk65_69 = "checked='checked'";
                                                                    break;
                                                                case "70 o más":
                                                                    chk70omás = "checked='checked'";
                                                                    break;
                                                            }
                                                        }
                                %>
                                <div class="row">
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="3" <%= chk15_19 %> name="2" title="15 - 19" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                15 - 19
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="4" <%= chk20_24 %> name="2" title="20 - 24" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />20 - 24
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="5" <%= chk25_29 %> name="2" title="25 - 29" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />25 - 29
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="6" <%= chk30_34 %> name="2" title="30 - 34" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                30 - 34
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="7" <%= chk35_39 %> name="2" title="35 - 39" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                35 - 39
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="8" <%= chk40_44 %> name="2" title="40 - 44" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />40 - 44
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="9" <%= chk45_49 %> name="2" title="45 - 49" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />45 - 49
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="11" <%= chk50_54 %> name="2" title="50 - 54" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />50 - 54
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="11" <%= chk55_59 %> name="2" title="55 - 59" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />55 - 59
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="12" <%= chk60_64 %> name="2" title="60 - 64" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />60 - 64
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="13" <%= chk65_69 %> name="2" title="65 - 69" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />
                                                65 - 69
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="14" <%= chk70omás %> name="2" title="70 o más" onclick="fncGetOIDRespuesta(this);" class="form-check-input" />70 o más
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <%
                                                    }//END: USING
                                %>
                                <br />
                                <div class="alert alert-info informacionT">
                                    <strong>Estado civil:</strong>
                                </div>
                                <div class="row">
                                    <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 3).Select(sel => new
                                                            {
                                                                sel.RespuestaLibre
                                                            }).ToList();
                                                        string Respuesta = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = getOpeNOMRespuestasRef5[0].RespuestaLibre;
                                                        }

                                                        string chkSoltero = string.Empty;
                                                        string chkUnionLibre = string.Empty;
                                                        string chkCasado = string.Empty;
                                                        string chkDivorciado = string.Empty;
                                                        string chkViudo = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
                                                            {
                                                                case "Soltero":
                                                                    chkSoltero = "checked='checked'";
                                                                    break;
                                                                case "Unión libre":
                                                                    chkUnionLibre = "checked='checked'";
                                                                    break;
                                                                case "Casado":
                                                                    chkCasado = "checked='checked'";
                                                                    break;
                                                                case "Divorciado":
                                                                    chkDivorciado = "checked='checked'";
                                                                    break;
                                                                case "Viudo":
                                                                    chkViudo = "checked='checked'";
                                                                    break;
                                                            }
                                                        }
                                    %>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="15" <%= chkSoltero %> name="3" class="form-check-input"  title="Soltero" onclick="fncGetOIDRespuesta(this);" />
                                                Soltero
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="16" <%= chkUnionLibre %> name="3" class="form-check-input" title="Unión libre" onclick="fncGetOIDRespuesta(this);" />
                                                Unión libre
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="17" <%= chkCasado %> name="3" title="Casado" class="form-check-input" onclick="fncGetOIDRespuesta(this);" />Casado
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="18" <%= chkDivorciado %> name="3" title="Divorciado" class="form-check-input" onclick="fncGetOIDRespuesta(this);" /> Divorciado
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" value="19" <%= chkViudo %> name="3" title="Viudo" class="form-check-input" onclick="fncGetOIDRespuesta(this);" />
                                                Viudo
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <%
                                                    }//END: USING
                                %>
                                <br />
                                <div class="alert alert-info informacionT">
                                    <strong>Nivel de estudios:</strong>
                                </div>
                                <div class="row">
                                    <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 4).Select(sel => new
                                                            {
                                                                sel.OIDRespuestaRef5
                                                            }).ToList();
                                                        int Respuesta = 0;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = Convert.ToInt32(getOpeNOMRespuestasRef5[0].OIDRespuestaRef5);
                                                        }

                                                        string chkPrimariaTerminada = string.Empty;
                                                        string chkPrimariaIncompleta = string.Empty;
                                                        string chkSecundariaTerminada = string.Empty;
                                                        string chkSecundariaIncompleta = string.Empty;
                                                        string chkPreparatoriaTerminada = string.Empty;
                                                        string chkPreparatoriaIncompleta = string.Empty;
                                                        string chkTecnicoSuperiorTerminada = string.Empty;
                                                        string chkTecnicoSuperiorIncompleta = string.Empty;
                                                        string chkLicenciaturaTerminada = string.Empty;
                                                        string chkLicenciaturaIncompleta = string.Empty;
                                                        string chkMaestriaTerminada = string.Empty;
                                                        string chkMaestriaIncompleta = string.Empty;
                                                        string chkDoctoradoTerminada = string.Empty;
                                                        string chkDoctoradoIncompleta = string.Empty;
                                                        string chkSinFormacion = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
                                                            {
                                                                case 21:
                                                                    chkPrimariaTerminada = "checked='checked'";
                                                                    break;
                                                                case 22:
                                                                    chkPrimariaIncompleta = "checked='checked'";
                                                                    break;
                                                                case 23:
                                                                    chkSecundariaTerminada = "checked='checked'";
                                                                    break;
                                                                case 24:
                                                                    chkSecundariaIncompleta = "checked='checked'";
                                                                    break;
                                                                case 25:
                                                                    chkPreparatoriaTerminada = "checked='checked'";
                                                                    break;
                                                                case 26:
                                                                    chkPreparatoriaIncompleta = "checked='checked'";
                                                                    break;
                                                                case 27:
                                                                    chkTecnicoSuperiorTerminada = "checked='checked'";
                                                                    break;
                                                                case 28:
                                                                    chkTecnicoSuperiorIncompleta = "checked='checked'";
                                                                    break;
                                                                case 29:
                                                                    chkLicenciaturaTerminada = "checked='checked'";
                                                                    break;
                                                                case 30:
                                                                    chkLicenciaturaIncompleta = "checked='checked'";
                                                                    break;
                                                                case 31:
                                                                    chkMaestriaTerminada = "checked='checked'";
                                                                    break;
                                                                case 32:
                                                                    chkMaestriaIncompleta = "checked='checked'";
                                                                    break;
                                                                case 33:
                                                                    chkDoctoradoTerminada = "checked='checked'";
                                                                    break;
                                                                case 34:
                                                                    chkDoctoradoIncompleta = "checked='checked'";
                                                                    break;
                                                                case 20:
                                                                    chkSinFormacion = "checked='checked'";
                                                                    break;
                                                            }
                                                        }
                                    %>
                                    <div class="col-lg-4 col-sm-12">
                                        <p>Primaria:</p>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="21" <%= chkPrimariaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" />
                                                Terminada
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="22" <%= chkPrimariaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" />Incompleta
                                            </label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-lg-4 col-sm-12">
                                        <p>Secundaria:</p>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="23" <%= chkSecundariaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" />
                                                Terminada
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="24" <%= chkSecundariaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" />
                                                Incompleta
                                            </label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-lg-4 col-sm-12">
                                        <p>Preparatoria o Bachillerato:</p>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="25" <%= chkPreparatoriaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" />
                                                Terminada
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="26" <%= chkPreparatoriaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" />
                                                Incompleta
                                            </label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-lg-4 col-sm-12">
                                        <p>Técnico Superior:</p>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="27" <%= chkTecnicoSuperiorTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" />
                                                Terminada
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="28" <%= chkTecnicoSuperiorIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" />
                                                Incompleta
                                            </label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-lg-4 col-sm-12">
                                        <p>Licenciatura:</p>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="29" <%= chkLicenciaturaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" />
                                                Terminada
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="30" <%= chkLicenciaturaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" />
                                                Incompleta
                                            </label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-lg-4 col-sm-12">
                                        <p>Maestría:</p>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="31" <%= chkMaestriaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" />
                                                Terminada
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="32" <%= chkMaestriaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" />
                                                Incompleta
                                            </label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-lg-4 col-sm-12">
                                        <p>Doctorado::</p>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="33" <%= chkDoctoradoTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" />
                                                Terminada
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="34" <%= chkDoctoradoIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" />
                                                Incompleta
                                            </label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-lg-4 col-sm-12">
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" value="20" <%= chkSinFormacion %> name="4" title="Sin formación" onclick="fncGetOIDRespuesta(this);" />
                                                Sin formación
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-12">
                                    </div>
                                </div>
                                <%
                                                    } 
                                %>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-6" style="margin-bottom: 3px">
                        <asp:Button ID="btnAnterior" Text="Anterior" runat="server" class="btn btn-info"  OnClick="btnAnterior_Click"/>                        
                    </div>
                    <div class="col-lg-6" style="margin-bottom: 3px">
                        <asp:Button Text="Continuar" runat="server" class="btn btn-info" ID="btnContinuar" OnClick="btnContinuar_Click" onmouseup="fncGuardarRespuestas();" />
                    </div>
                </div>
            </div>
            <div class="col-lg-2"></div>
        </div>
        <br />
        <br id="menos1600" />
        <br />
        <br />
    </div>
    <dx:ASPxPopupControl ID="popupError" ClientInstanceName="popupError" runat="server" HeaderStyle-ForeColor="White" HeaderText="Oh oh" Width="500px">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" FixedFooter="False" />
        <HeaderImage IconID="status_warning_16x16">
        </HeaderImage>
        <HeaderStyle ForeColor="White" BackColor="#DC3545" Border-BorderColor="#DC3545" Border-BorderStyle="Solid" Border-BorderWidth="1px"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <p style="font-size: 18px">
                    <asp:Label ID="lblError" Text="Es necesario seleccionar las respuestas correctas." ForeColor="red" runat="server" />
                </p>
                <br />
                <br />
                <div class="text-right">
                    <a class="btn btn-primary" style="padding: 8px 33px 8px; color: white; background-color: #DC3545; border-color: #DC3545" onclick="CerrarPOPUP()">Aceptar</a>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>
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

        for (var i = 1; i <= ContadorJS; i++) {
            var OIDPregunta = document.getElementById(i).value;

            if (i >= ContadorJS) {
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
                var OIDRespuesta = $("input[name=" + i + "]:checked", "#myForm").val();
                var str = OIDRespuesta;
                var res = str.split(',');

                var ValorRespuesta = $("input[name=" + i + "]:checked", "#myForm").attr("title");
                var strVR = ValorRespuesta;
                var resVR = strVR.split(',');

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
