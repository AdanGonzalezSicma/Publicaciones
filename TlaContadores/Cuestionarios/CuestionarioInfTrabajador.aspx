<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CuestionarioInfTrabajador.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.CuestionarioInfTrabajador" %>

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
    int OIDEmpresa = 0;
    int OIDEncuesta = 0;

    CentroTrabajo = context.Session["CentroTrabajo"].ToString();
    NumEncuesta = context.Session["NumEncuesta"].ToString();
    CodigoEmpresa = context.Session["CodigoEmpresa"].ToString();
    using (var oContext = new NOM035Entities())
    {
        var getEmpresa = oContext.OpeNOMEmpresas.Where(s => s.CodigoEmpresa == CodigoEmpresa).Select(sel => new
        {
            sel.OIDEmpresa,
            sel.Nombre,
            sel.ImagenNegocio
        }).ToList();
        if(getEmpresa.Count == 1)
        {
            OIDEmpresa = Convert.ToInt32(getEmpresa[0].OIDEmpresa);
            NombreEmpresa = getEmpresa[0].Nombre;
        }

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
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="../Content/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../Content/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../Content/dist/css/adminlte.min.css">
     <link href="../Content/img/nom.png" rel="icon" />
     <link href="../Content/css/adminlte.min.css" rel="stylesheet" />
    <link href="../Content/css/main.min.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/css/sb-admin-2.min.css" rel="stylesheet" />
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper" style="background-color: #fff;">
 <style>
       
          @media screen and (max-width: 600px) {
                            #informacion {
                               text-align:center
                            }
                            #btnAnterior{
                                font-size:12px;
                                width:100%;
                                margin-right: 2px; 
                               

                            }
                            #texto{
                                display:none
                            }
                             #btnSalir{
                                font-size:12px;
                                width:100%;
                                margin-right: 2px; 
                               

                            }
                              #btnGuardar{
                                font-size:12px;
                                width:100%;
                                margin-right: 2px; 
                               

                            }
                        }
                        @media screen and (min-width: 601px) {
                           
                            #btnAnterior{
                                font-size:1rem;
                                width:100px;
                                margin-right: 2px; 
                               

                            }
                            #btnSalir{
                                font-size:1rem;
                                width:100px;
                                margin-right: 2px; 
                               

                            }
                            #btnGuardar{
                                font-size:1rem;
                                width:100px;
                                margin-right: 2px; 
                               

                            }
                            #icon{
                                display:none
                            }
                        }
        /* estos son los id que se utilizan para cambiar el color de fondo de los botones y la letra, se separaron por si se necesitaba darle colores diferentes a cada uno*/
                /*#btnAnterior {  background-color: #43bfc7; color: white; }
                #btnSalir {  background-color: #43bfc7;   color: white;  }
                #btnGuardar { background-color: #43bfc7; color: white; }*/
                /*Clase que se utiliza para darle un color de fondo al card donde aparecen los datos de la empresa*/
                /*.card-titulo { background-color: #43bfc7;  }*/
                 /*Clase que se utiliza para darle un color a la letra del card donde aparecen los datos de la empresa*/
                /*.card-titulo h4 { color: #fff }               
                 .card-titulo p {  color: #fff }*/               
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

                    <div class="card-header" >
                        <h3 class="card-title text-center" style="color: white; float: none; font-size:25px"><b><i class="ion ion-clipboard mr-1"></i>NOM-035-STPS-2018</b>
                        </h3>
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
             
            <div class="text-left">
                  <div class="card-body card-titulo"  style="border-left:1px solid #e3e6f0; border-right:1px solid #e3e6f0; box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                <div class="row">
                    <div class="col-lg-2 text-center">
                        <img src="<%= UrlImagen %>" style=" box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12); width:120px; height:120px" alt="IMAGEN" />
                    </div>
                    <div id="informacion" class="col-lg-10">
                        <h4><b><%= NombreEmpresa %></b></h4>
                        <h4><b><%= CentroTrabajo %></b></h4>
                        <h4><b>Informe de referencia V</b></h4>
                        <p>Información del trabajador</p>
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
                    <div class="card-header">
                        <h3 class="card-title">
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
                            <li style="background-color:#fff; border:none">
                                <div class="icheck-primary d-inline ml-2">
                                    <div class="form-group">
                                        <asp:Label ID="lblError" ForeColor="Red" runat="server" />

                                        <form id="myForm" class="validar_form">
                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1">
                                                <input type="hidden" id="1" value="1" />
                                               <b> Sexo:</b>
                                            </label>
                                            <br>
                                            <div class="respuestas">
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
                                                        <div>
                                                             <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="1" <%= chkMasculino %> name="1" title="Masculino" onclick="fncGetOIDRespuesta(this);" /> Masculino </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="2" <%= chkFemenino %> name="1" title="Femenino" onclick="fncGetOIDRespuesta(this);" /> Femenino </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> </div>
                                                    </div>
                                                           
                                                        </div>
                                                       
                                                <%
                                                    }//END: USING
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1">
                                                <input type="hidden" id="2" value="2" />
                                                <b>Edad en años:</b>
                                            </label>
                                            <br>
                                            <div class="respuestas">
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
                                                        <div >
                                                             <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="3" <%= chk15_19 %> name="2" title="15 - 19" onclick="fncGetOIDRespuesta(this);" /> 15 - 19</div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="4" <%= chk20_24 %> name="2" title="20 - 24" onclick="fncGetOIDRespuesta(this);" /> 20 - 24 </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="5" <%= chk25_29 %> name="2" title="25 - 29" onclick="fncGetOIDRespuesta(this);" /> 25 - 29 </div>
                                                    </div>
                                                             <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="6" <%= chk30_34 %> name="2" title="30 - 34" onclick="fncGetOIDRespuesta(this);" /> 30 - 34</div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><input type="radio" value="7" <%= chk35_39 %> name="2" title="35 - 39" onclick="fncGetOIDRespuesta(this);" /> 35 - 39  </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="8" <%= chk40_44 %> name="2" title="40 - 44" onclick="fncGetOIDRespuesta(this);" /> 40 - 44</div>
                                                    </div>
                                                             <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="9" <%= chk45_49 %> name="2" title="45 - 49" onclick="fncGetOIDRespuesta(this);" /> 45 - 49</div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="10" <%= chk50_54 %> name="2" title="50 - 54" onclick="fncGetOIDRespuesta(this);" /> 50 - 54 </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="11" <%= chk55_59 %> name="2" title="55 - 59" onclick="fncGetOIDRespuesta(this);" /> 55 - 59 </div>
                                                    </div>
                                                             <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="12" <%= chk60_64 %> name="2" title="60 - 64" onclick="fncGetOIDRespuesta(this);" /> 60 - 64</div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="13" <%= chk65_69 %> name="2" title="65 - 69" onclick="fncGetOIDRespuesta(this);" /> 65 - 69 </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="14" <%= chk70omás %> name="2" title="70 o más" onclick="fncGetOIDRespuesta(this);" /> 70 o más</div>
                                                    </div>
                                                            
                                                        </div>
                                                       
                                                        
                                                <%
                                                    }//END: USING
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1">
                                                <input type="hidden" id="3" value="3" />
                                                <b>Estado civil:</b>
                                            </label>
                                            <br>
                                            <div class="respuestas">
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
                                                        <div >
                                                             <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="15" <%= chkSoltero %> name="3" title="Soltero" onclick="fncGetOIDRespuesta(this);" /> Soltero </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="16" <%= chkUnionLibre %> name="3" title="Unión libre" onclick="fncGetOIDRespuesta(this);" /> Unión libre  </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="17" <%= chkCasado %> name="3" title="Casado" onclick="fncGetOIDRespuesta(this);" /> Casado </div>
                                                    </div>
                                                             <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="18" <%= chkDivorciado %> name="3" title="Divorciado" onclick="fncGetOIDRespuesta(this);" /> Divorciado </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">   <input type="radio" value="19" <%= chkViudo %> name="3" title="Viudo" onclick="fncGetOIDRespuesta(this);" /> Viudo </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> </div>
                                                    </div>
                                                          
                                                        </div>
                                                        
                                                        
                                                       
                                                <%
                                                    }//END: USING
                                                %>
                                            </div>
                                            <br />
                                            <!-- PREGUNTA Y RESPUESTA -->

                                            <!-- PREGUNTA Y RESPUESTA -->
                                            <label for="exampleFormControlInput1">
                                                <input type="hidden" id="4" value="4" />
                                               <b>Nivel de estudios:</b> 
                                            </label>
                                            <br>
                                            <div class="respuestas">
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
                                                <div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><b>Primaria:</b> </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">
                                                            <input type="radio" value="21" <%= chkPrimariaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" />
                                                            Terminada 
                                                        </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">
                                                            <input type="radio" value="22" <%= chkPrimariaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" />
                                                            Incompleta
                                                            <br />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><b> Secundaria:</b> </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="23" <%= chkSecundariaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" /> Terminada </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="24" <%= chkSecundariaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" /> Incompleta <br /></div>
                                                    </div>

                                                     <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <b>Preparatoria o Bachillerato: </b></div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><input type="radio" value="25" <%= chkPreparatoriaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" /> Terminada </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="26" <%= chkPreparatoriaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" /> Incompleta <br /></div>
                                                    </div>
                                                     <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><b>Técnico Superior: </b></div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><input type="radio" value="27" <%= chkTecnicoSuperiorTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" /> Terminada </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><input type="radio" value="28" <%= chkTecnicoSuperiorIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" /> Incompleta <br /></div>
                                                    </div>
                                                     <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><b>Licenciatura:</b> </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><input type="radio" value="29" <%= chkLicenciaturaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" /> Terminada </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><input type="radio" value="30" <%= chkLicenciaturaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" /> Incompleta <br /></div>
                                                    </div>
                                                     <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><b>Maestría:</b> </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="31" <%= chkMaestriaTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" /> Terminada </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"> <input type="radio" value="32" <%= chkMaestriaIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" /> Incompleta <br /></div>
                                                    </div>
                                                     <div class="row">
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><b>Doctorado:</b> </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="33" <%= chkDoctoradoTerminada %> name="4" title="Terminada" onclick="fncGetOIDRespuesta(this);" /> Terminada </div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3">  <input type="radio" value="34" <%= chkDoctoradoIncompleta %> name="4" title="Incompleta" onclick="fncGetOIDRespuesta(this);" /> Incompleta <br /></div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-lg-3 col-sm-0 col-md-3"></div>
                                                        <div class="col-lg-3 col-sm-12 col-md-3"><input type="radio" value="20" <%= chkSinFormacion %> name="4" title="Sin formación" onclick="fncGetOIDRespuesta(this);" /> Sin formación </div>
                                                        </div>
                                                       
                                                       

                                                   
                                                        
                                                       

                                                
                                            

                                                    
                                                      
                                                        

                                                    
                                                      
                                                       

                                                    
                                                      
                                                      

                                                        
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

                    <input type="hidden" id="Contador" value="4" />
                    
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
                                    <button id="btnAnterior" onserverclick="btnAnterior_ServerClick" onmouseup="fncGuardarRespuestas();" type="button" class="btn"  runat="server">
                                      <span id="texto">  Anterior</span> 
                                    </button>
                                </div>
                                <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                    <button id="btnSalir" onserverclick="btnSalir_ServerClick" type="button" class="btn" runat="server">Salir</button>
                                </div>
                                <div class="col-4 col-lg-4 col-md-4 col-sm-4 text-center">
                                    <button id="btnGuardar" type="button" onserverclick="btnGuardar_ServerClick" onmouseup="fncGuardarRespuestas();" class="btn "  runat="server">
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

        for (var i = 1; i <= ContadorJS; i++) {
            var OIDPregunta = document.getElementById(i).value;

            if (i >= ContadorJS) {
                arrOIDPregunta += OIDPregunta;
            } else {
                arrOIDPregunta += OIDPregunta + ",";
            }
        }

        alert("arrOIDPregunta: " + arrOIDPregunta);
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

</body>
</html>