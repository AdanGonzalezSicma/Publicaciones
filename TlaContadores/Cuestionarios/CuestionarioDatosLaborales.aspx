<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CuestionarioDatosLaborales.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.CuestionarioDatosLaborales" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
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
    int OIDEncuesta = 0;

    CentroTrabajo = context.Session["CentroTrabajo"].ToString();
    NumEncuesta = context.Session["NumEncuesta"].ToString();
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
            UrlImagen = oHerramientas.ObtenerUrlDeByteArray(getEmpresa[0].ImagenNegocio);
        else
            UrlImagen = "../Content/icons/imgPerfilEmpresa.jpg";

        var getOIDEncuesta = oContext.OpeNOMEncuestas.Where(s => s.NumEncuesta == NumEncuesta).Select(sel => new
        {
            sel.OIDEncuesta
        }).ToList();
        if (getOIDEncuesta.Count == 1)
            OIDEncuesta = Convert.ToInt32(getOIDEncuesta[0].OIDEncuesta);
    }
%>

<!DOCTYPE html>
<html style="background-color: #fff;">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>NOM-035</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../Content/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/css/main.min.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.min.css" rel="stylesheet" />

     <link href="../Content/img/nom.png" rel="icon" />
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper" style="background-color: #fff;">

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

            <div class="row ">
                <div class="col-sm-12">
                    <%--<div class="card-header" style="background-color: royalblue"></div>
                    <p class="m-0">
                        <%= Indicaciones %>
                    </p>
                    <hr>--%>

                    <div class="card-header">
                         <h3 class="card-title text-center" style="float: none; font-size:25px"><b>NOM-035-STPS-2018</b>
                        </h3>
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
            <style>
                textarea {
                    border: 1px solid lightgray;
                    width: 100%;
                    resize: none
                }

                    textarea:focus {
                        border: 1px solid #43bfc7;
                        width: 100%
                    }

                input[type="text" i] {
                    border: 1px solid lightgray;
                    width: 100%;
                    height: 50px
                }

                    input[type="text" i]:focus {
                        border: 1px solid #43bfc7;
                        width: 100%
                    }

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
                /* estos son los id que se utilizan para cambiar el color de fondo de los botones y la letra, se separaron por si se necesitaba darle colores diferentes a cada uno*/
                /*#btnAnterior { background-color: #43bfc7;  color: white; }
                #btnSalir { background-color: #43bfc7; color: white; }
                #btnGuardar { background-color: #43bfc7; color: white; }*/
                /*Clase que se utiliza para darle un color de fondo al card donde aparecen los datos de la empresa*/
                /*.card-titulo { background-color: #43bfc7; }*/
                 /*Clase que se utiliza para darle un color a la letra del card donde aparecen los datos de la empresa*/
                /*.card-titulo h4 { color: #fff }*/
                /*Clase que se utiliza para el color de letra de las preguntas*/
                /*label { color: navy }*/
                 /*Clase que se utiliza para el color de letra de las respuestas*/
                /*.respuestas { color: navy }*/
                /*Clase que se utiliza para darle el color de fondo al footer del card*/
                /*.card-footer { background-color: #f88017; }*/
                /*Clase que se utiliza para darle el color de fondo y de letra al header de los 2 cards*/
                /*.card-header { background-color: #f88017; color: white; }*/
            </style>
            <%=CargarTema() %>
            <div class="text-left">
                 <div class="card-body card-titulo"  style="border-left:1px solid #e3e6f0; border-right:1px solid #e3e6f0; box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                <div class="row">
                    <div class="col-lg-2 text-center">
                        <img src="<%= UrlImagen %>" style=" box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12); width:120px; height:120px" alt="IMAGEN" />
                    </div>
                    <div id="informacion" class="col-lg-10">
                        <h4 ><b><%= NombreEmpresa %></b></h4>
                        <h4 ><b><%= CentroTrabajo %></b></h4>
                        <h4 >Informe de referencia V</h4>
                        <h4 >Datos Laborales</h4>
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
                <div class="card">
                    <div class="card-header card-indicaciones" >
                        <h3 class="card-title" >
                            <i class="ion ion-clipboard mr-1"></i>
                            Indicaciones
                        </h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div>
                        </div>
                        <ul class="todo-list" data-widget="todo-list">

                            <!-- SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->
                            <li>
                                <div class="icheck-primary d-inline ml-2">
                                    <div class="form-group">
                                        <asp:Label ID="lblError" ForeColor="Red" runat="server" />

                                        <form id="myForm" class="validar_form">
                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1">
                                                <input type="hidden" id="5" value="5" />
                                                Ocupación/profesión/puesto:
                                            </label>
                                            <br>
                                            <div class="respuestas">
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && (s.OIDPreguntaRef5 >= 5 || s.OIDPreguntaRef5 <= 14)).Select(sel => new
                                                            {
                                                                sel.RespuestaLibre
                                                            }).ToList();
                                                        string Respuesta = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = getOpeNOMRespuestasRef5[0].RespuestaLibre;
                                                        }
                                                %> 
                                                  <div class="row">
                                                    <div class="col-sm-12 col-lg-6 col-md-8" style="color: #000080">
                                                        <textarea id="txtOcupacion" cols="60" onkeypress="fncGetOIDRespuesta();" maxlength="50" rows="2" ><%= Respuesta %></textarea>
                                                    </div>
                                                      </div>
                                                <% 
                                                    }//END: USING 
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="6" value="6" />
                                                Departamento/Sección/Área:
                                            </label>
                                            <br>
                                            <div class="respuestas">
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 6).Select(sel => new
                                                            {
                                                                sel.RespuestaLibre
                                                            }).ToList();
                                                        string Respuesta = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = getOpeNOMRespuestasRef5[0].RespuestaLibre;
                                                        }
                                                %>
                                                  <div class="row">
                                                        <div class="col-sm-12 col-lg-6 col-md-8" style="color: #000080">
                                                            <textarea id="txtDepartamento" cols="60" onkeypress="fncGetOIDRespuesta();" maxlength="50" rows="2" ><%= Respuesta %></textarea>
                                                        </div>
                                                      </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="7" value="7" />
                                                Tipo de puesto:
                                            </label>
                                            <br>
                                            <div  class="respuestas">
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 7).Select(sel => new
                                                            {
                                                                sel.OIDRespuestaRef5
                                                            }).ToList();
                                                        int Respuesta = 0;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = Convert.ToInt32(getOpeNOMRespuestasRef5[0].OIDRespuestaRef5);
                                                        }

                                                        string chkOperativo = string.Empty;
                                                        string chkSupervisor = string.Empty;
                                                        string chkProfesionalTecnico = string.Empty;
                                                        string chkGerente = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
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
                                                        }
                                                %>
                                                    <div  class="respuestas">
                                                        <input type="radio" value="37" <%= chkOperativo %> name="3" title="Operativo" onclick="fncGetOIDRespuesta(this);" /> Operativo <br />
                                                        <input type="radio" value="38" <%= chkSupervisor %> name="3" title="Supervisor" onclick="fncGetOIDRespuesta(this);" /> Supervisor <br />
                                                        <input type="radio" value="39" <%= chkProfesionalTecnico %> name="3" title="Profesional o técnico" onclick="fncGetOIDRespuesta(this);" /> Profesional o técnico <br />
                                                        <input type="radio" value="40" <%= chkGerente %> name="3" title="Gerente" onclick="fncGetOIDRespuesta(this);" /> Gerente <br />
                                                    </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="8" value="8" />
                                                Tipo de contratación:
                                            </label>
                                            <br>
                                            <div>
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 8).Select(sel => new
                                                            {
                                                                sel.OIDRespuestaRef5
                                                            }).ToList();
                                                        int Respuesta = 0;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = Convert.ToInt32(getOpeNOMRespuestasRef5[0].OIDRespuestaRef5);
                                                        }

                                                        string chkObraProyecto = string.Empty;
                                                        string chkTiempoIndeterminado = string.Empty;
                                                        string chkTiempoDeterminado = string.Empty;
                                                        string chkHonorario = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
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
                                                        }
                                                %>
                                                        <div  class="respuestas">
                                                            <input type="radio" value="41" <%= chkObraProyecto %> name="4" title="Por obra o proyecto" onclick="fncGetOIDRespuesta(this);" /> Por obra o proyecto <br />
                                                            <input type="radio" value="42" <%= chkTiempoIndeterminado %> name="4" title="Tiempo indeterminado" onclick="fncGetOIDRespuesta(this);" /> Tiempo indeterminado <br />
                                                            <input type="radio" value="43" <%= chkTiempoDeterminado %> name="4" title="Por tiempo determinado (temporal)" onclick="fncGetOIDRespuesta(this);" /> Por tiempo determinado (temporal) <br />
                                                            <input type="radio" value="44" <%= chkHonorario %> name="4" title="Honorarios" onclick="fncGetOIDRespuesta(this);" /> Honorarios <br />
                                                        </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="9" value="9" />
                                                Tipo de personal:
                                            </label>
                                            <br>
                                            <div>
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 9).Select(sel => new
                                                            {
                                                                sel.OIDRespuestaRef5
                                                            }).ToList();
                                                        int Respuesta = 0;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = Convert.ToInt32(getOpeNOMRespuestasRef5[0].OIDRespuestaRef5);
                                                        }

                                                        string chkSindicalizado = string.Empty;
                                                        string chkConfianza = string.Empty;
                                                        string chkNinguno = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
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
                                                        }
                                                %>
                                                        <div  class="respuestas">
                                                            <input type="radio" value="45" <%= chkSindicalizado %> name="5" title="Sindicalizado" onclick="fncGetOIDRespuesta(this);" /> Sindicalizado <br />
                                                            <input type="radio" value="46" <%= chkConfianza %> name="5" title="Confianza" onclick="fncGetOIDRespuesta(this);" /> Confianza <br />
                                                            <input type="radio" value="47" <%= chkNinguno %> name="5" title="Ninguno" onclick="fncGetOIDRespuesta(this);" /> Ninguno <br />
                                                        </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="10" value="10" />
                                                Tipo de jornada de trabajo:
                                            </label>
                                            <br>
                                            <div>
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 10).Select(sel => new
                                                            {
                                                                sel.OIDRespuestaRef5
                                                            }).ToList();
                                                        int Respuesta = 0;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = Convert.ToInt32(getOpeNOMRespuestasRef5[0].OIDRespuestaRef5);
                                                        }

                                                        string chkNocturno = string.Empty;
                                                        string chkMixto = string.Empty;
                                                        string chkDiurno = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
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
                                                        }
                                                %>
                                                        <div  class="respuestas">
                                                            <input type="radio" value="48" <%= chkNocturno %> name="6" title="Fijo nocturno (entre las 20:00 y 6:00 hrs)" onclick="fncGetOIDRespuesta(this);" /> Fijo nocturno (entre las 20:00 y 6:00 hrs) <br />
                                                            <input type="radio" value="49" <%= chkMixto %> name="6" title="Fijo mixto (combinación de nocturno y diurno)" onclick="fncGetOIDRespuesta(this);" /> Fijo mixto (combinación de nocturno y diurno) <br />
                                                            <input type="radio" value="50" <%= chkDiurno %> name="6" title="Fijo diurno (entre las 6:00 y 20:00 hrs" onclick="fncGetOIDRespuesta(this);" /> Fijo diurno (entre las 6:00 y 20:00 hrs <br />
                                                        </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="11" value="11" />
                                                Realiza rotación de turnos:
                                            </label>
                                            <br>
                                            <div>
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 11).Select(sel => new
                                                            {
                                                                sel.OIDRespuestaRef5
                                                            }).ToList();
                                                        int Respuesta = 0;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = Convert.ToInt32(getOpeNOMRespuestasRef5[0].OIDRespuestaRef5);
                                                        }

                                                        string chkSi = string.Empty;
                                                        string chkNo = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
                                                            {
                                                                case 51:
                                                                    chkSi = "checked='checked'";
                                                                    break;
                                                                case 52:
                                                                    chkNo = "checked='checked'";
                                                                    break;
                                                            }
                                                        }
                                                %>
                                                        <div class="respuestas">
                                                            <input type="radio" value="51" <%= chkSi %> name="7" title="Si" onclick="fncGetOIDRespuesta(this);" /> Si <br />
                                                            <input type="radio" value="52" <%= chkNo %> name="7" title="No" onclick="fncGetOIDRespuesta(this);" /> No <br />
                                                        </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="12" value="12" />
                                                Experiencia (años): 
                                            </label>
                                            <br>
                                            <div>
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 12).Select(sel => new
                                                            {
                                                                sel.RespuestaLibre
                                                            }).ToList();
                                                        string Respuesta = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = getOpeNOMRespuestasRef5[0].RespuestaLibre.Trim();
                                                        }
                                                %>
                                                <div class="row respuestas">
                                                    <div class="col-sm-12 col-lg-6 col-md-8" >
                                                        <input type="text" id="txtExperencia" onkeypress="fncGetOIDRespuesta();" value="<%= Respuesta %>" maxlength="2" />
                                                    </div>
                                                </div>
                                                       
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="13" value="13" />
                                                Tiempo en el puesto actual
                                            </label>
                                            <br>
                                            <div>
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 13).Select(sel => new
                                                            {
                                                                sel.OIDRespuestaRef5
                                                            }).ToList();
                                                        int Respuesta = 0;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = Convert.ToInt32(getOpeNOMRespuestasRef5[0].OIDRespuestaRef5);
                                                        }

                                                        string chkMenos6Meses = string.Empty;
                                                        string chkEntre6Meses1Anio = string.Empty;
                                                        string chkEntre1a4Anios = string.Empty;
                                                        string chkEntre5a9Anios = string.Empty;
                                                        string chkEntre10a14Anios = string.Empty;
                                                        string chkEntre15a19Anios = string.Empty;
                                                        string chkEntre20a24Anios = string.Empty;
                                                        string chkEntre25AniosOMas = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
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
                                                        }
                                                %>
                                                        <div class="respuestas">
                                                            <input type="radio" value="54" <%= chkMenos6Meses %> name="9" title="Menos de 6 meses" onclick="fncGetOIDRespuesta(this);" /> Menos de 6 meses <br />
                                                            <input type="radio" value="55" <%= chkEntre6Meses1Anio %> name="9" title="Entre 6 meses y 1 año" onclick="fncGetOIDRespuesta(this);" /> Entre 6 meses y 1 año <br />
                                                            <input type="radio" value="56" <%= chkEntre1a4Anios %> name="9" title="Entre 1 a 4 años" onclick="fncGetOIDRespuesta(this);" /> Entre 1 a 4 años <br />
                                                            <input type="radio" value="57" <%= chkEntre5a9Anios %> name="9" title="Entre 5 a 9 años" onclick="fncGetOIDRespuesta(this);" /> Entre 5 a 9 años <br />
                                                            <input type="radio" value="58" <%= chkEntre10a14Anios %> name="9" title="Entre 10 a 14 años" onclick="fncGetOIDRespuesta(this);" /> Entre 10 a 14 años <br />
                                                            <input type="radio" value="59" <%= chkEntre15a19Anios %> name="9" title="Entre 15 a 19 años" onclick="fncGetOIDRespuesta(this);" /> Entre 15 a 19 años <br />
                                                            <input type="radio" value="60" <%= chkEntre20a24Anios %> name="9" title="Entre 20 a 24 años" onclick="fncGetOIDRespuesta(this);" /> Entre 20 a 24 años <br />
                                                            <input type="radio" value="61" <%= chkEntre25AniosOMas %> name="9" title="25 años o más" onclick="fncGetOIDRespuesta(this);" /> 25 años o más <br />
                                                        </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1" >
                                                <input type="hidden" id="14" value="14" />
                                                Tiempo experiencia laboral	
                                            </label>
                                            <br>
                                            <div>
                                                <% 
                                                    using (var oContext = new NOM035Entities())
                                                    {
                                                        var getOpeNOMRespuestasRef5 = oContext.OpeNOMRespuestasReferencia5.
                                                            Where(s => s.OIDEncuesta == OIDEncuesta && s.OIDPreguntaRef5 == 14).Select(sel => new
                                                            {
                                                                sel.OIDRespuestaRef5
                                                            }).ToList();
                                                        int Respuesta = 0;
                                                        if (getOpeNOMRespuestasRef5.Count == 1)
                                                        {
                                                            Respuesta = Convert.ToInt32(getOpeNOMRespuestasRef5[0].OIDRespuestaRef5);
                                                        }

                                                        string chkMenos6Meses = string.Empty;
                                                        string chkEntre6Meses1Anio = string.Empty;
                                                        string chkEntre1a4Anios = string.Empty;
                                                        string chkEntre5a9Anios = string.Empty;
                                                        string chkEntre10a14Anios = string.Empty;
                                                        string chkEntre15a19Anios = string.Empty;
                                                        string chkEntre20a24Anios = string.Empty;
                                                        string chkEntre25AniosOMas = string.Empty;
                                                        if (getOpeNOMRespuestasRef5.Count() == 1)
                                                        {
                                                            switch (Respuesta)
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
                                                        <div class="respuestas">
                                                            <input type="radio" value="62" <%= chkMenos6Meses %> name="10" title="Menos de 6 meses" onclick="fncGetOIDRespuesta(this);" /> Menos de 6 meses <br />
                                                            <input type="radio" value="63" <%= chkEntre6Meses1Anio %> name="10" title="Entre 6 meses y 1 año" onclick="fncGetOIDRespuesta(this);" /> Entre 6 meses y 1 año <br />
                                                            <input type="radio" value="64" <%= chkEntre1a4Anios %> name="10" title="Entre 1 a 4 años" onclick="fncGetOIDRespuesta(this);" /> Entre 1 a 4 años <br />
                                                            <input type="radio" value="65" <%= chkEntre5a9Anios %> name="10" title="Entre 5 a 9 años" onclick="fncGetOIDRespuesta(this);" /> Entre 5 a 9 años <br />
                                                            <input type="radio" value="66" <%= chkEntre10a14Anios %> name="10" title="Entre 10 a 14 años" onclick="fncGetOIDRespuesta(this);" /> Entre 10 a 14 años <br />
                                                            <input type="radio" value="67" <%= chkEntre15a19Anios %> name="10" title="Entre 15 a 19 años" onclick="fncGetOIDRespuesta(this);" /> Entre 15 a 19 años <br />
                                                            <input type="radio" value="68" <%= chkEntre20a24Anios %> name="10" title="Entre 20 a 24 años" onclick="fncGetOIDRespuesta(this);" /> Entre 20 a 24 años <br />
                                                            <input type="radio" value="68" <%= chkEntre25AniosOMas %> name="10" title="25 años o más" onclick="fncGetOIDRespuesta(this);" /> 25 años o más <br />
                                                        </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->
                                        </form>
                                    </div>
                                </div>
                            </li>
                            <!-- END: SE IMPRIMEN LAS PREGUNTAS RELACIONADAS AL CUESTIONARIO -->

                        </ul>
                    </div>

                    <input type="hidden" id="Contador" value="10" /> 

                    <!-- /.card-body -->
                    <form runat="server">
                        <dx:ASPxHiddenField ID="hiddenOIDPreguntas" runat="server" ClientInstanceName="hiddenOIDPreguntas"></dx:ASPxHiddenField>
                        <dx:ASPxHiddenField ID="hiddenOIDRespuestas" runat="server" ClientInstanceName="hiddenOIDRespuestas"></dx:ASPxHiddenField>
                        <dx:ASPxHiddenField ID="hiddenUltimoSistemaOperativo" runat="server" ClientInstanceName="hiddenUltimoSistemaOperativo"></dx:ASPxHiddenField>
                        <dx:ASPxHiddenField ID="hiddenUltimoNavegador" runat="server" ClientInstanceName="hiddenUltimoNavegador"></dx:ASPxHiddenField>
                        <dx:ASPxHiddenField ID="hiddenValorRespuesta" runat="server" ClientInstanceName="hiddenValorRespuesta"></dx:ASPxHiddenField>

                        <div class="card-footer clearfix" >
                            <div class="row">
                                <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center"> 
                                    <button id="btnAnterior" type="button" onserverclick="btnAnterior_ServerClick" onclick="fncGuardarRespuestas();" class="btn "  runat="server">
                                <span id="texto">  Anterior</span>
                            </button></div>
                                 <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center"> <button id="btnSalir" onserverclick="btnSalir_ServerClick" type="button" class="btn"  runat="server">Salir</button></div>
                                 <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                     <button id="btnGuardar" type="button" onserverclick="btnGuardar_ServerClick" onclick="fncGuardarRespuestas();" class="btn "  runat="server">
                                <span id="texto"> Siguiente</span>
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

</body>
</html>