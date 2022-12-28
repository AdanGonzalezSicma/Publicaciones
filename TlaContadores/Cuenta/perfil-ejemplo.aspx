<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="perfil-ejemplo.aspx.cs" Inherits="CreandoProductividad.Cuenta.perfil_ejemplo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<style>
        @media screen and (max-width: 600px) {
            .container-fluid {
                width: 100%;
                padding-right: .10rem !important;
                padding-left: .10rem !important;
                margin-right: auto;
                margin-left: auto;
            }
        }
    </style>--%>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3">
                <div class="card shadow-sm" style="height:100%; background-color:#548cde; color:white">
                    <div class="card-body">
                        <div class="row">
                            <div class=" col-lg-6">
                                <h5>Encuestas</h5>
                            </div>
                            <div class=" col-lg-6">
                                <h5>0</h5>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="card shadow-sm"  style="height:100%; background-color:#548cde; color:white">
                    <div class="card-body">
                         <div class="row">
                            <div class=" col-lg-6">
                                <h5>Código de la empresa:</h5>
                            </div>
                            <div class=" col-lg-6">
                                <h5>PRUEBAC</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="card shadow-sm" style="height:100%; background-color:#548cde; color:white">
                    <div class="card-body">
                          <div class="row">
                            <div class=" col-lg-6">
                                <h5>Correo electrónico:</h5>
                            </div>
                            <div class=" col-lg-6">
                                <P>Empresa_de_prueba@Correo.com</P>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="card shadow-sm" style="height:100%; background-color:#548cde; color:white">
                    <div class="card-body">
                         <div class="row">
                            <div class=" col-lg-6">
                                <h5>Teléfono:</h5>
                            </div>
                            <div class=" col-lg-6">
                                <h5>6623000000</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
               <div class="col-lg-1 col-md-1 col-sm-12"></div>
            <div class="col-lg-3 col-md-3 col-sm-12">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <div class="text-center">
                            <img src="../Content/img/DEFAULT.jpeg" style="width:100%" />
                            <input type="file" class="btn btn-primary" style="width:100%">
                        </div>

                    </div>
                </div>
            </div>
             
            <div class="col-lg-7 col-md-7 col-sm-12">
                <div class="card shadow-sm">
                    <div class="card-header">Información Personal</div>
                    <div class="card-body">
                        <div>
                            <div class="form-group">
                                <label>Nombre de la empresa:</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Código de la empresa: (Este código sirve para ingresar a los cuestionarios, los espacios y los acentos no son permitidos)</label>
                                <input type="text" class="form-control">
                            </div>
                              <div class="form-group">
                                <label>RFC:</label>
                                <input type="text" class="form-control">
                            </div>
                              <div class="form-group">
                                <label>Entidad federativa:</label>
                                <input type="text" class="form-control">
                            </div>
                              <div class="form-group">
                                <label>Municipios:</label>
                                <input type="text" class="form-control">
                            </div>
                                     <div class="form-group">
                                <label>Código postal:</label>
                                <input type="text" class="form-control">
                            </div>
                                    <div class="form-group">
                                <label>Correo electrónico:</label>
                                <input type="text" class="form-control">
                            </div>
                                   <div class="form-group">
                                <label>Teléfono:</label>
                                <input type="text" class="form-control">
                            </div>
                                 <div class="form-group">
                                <label>Teléfono fijo:</label>
                                <input type="text" class="form-control">
                            </div>


                           
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </div>
                 <br />
            <br />
            </div>
               <div class="col-lg-1 col-md-1 col-sm-12"></div>
           
        </div>
    </div>



</asp:Content>
