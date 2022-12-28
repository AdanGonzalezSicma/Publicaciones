<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuestionario_old.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Encuesta" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
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
    string NombreEmpresa = string.Empty;
    string Indicaciones = string.Empty;
    string NombreGuia = string.Empty;
    int OIDCuestionario = 0;
    int OIDGuia = 0;
    string UrlImagen = "";

    CodigoEmpresa = context.Session["CodigoEmpresa"].ToString();
    using (var oContext = new NOM035Entities())
    {
        var getEmpresa = oContext.OpeNOMEmpresas.Where(s => s.CodigoEmpresa == CodigoEmpresa).Select(sel => new
        {
            sel.Nombre,
            sel.ImagenNegocio
        }).ToList();
        NombreEmpresa = getEmpresa[0].Nombre;
        if (getEmpresa[0].ImagenNegocio != null)
        {
            UrlImagen = oHerramientas.ObtenerUrlDeByteArray(getEmpresa[0].ImagenNegocio);
        }
        else
        {
            UrlImagen = "../Content/icons/imgPerfilEmpresa.jpg";
        }
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

<!DOCTYPE html>
<html style="background-color: #ebf5ff;">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>NOM-035</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->

    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

    <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/css/main.min.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.min.css" rel="stylesheet" />

    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../Content/img/nom.png" rel="icon" />
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <%
        int Contador = 0;
        int ContadorName = 0;
        int ContadorTieneDependencia = 0;
        int ContadorDependencia = 0;
    %>

    <div class="wrapper" style="background-color: #fff;">
        <style>
            @media screen and (max-width: 600px) {
                #informacion {
                    text-align: center
                }

                #btnAnterior {
                    font-size: 12px;
                    width: 100%;
                    margin-right: 2px;
                }

                #texto {
                    display: none
                }

                #btnSalir {
                    font-size: 12px;
                    width: 100%;
                    margin-right: 2px;
                }

                #btnGuardar {
                    font-size: 12px;
                    width: 100%;
                    margin-right: 2px;
                }
            }

            @media screen and (min-width: 601px) {

                #btnAnterior {
                    font-size: 1rem;
                    width: 100px;
                    margin-right: 2px;
                }

                #btnSalir {
                    font-size: 1rem;
                    width: 100px;
                    margin-right: 2px;
                }

                #btnGuardar {
                    font-size: 1rem;
                    width: 100px;
                    margin-right: 2px;
                }

                #icon {
                    display: none
                }
            }
        </style>
        <%=CargarTema() %>
        <!-- Content Wrapper. Contains page content -->
        <div class="content">

            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container">
                    <div class="row mb-2">
                        <div class="col-sm-12">
                            <h1 class="m-0 text-dark"></h1>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-sm-12">
                            <%--<div class="card-header" style="background-color: royalblue"></div>
                    <p class="m-0">
                        <%= Indicaciones %>
                    </p>
                    <hr>--%>

                            <div class="card-header">
                                <h3 class="card-title text-center" style="float: none; font-size: 25px"><b>NOM-035-STPS-2018</b>
                                </h3>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->

                    <div class="text-left">
                        <div class="card-body card-titulo" style="border-left: 1px solid #e3e6f0; border-right: 1px solid #e3e6f0; box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                            <div class="row">
                                <div class="col-lg-2 col-sm-12 text-center">
                                    <img src="<%= UrlImagen %>" alt="IMAGEN" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12); width: 120px; height: 120px" />
                                </div>
                                <div id="informacion" class="col-lg-10 col-sm-12 ">

                                    <h4><b><%= NombreEmpresa %></b></h4>
                                    <h4><b><%= NombreGuia %></b></h4>
                                    <p style="margin-bottom: 0rem;"><%= DescripcionGuia %></p>
                                    <p style="margin-bottom: 0rem;"><%= DescripcionCuestionario %></p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container">

                    <!-- Main row -->
                    <div class="row">
                        <!-- Left col -->
                        <section class="col-lg-12 connectedSortable">

                            <!-- TO DO List -->
                            <div class="card" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                                <div class="card-header">
                                    <h5 class="card-title">
                                        <i class="ion ion-clipboard mr-1"></i>
                                        <%= Indicaciones %>
                                    </h5>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <div>
                                    </div>
                                    <ul class="todo-list" data-widget="todo-list">

                                        <!-- SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->
                                        <li style="border: none; background-color: white">

                                            <div class="icheck-primary d-inline ml-2">
                                                <div class="form-group">
                                                    <asp:Label ID="lblError" ForeColor="Red" runat="server" />

                                                    <% 
                                                        using (var oContext = new NOM035Entities())
                                                        {
                                                            try
                                                            {
                                                                lblError.Text = string.Empty;
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

                                                    %>
                                                    <form id="myForm" class="validar_form">
                                                        <% 
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

                                                        <!-- PREGUNTA -->
                                                        <b style="font-size: 20px">
                                                            <label for="exampleFormControlInput1">
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

                                                                <input type="hidden" id="<%= Contador %>" name="name" value="<%= getPreguntas[i].OIDPregunta %>" />
                                                            </label>
                                                        </b>
                                                        <br>

                                                        <!-- END: PREGUNTA -->

                                                        <!-- RESPUESTAS -->
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
                                                            <div class="respuestas">
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
                                                                    <input type="radio" onclick="fncGetOIDRespuesta(this);" checked="checked"
                                                                        class="rbtn<%= Contador %>" required="required"
                                                                        name="<%= Contador %>"
                                                                        value="<%= SplitValores[r] %>"
                                                                        title="<%= SplitRespuestas[r] %>" />
                                                                    <%= SplitRespuestas[r] %>
                                                                    <%      
                                                                        }//END: SplitRespuestas
                                                                        else
                                                                        {
                                                                    %>
                                                                    <input type="radio" onclick="fncGetOIDRespuesta(this);"
                                                                        class="rbtn<%= Contador %>" required="required"
                                                                        name="<%= Contador %>"
                                                                        value="<%= SplitValores[r] %>"
                                                                        title="<%= SplitRespuestas[r] %>" />
                                                                    <%= SplitRespuestas[r] %>
                                                                    <%      
                                                                            }//END: ELSE
                                                                        }//END: IF RESPUESTA CONTESTADA
                                                                        else
                                                                        {
                                                                    %>
                                                                    <input type="radio" onclick="fncGetOIDRespuesta(this);"
                                                                        class="rbtn<%= Contador %>" required="required"
                                                                        name="<%= Contador %>"
                                                                        value="<%= SplitValores[r] %>"
                                                                        title="<%= SplitRespuestas[r] %>" />
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
                                                                    <input type="radio" onclick="fncGetOIDRespuesta(this);"
                                                                        class="rbtn<%= Contador %>" required="required"
                                                                        name="<%= Contador %>"
                                                                        value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" checked="checked" />
                                                                    <%= SplitRespuestas[r] %>
                                                                    <%
                                                                        }//END: IF SplitRespuestas
                                                                        else
                                                                        {
                                                                    %>
                                                                    <input type="radio" onclick="fncGetOIDRespuesta(this);"
                                                                        class="rbtn<%= Contador %>" required="required"
                                                                        name="<%= Contador %>"
                                                                        value="<%= SplitValores[r] %>"
                                                                        title="<%= SplitRespuestas[r] %>" />
                                                                    <%= SplitRespuestas[r] %>
                                                                    <%
                                                                            }
                                                                        }//END: IF RESPUESTA CONTESTADA
                                                                        else
                                                                        {
                                                                    %>
                                                                    <input type="radio" onclick="fncGetOIDRespuesta(this);"
                                                                        class="rbtn<%= Contador %>" required="required"
                                                                        name="<%= Contador %>"
                                                                        value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
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
                                                                <input type="radio" onclick="fncGetOIDRespuesta(this);"
                                                                    class="rbtn<%= Contador %>" required="required"
                                                                    name="<%= Contador %>"
                                                                    value="<%= SplitValores[r] %>"
                                                                    title="<%= SplitRespuestas[r] %>" checked="checked" />
                                                                <%= SplitRespuestas[r] %>
                                                                <br />
                                                                <%
                                                                    }//END: IF RESPUESTA CONTESTADA
                                                                    else
                                                                    {
                                                                %>
                                                                <input type="radio" onclick="fncGetOIDRespuesta(this);"
                                                                    class="rbtn<%= Contador %>" required="required"
                                                                    name="<%= Contador %>"
                                                                    value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                                                <%= SplitRespuestas[r] %>
                                                                <br />
                                                                <%
                                                                        }//END: ELSE
                                                                    }//END: IF GETRESPUESTAS.COUNT
                                                                    else
                                                                    {
                                                                %>
                                                                <input type="radio" onclick="fncGetOIDRespuesta(this);" required="required"
                                                                    class="rbtn<%= Contador %>"
                                                                    name="<%= Contador %>"
                                                                    value="<%= SplitValores[r] %>" title="<%= SplitRespuestas[r] %>" />
                                                                <%= SplitRespuestas[r] %>
                                                                <br />
                                                                <%
                                                                            }//END: ELSE
                                                                        }//END: FOR SPLIT RESPUESTAS
                                                                    }//END: ELSE
                                                                %>
                                                            </div>
                                                        </div>
                                                        <!-- END: RESPUESTAS -->
                                                        <% 
                                                                    }//END: IF PREGUNTAS
                                                                }//END: TRY
                                                                catch (Exception ex)
                                                                {
                                                                    lblError.Text = ex.Message;
                                                                }//END: CATCH
                                                            }//END: USING
                                                        %>
                                                    </form>
                                                    <input type="hidden" id="Contador" value="<%= Contador %>" />
                                                    <input type="hidden" id="ContadorTieneDependencia" value="<%= ContadorTieneDependencia %>" />

                                                </div>
                                            </div>
                                        </li>
                                        <!-- END: SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->

                                    </ul>
                                </div>

                                <!-- /.card-body -->
                                <form runat="server">
                                    <dx:ASPxHiddenField ID="hiddenOIDPreguntas" runat="server" ClientInstanceName="hiddenOIDPreguntas"></dx:ASPxHiddenField>
                                    <dx:ASPxHiddenField ID="hiddenOIDRespuestas" runat="server" ClientInstanceName="hiddenOIDRespuestas"></dx:ASPxHiddenField>
                                    <dx:ASPxHiddenField ID="hiddenUltimoSistemaOperativo" runat="server" ClientInstanceName="hiddenUltimoSistemaOperativo"></dx:ASPxHiddenField>
                                    <dx:ASPxHiddenField ID="hiddenUltimoNavegador" runat="server" ClientInstanceName="hiddenUltimoNavegador"></dx:ASPxHiddenField>
                                    <dx:ASPxHiddenField ID="hiddenValorRespuesta" runat="server" ClientInstanceName="hiddenValorRespuesta"></dx:ASPxHiddenField>

                                    <div class="card-footer clearfix">
                                        <div class="row">
                                            <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                                <button id="btnAnterior" onserverclick="btnAnterior_ServerClick" onmouseup="fncGuardarRespuestas();" type="button" class="btn btn-footer" runat="server">
                                                    <span id="texto">Anterior</span> <i id="icon" class="fa fa-arrow-left"></i>
                                                </button>
                                            </div>
                                            <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                                <button id="btnSalir" onserverclick="btnSalir_ServerClick" type="button" class="btn" runat="server">Salir</button>

                                            </div>
                                            <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                                <button id="btnGuardar" type="button" onserverclick="btnGuardar_Click" onmouseup="fncGuardarRespuestas();" class="btn" runat="server">
                                                    <span id="texto">Siguiente</span><i id="icon" class="fa fa-arrow-right"></i>
                                                </button>


                                            </div>
                                        </div>




                                        <asp:Label ID="lblGuardar" Text="Guardar" runat="server" Visible="false" />
                                    </div>
                                </form>
                            </div>
                            <!-- /.card -->

                        </section>


                        <!-- /.Left col -->
                        <!-- right col (We are only adding the ID to make the widgets sortable)-->
                        <section class="col-lg-5 connectedSortable">
                        </section>
                        <!-- right col -->
                    </div>
                    <!-- /.row (main row) -->
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- ./wrapper -->

    <script src="../Content/js/jquery.min.js"></script>
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

</body>
</html>