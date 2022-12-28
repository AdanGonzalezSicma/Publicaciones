<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.Acceso_Nuevo" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>NOM-035</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="/css/ionicons.min.css"/>
    <link rel="stylesheet" href="/css/bootstrap.css"/>
    <link rel="stylesheet" href="/css/fonts.css"/>
    <link rel="stylesheet" href="/css/style.css"/>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"/>
    <link href="/images/demo/logo-icon2.ico" rel="icon" />

</head>
<body>
    <%=CargarTema() %>
    <%--<style>
        .section-banner {background-color: #045fac;color:white;}
        .borde {border-right: 3px solid #548cde;}
        .button-primary, .button-primary {background-color: #548cde;border-color: #548cde;color: #ffffff;}
        .card {box-shadow: 0 0 25px 0 rgba(20, 27, 202, .17);}
        .form-control {display: block;width: 100%; font-size: 14px;line-height: 1.34;color: #495057;background-color: #fff;background-image: none;background-clip: padding-box;border: 1px solid #ced4da;border-radius: 0.25rem;transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;}
        .imgLogo{width:50%}
        label {color: #00367c}
    </style>--%>
    <style>
        
        @media screen and (max-width: 600px) {
            .imgLogo {
                width: 80%
            }
        }
        @media screen and (max-width: 1700px) {
            .card {
                
                margin-top: 5%
            }
        }
        @media screen and (min-width: 1701px) {
            .card {
                margin-top: 15%
            }
        }
        @media screen and (max-width: 780px) {
           

                .borde h5 {
                    font-size: 1.08rem
                }

           
        }
        body {
   font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    
}
        p{
font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
        }
        .dxpcLite_Material, .dxdpLite_Material {
    border-spacing: 0;
    font: 14px -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    color: black;
}
    </style>
    <script type="text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=CheckBox1.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
        function OcultarError() {
            popupError.Hide();
        }
        function MostarDistractor() {
            if (document.getElementById("<%=CheckBox1.ClientID %>").checked == true) {
            loadingPanel.Show();
            }
        }
    </script>
    <form id="form1" runat="server">
        <div class="content">
            <div class="container-fluid section section-banner text-center d-none d-xl-block">

                <div class="row text-center" style="padding: 0.5%; margin-top: 0px!important">
                    <div class="col-lg-4 col-md-5 borde">
                        <h3>¡Plataforma Nom-035!</h3>
                    </div>
                    <div class="col-lg-5 col-md-5  borde">
                        <h5 style="text-transform: none;">Para cumplir paso a paso con la implementación de la NOM-035</h5>
                    </div>
                    <div class="col-lg-3 col-md-2">
                        <asp:Button ID="btnSalir" class="button button-primary button-ujarak" Style="padding: .375rem 0.75rem!important; min-width: 90px;border-radius: 0.25rem" runat="server" Text="Salir" OnClick="btnSalir_Click" />
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="row text-center">
                                    <div class="col-lg-12">
                                        <asp:Image ID="imgLogo" runat="server"  class="imgLogo"/>
                                    </div>

                                </div>
                                <div class="row" style="margin-top: 31px!important">
                                    <div class="col-lg-1"></div>
                                    <div class="col-lg-10" style="padding-left: 5%; padding-right: 5%">
                                        <div class="form-group">
                                            <label for="usr">Código de empresa:</label>
                                            <asp:TextBox ID="txtCodigoEmpresa" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC" class="form-control"  MaxLength="20"  AutoPostBack="false"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="pwd">Código de centro de trabajo:</label>
                                            <asp:TextBox ID="txtCodigoArea" class="form-control" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC"   MaxLength="20"/>
                                            <asp:Button id="btnBuscarDepartamento" Text="Buscar departamento" runat="server" class="button button-primary button-ujarak" Style="width: 100%; padding: 8px 33px 8px; color: white;border-radius: 0.25rem" OnClick="btnBuscarDepartamento_Click" />
                                        </div>
                                        <div runat="server" id="divBuscar" visible="false">
                                            <div class="form-group">
                                                <label for="sel1">Departamento:</label>
                                                <asp:DropDownList ID="ddlDepartamento" runat="server" Width="100%" class="form-control"></asp:DropDownList>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <asp:CheckBox ID="CheckBox1" runat="server" class="form-check-input" ForeColor="Red" required/>
                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ValidationGroup="Ingresar" Display="None" ClientValidationFunction="ValidateCheckBox"></asp:CustomValidator>
                                                    <a href="/../terminos-condiciones.html" target="_blank" style="color:red">Aceptar Términos y Condiciones</a>
                                                </label>
                                            </div>
                                              <div class="form-check">
                                                <label class="form-check-label">
                                                    <asp:CheckBox ID="CheckBox2" runat="server" class="form-check-input" ForeColor="Red" required/>
                                                   
                                                    <a href="/../Aviso-privacidad.html" target="_blank" style="color:red">Aceptar Aviso de privacidad</a>
                                                </label>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="col-lg-1"></div>
                                </div>
                                <br />
                            </div>
                            <div class="card-footer" style="background-color: white; border-top:none">
                                <div class="row">
                                    
                                    <div class="col-lg-6 col-sm-12">
                                        <asp:Button ID="btnCancelar" Text="Cancelar" runat="server" class="button button-danger button-ujarak" Style="width: 100%; padding: 8px 33px 8px; color: white; margin-bottom: 3px;border-radius: 0.25rem" OnClick="btnCancelar_Click" data-caption-animate="fadeInUp" ValidationGroup="pololo"/></div>
                                    
                                    <div class="col-lg-6 col-sm-12">
                                        <asp:Button ID="btnIngresar" onmouseup="MostarDistractor()" runat="server" ValidationGroup="Ingresar" class="button button-primary button-ujarak" Style="width: 100%; padding: 8px 33px 8px; color: white; margin-bottom: 3px;border-radius: 0.25rem" Text="Ingresar" OnClick="btnComenzar_Click" /></div>
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </div>
            <br />
            <br />
            <dx:ASPxPopupControl ID="popupError" ClientInstanceName="popupError" runat="server" HeaderStyle-ForeColor="White" HeaderText="Oh, oh, algo salió mal..." Width="500px">
                <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" FixedFooter="False" />
                <HeaderImage IconID="status_warning_16x16">
                </HeaderImage>
                <HeaderStyle ForeColor="White" BackColor="#DC3545" Border-BorderColor="#DC3545" Border-BorderStyle="Solid" Border-BorderWidth="1px"></HeaderStyle>
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server">
                        <p style="font-size: 18px; color: #606060">
                            <asp:Label Text="" ID="lblErrorIngresar" runat="server" /></p>
                        <br />
                        <br />
                        <div class="text-right">
                            <button class="btn btn-primary" type="button" style="padding: 8px 33px 8px; color: white; background-color: #DC3545" onclick=" OcultarError()">Aceptar</button>
                        </div>
                    </dx:PopupControlContentControl>

                </ContentCollection>


                <Border BorderStyle="None" />


            </dx:ASPxPopupControl>
            <!-- The Modal -->
            <div class="modal fade" id="modalError">
                <div class="modal-dialog modal-dialog-centered modal-lg" >
                    <div class="modal-content"style="min-height:300px">

                        <!-- Modal Header -->
                        <div class="modal-header" style="background-color:#dc3545;color:white">

                            <h5 class="modal-title"><i class="fas fa-exclamation-circle" style="font-size:29px"></i> ¡Algo salió mal!</h5>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>


                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <p>No hay números de encuestas disponibles...</p>
                           
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <a class="btn btn-primary" Style=" padding: 8px 33px 8px; color:white" data-dismiss="modal">Aceptar</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel"  Modal="true" runat="server" BackColor="Transparent" Image-Width="100px"  ImagePosition="Top"></dx:ASPxLoadingPanel>
        <!-- jQuery CDN - Slim version (=without AJAX) -->
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript">
            
        $("#txtCodigoEmpresa").keydown(function (e) {
            if (e.keyCode === 13) {
                $("#txtCodigoArea").focus();
                return false;
            }
        });
        $("#txtCodigoArea").keydown(function (e) {
            if (e.keyCode === 13) {
                $("#btnBuscarDepartamento").click();
                return false;
            }
        });
        </script>
    </form>
          
</body>    
     
</html>
