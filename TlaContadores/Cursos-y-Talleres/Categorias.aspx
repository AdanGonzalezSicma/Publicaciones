<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="CreandoProductividad.Cursos_y_Talleres.Categorias" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenOIDCurso" ClientInstanceName="hiddenOIDCurso" runat="server"></dx:ASPxHiddenField>
    <style>
        thead {
            background-color: #43bfc7 !important;
            color: #ffffff
        }




        .titulo-objetivo {
            color: navy;
            font-size: 13px;
            padding: 0.3em 0.3em;
            background-color: #f88017
        }

        label i {
            padding-right: 5px
        }

        #respuestas {
            color: gray !important;
        }

        .btn-success {
            background-color: #43bfc7;
        }



        @media screen and (max-width: 899px) {
            .button-container label {
                position: absolute;
                left: 1em;
                font-style: italic;
                text-transform: lowercase;
                padding: 0.3em 0.3em;
                font-size: 8px;
                font-weight: 600;
                background-color: #f88017;
                color: navy
            }

            label {
                font-size: 12px;
                margin-bottom: 1px !important
            }

            .titulo {
                color: navy;
                font-size: 12px
            }

            .curso {
                color: navy;
                font-size: 15px;
                font-weight: 700
            }
            h5{
                font-size:15px
            }
            p{
                font-size:14px
            }
         
        }
         @media screen and (max-width: 1601px) and (min-width: 1490px) {
 h5{
                font-size:17px
            }
  p{
      font-size:16px
 }
         }
           @media screen and (max-width: 1489px) and (min-width:900px) {
 h5{
                font-size:14px
            }
 p{
      font-size:14px
 }
         }
        @media screen and (max-width: 1499px) {
            .button-container label {
                position: absolute;
                left: 0.5em;
                font-style: italic;
                text-transform: lowercase;
                padding: 0.2em 0.2em;
                font-size: 10px;
                font-weight: 600;
                background-color: #f88017;
                color: navy
            }

            .titulo-objetivo {
                color: navy;
                font-size: 11px;
                padding: 0.3em 0.3em;
                background-color: #f88017
            }

            label {
                font-size: 11px;
                margin-bottom: 1px !important
            }

            .titulo {
                color: navy;
                font-size: 11px
            }

            .curso {
                color: navy;
                font-size: 15px;
                font-weight: 700
            }
        }

        @media screen and (min-width: 1500px) and (max-width: 1700px) {
            .button-container label {
                position: absolute;
                bottom: 13em;
                left: 0.5em;
                font-style: italic;
                text-transform: lowercase;
                padding: 0.2em 0.2em;
                font-size: 12px;
                font-weight: 600;
                background-color: #f88017;
                color: navy
            }

            .titulo-objetivo {
                color: navy;
                font-size: 15px;
                padding: 0.3em 0.3em;
                background-color: #f88017
            }

            label {
                font-size: 15px;
                margin-bottom: 1px !important
            }

            .titulo {
                color: navy;
                font-size: 15px
            }

            .curso {
                color: navy;
                font-size: 23px;
                font-weight: 700
            }
        }

        @media screen and (min-width:1701px) {
            .button-container label {
                position: absolute;
                bottom: 11em;
                left: 0.5em;
                font-style: italic;
                text-transform: lowercase;
                padding: 0.2em 0.2em;
                font-size: 15px;
                font-weight: 600;
                background-color: #f88017;
                color: navy
            }

            .titulo-objetivo {
                color: navy;
                font-size: 15px;
                padding: 0.3em 0.3em;
                background-color: #f88017
            }

            label {
                font-size: 15px;
                margin-bottom: 1px !important
            }

            .titulo {
                color: navy;
                font-size: 15px
            }

            .curso {
                color: navy;
                font-size: 23px;
                font-weight: 700
            }
        }

        .button-container {
            display: inline-block;
            position: relative;
        }


        h1 {
            color: navy;
            font-weight: 800
        }

        hr {
            margin-bottom: 2px !important;
            margin-top: 2px !important
        }
    </style>
    <!-- DISTRACTOR CARGANDO -->
    <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel" Modal="True"></dx:ASPxLoadingPanel>
    <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0" style="padding-top: 15px;font-weight:600">Cursos por Categoría</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item active" style="color: white">Cursos por Categoría</li>

                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <br />
        <br />
        <div class="row" style="padding-top: 15px">
            <asp:Repeater ID="repeaterAnio" runat="server" OnItemDataBound="repeaterAnio_ItemDataBound">
                <ItemTemplate>
                    <div class="col-sm-12 d-flex justify-content-center">
                        <h1 class="text-center" id="Anio"><%# Eval("Anio") %></h1>
                    </div>
                    <br />
                    <asp:Repeater ID="repeaterMes" runat="server" OnItemDataBound="repeaterMes_ItemDataBound">
                        <ItemTemplate>
                            <div class="col-sm-12 d-flex justify-content-center">
                                <h4 class="text-center"><%# Eval("Mes") %></h4>
                            </div>
                            <br />
                            <asp:Repeater ID="repeaterCursosTalleres" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-3 col-md-6 col-sm-12" style="padding-bottom: 10px">

                                        <div class="card shadow-sm" style="width: 100%">
                                            <div class="card-img-top text-center">
                                                <img src="/images/cursos.png" alt="Card image" style="max-height: 200px; max-width: 200px">
                                            </div>
                                            <%-- <div class="button-container text-left">
                                                <asp:Image ID="imgCurso" runat="server" ImageUrl='<%# GetImage(Eval("Imagen")) %>' Style="width: 100%; height:200px" CssClass="card-img-top imagen" />
                                                <label class="label label-success"><%# Eval("Categoria") %></label>
                                               
                                            </div>--%>


                                            <div class="card-body">
                                                <h5 class="card-title"><b><%# Eval("Titulo") %></b></h5>
                                                <p><%# Eval("Objetivo") %></p>
                                                <div class="row">
                                                    <div class="col-lg-5">
                                                        <p style="font-size:13px"><b class="iconoB"><i class="fa fa-exclamation-circle" aria-hidden="true"></i>Tipo:</b><%# Eval("Tipo") %> </p>
                                                    </div>
                                                    <div class="col-lg-7">
                                                        <p style="font-size:13px"><b class="iconoB">Segmento:</b> <%# Eval("SegmentoDesde") %>/ <%# Eval("SegmentoHasta") %></p>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <p style="font-size:14px"><b class="iconoB"><i class="fa fa-user" aria-hidden="true"></i>Instructor:</b><%# Eval("Instructor") %> </p>
                                                    </div>
                                                      
                                                </div>



                                            </div>
                                            <div class="card-footer">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                                        <p style="font-size:15px"><i class="fa fa-play iconoB" aria-hidden="true"></i><%# Eval("Visualizaciones") %> </p>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                                        <p style="font-size:15px"><i class="fa fa-clock iconoB" aria-hidden="true"></i><%# Eval("DuracionHoras") %> hrs</p>
                                                    </div>
                                                  
                                                </div>
                                                <a class="btn btn-primary" href="/Cursos-y-Talleres/Curso.aspx?Guid=<%# Eval("OIDCurso") %>" style="width: 100%">Información</a>

                                            </div>
                                            <%--    <div class="row">
                                                  
                                                    <div class="col-lg-12">
                                                        <label class="curso" ></label>
                                                         <hr />

                                                        <b>
                                                            <label class="titulo-objetivo"><i class="fa fa-check-circle" aria-hidden="true"></i>Objetivo:</label></b>

                                                        <label></label>
                                                        <%--<label class="mb-2 mr-sm-2"><%# Recortar(Eval("Objetivo").ToString(),150,1) %></label>--%>

                                            <%-- <br />
                                                        <b>
                                                            <label class="titulo-objetivo"><i class="fa fa-list" aria-hidden="true"></i>Temario:</label></b>
                                                        <label><%#Eval("Temario") %></label>--%>
                                            <%--<label class="mb-2 mr-sm-2"><%#Recortar(Eval("Temario").ToString(),150,1) %></label>--%>
                                            <%--   <br />--%>
                                            <%--<label class="titulo"><i class="fa fa-exclamation-circle" aria-hidden="true"></i>Tipo: </label>
                                                        <label></label>
                                                       <br />
                                                        <label class="titulo"><i class="fa fa-user" aria-hidden="true"></i>Instructor: </label>
                                                        <label></label><br />
                                                       <label class="titulo"><i class="fa fa-play" aria-hidden="true"></i> Reproducciones: <label></label>
                                                       </label>  --%>
                                            <%-- <label><%# Eval("Video")  %></label>--%>
                                            <%--<label class="mb-2 mr-sm-2"><%# Recortar(Eval("Video").ToString(),25,2)  %></label>--%>

                                            <%--   </div>
                                                </div>--%>
                                        </div>
                                        <%--<%--  <div class="card-footer" style="border-top:none; background-color:white; padding-top:0!important"> 
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-4 col-sm-12">
                                                        
                                                           <i class="fa fa-clock" aria-hidden="true"></i>
                                                       
                                                        <label> hrs</label>
                                                    </div>
                                                    <div class="col-lg-6 col-md-4 col-sm-12">
                                                        
                                                     <label>Segmento:</label> 
                                                        <label></label><label>/</label>
                                                        <label></label>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                                        <%--<button type="button"onclick="fncAgregarEditarCurso(<%# Eval("OIDCurso") %>)">Editar</button>--%>

                                        <%--       </div>
                                                </div>
                                                
                                               
                                               
                                              
                                            </div>--%>
                                    </div>


                                </ItemTemplate>
                            </asp:Repeater>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:Repeater>

        </div>
        <br />
    </div>

</asp:Content>
