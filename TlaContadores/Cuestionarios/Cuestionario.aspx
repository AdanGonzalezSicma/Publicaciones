<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="Cuestionario.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Cuestionarios_nuevo" %>

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
        string GUIDCuestionario = string.Empty;
        string NumEncuesta = string.Empty;
        int OIDEncuesta = 0;
        try
        {
            GUIDCuestionario = context.Session["OIDCuestionario"].ToString();
            NumEncuesta = context.Session["NumEncuesta"].ToString();
        }
        catch (Exception)
        {
            GUIDCuestionario = string.Empty;
        }

        TCIHerramientas oHerramientas = new TCIHerramientas();
        string DescripcionCuestionario = string.Empty;
        string DescripcionGuia = string.Empty;
        string CodigoEmpresa = string.Empty;
        string Indicaciones = string.Empty;
        string NombreGuia = string.Empty;
        int OIDCuestionario = 0;
        int OIDGuia = 0;

        CodigoEmpresa = context.Session["CodigoEmpresa"].ToString();
        using (var oContext = new NOM035Entities())
        {
            try
            {
                var getCuestionario = oContext.CatNOMEncuestasCuestionarios.Where(s => s.GUID == GUIDCuestionario).Select(sel => new
                {
                    sel.OIDCuestionario,
                    sel.Descripcion,
                    sel.Indicaciones,
                    sel.OIDGuia
                }).ToList();
                Indicaciones = getCuestionario[0].Indicaciones;

                OIDCuestionario = Convert.ToInt32(getCuestionario[0].OIDCuestionario);
                context.Session["OIDCuestionarioSP"] = OIDCuestionario;
                DescripcionCuestionario = getCuestionario[0].Descripcion == null ? "Sin descripción" : getCuestionario[0].Descripcion;
                Indicaciones = getCuestionario[0].Indicaciones;
                OIDGuia = Convert.ToInt32(getCuestionario[0].OIDGuia);

                var getGuia = oContext.CatNOMEncuestasGuias.Where(s => s.OIDGuia == OIDGuia).Select(sel => new
                {
                    sel.Nombre,
                    sel.Descripcion
                }).ToList();
                NombreGuia = getGuia[0].Nombre;
                DescripcionGuia = getGuia[0].Descripcion;

            }
            catch (Exception)
            {
            }
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
            <div class="col-lg-12 text-center">
                <%
                    int Contador = 0;
                    int ContadorName = 0;
                    int ContadorTieneDependencia = 0;
                    int ContadorDependencia = 0;
                %>
                <h3 class="tituloOpciones"><%= DescripcionGuia %></h3>
                <p><%= DescripcionCuestionario %></p>



                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card text-left">
                            <div class="card-header">
                                <p><%= Indicaciones %></p>
                            </div>
                            <div class="card-body" style="padding-left: 30px">
                                <% 
                                    using (var oContext = new NOM035Entities())
                                    {
                                        try
                                        {
                                            //lblError.Text = string.Empty;
                                            //GET PREGUNTAS
                                            var getPreguntas = oContext.CatNOMEncuestasPreguntas
                                                .Where(s => s.OIDCuestionario == OIDCuestionario && s.Activo == true)
                                                .OrderBy(s => s.Orden).Select(sel => new
                                                {
                                                    sel.OIDPregunta,
                                                    sel.NumPregunta,
                                                    sel.Evento,
                                                    sel.TipoRespuesta,
                                                    sel.TieneDependencia,
                                                    sel.PreguntasDependiente,
                                                    sel.RespuestaDependiente
                                                }).ToArray();

                                            //SE OBTIENE EL OIDEncuesta
                                            var getOIDEncuesta = oContext.OpeNOMEncuestas.Where(s => s.NumEncuesta == NumEncuesta).Select(sel => new
                                            {
                                                sel.OIDEncuesta
                                            }).ToList();
                                            if (getOIDEncuesta.Count > 0)
                                                OIDEncuesta = Convert.ToInt32(getOIDEncuesta[0].OIDEncuesta);

                                            for (int i = 0; i < getPreguntas.Count(); i++)
                                            {
                                                Contador++;
                                                ContadorName++;
                                                ContadorDependencia++;
                                                int NumPregunta = Convert.ToInt32(getPreguntas[i].NumPregunta);
                                                bool TieneDependencia = Convert.ToBoolean(getPreguntas[i].TieneDependencia);

                                                if (TieneDependencia && ContadorDependencia == 2)
                                                {
                                %>
                                <input type="hidden" id="Dependencia" value="1" />
                                <%
                                    }
                                %>

                                <label for="exampleFormControlInput1">
                                    <b>
                                    <% 
                                        if (TieneDependencia)
                                        {
                                            ContadorTieneDependencia++;
                                    %>
                                    <div id="TieneDependenciaPreguntas<%= ContadorTieneDependencia %>">
                                        <%=
                                                        getPreguntas[i].Evento
                                        %>
                                    </div>
                                    <%
                                        }
                                        else
                                        {
                                    %>
                                    <%=
                                                        getPreguntas[i].Evento
                                    %>

                                    <%
                                        }
                                    %>

                                    <input type="hidden" id="<%= Contador %>" name="name" value="<%= getPreguntas[i].OIDPregunta %>" /></b>
                                </label>

                                <div>
                                    <%
                                        int OIDTipoPregunta = 0;
                                        OIDTipoPregunta = Convert.ToInt32(getPreguntas[i].TipoRespuesta);
                                        var getRespuestas = oContext.CatNOMTipoRespuestas.Where(s => s.OIDTipoRespuesta == OIDTipoPregunta).Select(sel => new
                                        {
                                            sel.Respuestas,
                                            sel.Valores
                                        }).ToList();
                                        string Respuesta = getRespuestas[0].Respuestas.Trim();
                                        string Valores = getRespuestas[0].Valores.Trim();
                                        char[] delimiterChars = { ',' };

                                        string[] SplitRespuestas = Respuesta.Split(delimiterChars);
                                        string[] SplitValores = Valores.Split(delimiterChars);

                                        //SE OBTIENEN LAS RESPUESTAS EN BASE AL OIDEncuesta LOGUEADO
                                        int OIDPregunta = Convert.ToInt32(getPreguntas[i].OIDPregunta);
                                        var getRespuestasContestadas = oContext.OpeNOMRespuestas.
                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPregunta == OIDPregunta).Select(sel => new
                                            {
                                                sel.OIDPregunta,
                                                sel.OIDRespuesta,
                                                sel.ValorRespuesta,
                                                sel.Respuesta
                                            }).ToArray();

                                    %>
                                    <%

                                        if (TieneDependencia)
                                        {
                                    %>
                                    <div id="TieneDependenciaRespuestas<%= ContadorTieneDependencia %>">
                                        <% 
                                            for (int r = 0; r < SplitRespuestas.Count(); r++)
                                            {

                                        %>
                                        <!-- SE IMPRIMEN LAS RESPUTAS EN UN RADIOBUTTON -->
                                        <% 
                                            if (TieneDependencia)
                                            {
                                                if (getRespuestasContestadas.Count() > 0)
                                                {
                                                    string RespuestaContestada = getRespuestasContestadas[0].Respuesta;
                                                    if (SplitRespuestas[r].StartsWith(RespuestaContestada))
                                                    {
                                        %>
                                        <input type="radio" onclick="fncGetOIDRespuesta(this);" checked="checked" class="rbtn<%= Contador %> form-check-input" required="required" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                        <%= SplitRespuestas[r] %>
                                        <%      
                                            }//END: SplitRespuestas
                                            else
                                            {
                                        %>
                                        <input type="radio" onclick="fncGetOIDRespuesta(this);" class="rbtn<%= Contador %> form-check-input" required="required" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                        <%= SplitRespuestas[r] %>
                                        <%      
                                                }//END: ELSE
                                            }//END: IF RESPUESTA CONTESTADA
                                            else
                                            {
                                        %>
                                        <input type="radio" onclick="fncGetOIDRespuesta(this);" class="rbtn<%= Contador %> form-check-input" required="required" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                        <%= SplitRespuestas[r] %>
                                        <%
                                                }//END: ELSE
                                            }//END: IF TIENE DEPENDENCIA
                                            else
                                            {
                                                if (getRespuestasContestadas.Count() > 0)
                                                {
                                                    string RespuestaContestada = getRespuestasContestadas[0].Respuesta;
                                                    if (SplitRespuestas[r].StartsWith(RespuestaContestada))
                                                    {
                                        %>
                                        <input type="radio" onclick="fncGetOIDRespuesta(this);" class="rbtn<%= Contador %> form-check-input" required="required" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" checked="checked" />
                                        <%= SplitRespuestas[r] %>
                                        <%
                                            }//END: IF SplitRespuestas
                                            else
                                            {
                                        %>
                                        <input type="radio" onclick="fncGetOIDRespuesta(this);" class="rbtn<%= Contador %> form-check-input" required="required" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                        <%= SplitRespuestas[r] %>
                                        <%
                                                }
                                            }//END: IF RESPUESTA CONTESTADA
                                            else
                                            {
                                        %>
                                        <input type="radio" onclick="fncGetOIDRespuesta(this);" class="rbtn<%= Contador %> form-check-input" required="required" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                        <%= SplitRespuestas[r] %>
                                        <%
                                                }
                                            }//END: ELSE
                                        %>

                                        <br />
                                        <%
                                            }//END: FOR SPLIT RESPUESTAS
                                        %>
                                    </div>
                                    <%
                                        }//END: IF TIENE DEPENDENCIA
                                        else
                                        {
                                            for (int r = 0; r < SplitRespuestas.Count(); r++)
                                            {
                                                if (getRespuestasContestadas.Count() > 0)
                                                {
                                                    string RespuestaContestada = getRespuestasContestadas[0].Respuesta;
                                                    if (SplitRespuestas[r].StartsWith(RespuestaContestada))
                                                    {
                                    %>
                                    <input type="radio" onclick="fncGetOIDRespuesta(this);" class="rbtn<%= Contador %> form-check-input" required="required" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" checked="checked" />
                                    <%= SplitRespuestas[r] %>
                                    <br />
                                    <%
                                        }//END: IF RESPUESTA CONTESTADA
                                        else
                                        {
                                    %>
                                    <input type="radio" onclick="fncGetOIDRespuesta(this);" class="rbtn<%= Contador %> form-check-input" required="required" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                    <%= SplitRespuestas[r] %>
                                    <br />
                                    <%
                                            }//END: ELSE
                                        }//END: IF GETRESPUESTAS.COUNT
                                        else
                                        {
                                    %>
                                    <input type="radio" onclick="fncGetOIDRespuesta(this);" required="required" class="rbtn<%= Contador %> form-check-input" name="<%= Contador %>" value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                    <%= SplitRespuestas[r] %>
                                    <br />
                                    <%
                                                            }//END: ELSE
                                                        }//END: FOR SPLIT RESPUESTAS
                                                    }//END: ELSE
                                                }//END: IF PREGUNTAS
                                            }//END: TRY
                                            catch (Exception ex)
                                            {
                                                lblError.Text = ex.Message;
                                            }//END: CATCH
                                        }//END: USING
                                    %>
                                    <%-- </div>--%>
                                </div>
                                <input type="hidden" id="Contador" value="<%= Contador %>" />
                                <input type="hidden" id="ContadorTieneDependencia" value="<%= ContadorTieneDependencia %>" />
                            </div>
                        </div>
                    </div>


                </div>



                <br />


            </div>
        </div>



    </div>
    <br />
    <div class="container">
        <br />
        <div class="row text-center">
            <div class="col-lg-6" style="margin-bottom:10px">
                <button id="btnAnterior" onserverclick="btnAnterior_ServerClick" onmouseup="fncGuardarRespuestas();" type="button" class="btn btn-info" runat="server">
                    <span id="texto">Anterior</span> <%--<i id="icon" class="fa fa-arrow-left"></i>--%>
                </button>

            </div>
            <div class="col-lg-6" style="margin-bottom:10px">
                <button id="btnGuardar" type="button" onserverclick="btnGuardar_ServerClick" onmouseup="fncGuardarRespuestas();" class="btn btn-info" runat="server">
                    <span id="texto">Siguiente</span><%--<i id="icon" class="fa fa-arrow-right"></i>--%>
                </button>

            </div>
             <br />
    <br />
        </div>
    </div>
    <br />
    <br />



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
    <script src="../Content/js/jquery.min.js"></script>
    <!-- SCRIPT -->
    <script>
        function fncHabilitar() {
            var ContadorTieneDependencia = document.getElementById("ContadorTieneDependencia").value;
            var Contador = 1;

            for (var i = 1; i <= ContadorTieneDependencia; i++) {
                Contador++;
                var divPreguntas = document.getElementById("TieneDependenciaPreguntas" + i);
                var divRespuestas = document.getElementById("TieneDependenciaRespuestas" + i);

                var valRespuesta = "";
                if (valRespuesta != "S") {
                    valRespuesta = $("input[name=" + 1 + "]:checked", "#myForm").val();
                }

                if (valRespuesta == "S") {
                    divPreguntas.hidden = false;
                    divRespuestas.hidden = false;
                } else {
                    divPreguntas.hidden = true;
                    divRespuestas.hidden = true;

                    $("input[name=" + Contador + "]:checked", "#myForm").prop("checked", false);
                }
            }
        }

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
        function fncGetChecked() {

            var divs = document.getElementsByClassName("TEST").length;
            //alert("Hay " + divs + " elementos");

            var radios = document.getElementsByName(Contador);

            for (i = 0; i < radios.length; i++) {
                if (radios[i].checked) {
                    return radios[i].value;
                }
            }

            return null;
            Contador++
        }

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
            //alert("arr: " + arrOIDPregunta);
            hiddenOIDPreguntas.Set("OIDPreguntas", arrOIDPregunta);
            MostarDistractor();
        }

        function fncGetOIDRespuesta() {
            fncHabilitar();

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
            hiddenOIDRespuestas.Set("OIDRespuestas", arrOIDRespuesta);
            hiddenValorRespuesta.Set("ValorRespuesta", arrValorRespuesta);
        }
    </script>
</asp:Content>
