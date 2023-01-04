<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="Sistema_web.Inscripciones.Alumnos" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro Más Control</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="../Content/js/TCIValidations.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <style>
        @media screen and (max-width: 991px) {
            .img {
                display: none;
            }
        }
          .panel-default>.panel-heading {
    color: #fff;
    background-color: #0090bf;
    border-color: #ddd;
}
        .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
            color: #f7aa00;
            cursor: default;
            background-color: #0090bf;
            border: 1px solid #ddd;
            border-bottom-color: transparent;
        }

        .form-group {
            margin-left: 10px;
            margin-right: 10px;
        }

        .btn-warning {
            background-color: #f7aa00 !important;
        }
        /*menu movil botton*/
        .mobile-bottom-nav {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            will-change: transform;
            transform: translateZ(0);
            display: flex;
            height: 50px;
            box-shadow: 0 -2px 5px -2px #333;
            background-color: #fff;
        }

        .mobile-bottom-nav__item {
            flex-grow: 1;
            text-align: center;
            font-size: 12px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .mobile-bottom-nav__item--active a {
            color: #f7aa00 !important;
        }

        .mobile-bottom-nav__item-content {
            display: flex;
            flex-direction: column;
        }

            .mobile-bottom-nav__item-content a {
                color: #0090bf
            }

        i {
            font-style: normal !important;
            font-size: 18px !important
        }

        @media screen and (min-width: 850px) {
            .mobile-bottom-nav {
                display: none;
            }
        }

        @media screen and (max-width: 850px) {
            .nav {
                display: none;
            }
        }

        h4 {
            color: #f7aa00
        }

        h2 {
            color: #0090bf
        }
    </style>
</head>
<body style="background-color: rgb(238, 238, 238);">
    <script>
        window.onload = function tabs() {
            if (screen.width < 600) {
                document.getElementById("tab").className = "nav nav-tabs ";

            }
            else {
                document.getElementById("tab").className = "nav nav-tabs nav-justified";
            }
        }
        function myfunction() {
            document.getElementById("menu1ul").className = "active";
            document.getElementById("homeul").className = "normal";
            document.getElementById("menu1").className = "tab-pane fade in active";
            document.getElementById("home").className = "tab-pane fade";
        }
        function myfunction2() {
            document.getElementById("menu2ul").className = "active";
            document.getElementById("menu1ul").className = "normal";
            document.getElementById("menu2").className = "tab-pane fade in active";
            document.getElementById("menu1").className = "tab-pane fade";
        }
        function myfunction3() {
            document.getElementById("menu3ul").className = "active";
            document.getElementById("menu2ul").className = "normal";
            document.getElementById("menu3").className = "tab-pane fade in active";
            document.getElementById("menu2").className = "tab-pane fade";
        }
        function myfunction4() {
            document.getElementById("menu4ul").className = "active";
            document.getElementById("menu3ul").className = "normal";
            document.getElementById("menu4").className = "tab-pane fade in active";
            document.getElementById("menu3").className = "tab-pane fade";
        }
        function ShowPreviewActaNacimiento(input) {
            if (input.files && input.files[0]) {
                var extension = input.files[0].name.split('.').pop().toLowerCase();
                //var tamanio = input.files[0].size;
                //if (parseInt(tamanio) >= 300000) {
                //    alert('La imagen supera el máximo permitido de 300 kb');
                //    return;
                //}
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    if (extension == 'pdf') {
                        $("#iframeActaNacimiento").attr('src', e.target.result);
                        $("#iframeActaNacimiento").attr('Width', "100%");
                        $("#iframeActaNacimiento").attr('height', '100%');
                        $('#imgActaNacimiento').attr('src', '');

                    }
                    if (extension == 'jpg' || extension == 'jpeg' || extension == 'png') {
                        $('#imgActaNacimiento').attr('src', e.target.result);
                        $("#iframeActaNacimiento").attr('height', '0');
                        $("#iframeActaNacimiento").attr('Width', '0');
                        $("#iframeActaNacimiento").attr('src', '');
                    }
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
        function ShowPreviewCurp(input) {
            if (input.files && input.files[0]) {
                var extension = input.files[0].name.split('.').pop().toLowerCase();
                //var tamanio = input.files[0].size;
                //if (parseInt(tamanio) >= 300000) {
                //    alert('La imagen supera el máximo permitido de 300 kb');
                //    return;
                //}
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    if (extension == 'pdf') {
                        $("#iframeCurp").attr('src', e.target.result);
                        $("#iframeCurp").attr('Width', "100%");
                        $("#iframeCurp").attr('height', '100%');
                        $('#imgCurp').attr('src', '');

                    }
                    if (extension == 'jpg' || extension == 'jpeg' || extension == 'png') {
                    $('#imgCurp').attr('src', e.target.result);
                    $("#iframeCurp").attr('height', '0');
                    $("#iframeCurp").attr('Width', '0');
                    $("#iframeCurp").attr('src', '');
                    }
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
        function ShowPreviewINE(input) {
            if (input.files && input.files[0]) {
                var extension = input.files[0].name.split('.').pop().toLowerCase();
                //var tamanio = input.files[0].size;
                //if (parseInt(tamanio) >= 300000) {
                //    alert('La imagen supera el máximo permitido de 300 kb');
                //    return;
                //}
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    if (extension == 'pdf') {
                        $("#iframeINETutor").attr('src', e.target.result);
                        $("#iframeINETutor").attr('Width', "100%");
                        $("#iframeINETutor").attr('height', '100%');
                        $('#imgINETutor').attr('src', '');

                    }
                    if (extension == 'jpg' || extension == 'jpeg' || extension == 'png') {
                    $('#imgINETutor').attr('src', e.target.result);
                    $("#iframeINETutor").attr('height', '0');
                    $("#iframeINETutor").attr('Width', '0');
                    $("#iframeINETutor").attr('src', '');
                    }
                }
                }
                ImageDir.readAsDataURL(input.files[0]);
            }        
        function ShowPreviewAlumno(input) {
            if (input.files && input.files[0]) {
                var extension = input.files[0].name.split('.').pop().toLowerCase();
                //var tamanio = input.files[0].size;
                //if (parseInt(tamanio) >= 300000) {
                //    alert('La imagen supera el máximo permitido de 300 kb');
                //    return;
                //}
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    if (extension == 'pdf') {
                        $("#iframeFotoAlumno").attr('src', e.target.result);
                        $("#iframeFotoAlumno").attr('Width', "100%");
                        $("#iframeFotoAlumno").attr('height', '100%');
                        $('#imgFotoAlumno').attr('src', '');

                    }
                    if (extension == 'jpg' || extension == 'jpeg' || extension == 'png') {
                    $('#imgFotoAlumno').attr('src', e.target.result);
                    $("#iframeFotoAlumno").attr('height', '0');
                    $("#iframeFotoAlumno").attr('Width', '0');
                    $("#iframeFotoAlumno").attr('src', '');
                    }
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
        function ShowPreviewIdentificacion(input) {
            if (input.files && input.files[0]) {
                var extension = input.files[0].name.split('.').pop().toLowerCase();
                //var tamanio = input.files[0].size;
                //if (parseInt(tamanio) >= 300000) {
                //    alert('La imagen supera el máximo permitido de 300 kb');
                //    return;
                //}
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    if (extension == 'pdf') {
                        $("#iframeIdentificacion").attr('src', e.target.result);
                        $("#iframeIdentificacion").attr('Width', "100%");
                        $("#iframeIdentificacion").attr('height', '100%');
                        $('#imgIdentificacion').attr('src', '');

                    }
                    if (extension == 'jpg' || extension == 'jpeg' || extension == 'png') {
                    $('#imgIdentificacion').attr('src', e.target.result);
                    $("#iframeIdentificacion").attr('height', '0');
                    $("#iframeIdentificacion").attr('Width', '0');
                    $("#iframeIdentificacion").attr('src', '');
                    }
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <form id="form1" runat="server">
        <div class="container" style="padding-top: 5%;">
            <div class="row" style="background-color: white; border-radius: 10px;">
                <div class="col-lg-6 col-md-6 col-sm-0" style="height: 100%; border-top: none!important; margin:inherit; ">
                    <%--<br />--%>
                    <asp:Image ID="imgDeporte" runat="server" Style="width: 100%; min-height:95vh; border-radius: 10px 0 0 10px" class="img" />
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="text-center">
                        <br />
                        <asp:Image ID="imgLogoClub" runat="server" Width="100px" />
                        <br />
                        <h2><b>Registro de Alumnos</b> </h2>
                    </div>
                    <ul id="tab" class="nav nav-tabs nav-justified ">
                        <li id="homeul" class=" text-dark active"><a data-toggle="tab" href="#home"><b>Paso 1</b></a></li>
                        <li id="menu1ul"><a data-toggle="tab" href="#menu1"><b>Paso 2 </b></a></li>
                        <li id="menu2ul" runat="server"><a data-toggle="tab" href="#menu2"><b>Paso 3</b></a></li>
                        <li id="menu3ul" runat="server"><a data-toggle="tab" href="#menu3"><b>Paso 4</b></a></li>
                        <%--  <li id="menu4ul" runat="server"><a data-toggle="tab" href="#menu4"><b>Paso 5</b></a></li>--%>
                    </ul>

                    <div class="tab-content">
                        <div id="home" class="tab-pane fade in active">
                            <br />
                            <div class="text-center">
                                <h4><b>Datos Generales</b></h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="usr">Nombre:</label>
                                        <asp:TextBox ID="txtNombreAlumno" runat="server" class="form-control" MaxLength="30" onkeypress="return onlyLetters(event)"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqtxtNombreAlumno" ControlToValidate="txtNombreAlumno" Display="Dynamic" ForeColor="Red" ValidationGroup="Alumno" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="pwd">Apellido(s):</label>
                                        <asp:TextBox ID="txtApellidos" runat="server" class="form-control" MaxLength="50" onkeypress="return onlyLetters(event)"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqtxtApellidos" ControlToValidate="txtApellidos" Display="Dynamic" ForeColor="Red" ValidationGroup="Alumno" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="usr">Género:</label>
                                        <asp:DropDownList ID="ddlGenero" runat="server" class="form-control">
                                            <asp:ListItem Text="Masculino" Value="1" />
                                            <asp:ListItem Text="Femenino" Value="2" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="usr">Correo Electronico:</label>
                                        <asp:TextBox ID="txtCorreoElectronico" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqtxtCorreoElectronico" ControlToValidate="txtCorreoElectronico" Display="Dynamic" ForeColor="Red" ValidationGroup="Alumno" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <label for="pwd" style="color: red">Guardar el NIP para futuros cambios:</label><br />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">

                                        <b>
                                            <asp:Label ID="lblNIP" runat="server" Text="NIP:"></asp:Label></b>
                                        <asp:TextBox ID="txtNIP" runat="server" class="form-control" onkeypress="return onlyNumbers(event)" MaxLength="4"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="usr">Fecha de nacimiento:</label>
                                        <asp:TextBox ID="txtFechaNacimiento" runat="server" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqtxtFechaNacimiento" ControlToValidate="txtFechaNacimiento" Display="Dynamic" ForeColor="Red" ValidationGroup="Alumno" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>




                            <div class="form-group">
                                <label for="usr">CURP:</label>
                                <asp:TextBox ID="txtCurp" runat="server" class="form-control" MaxLength="15" Style="text-transform: uppercase"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqtxtCurp" ControlToValidate="txtCurp" Display="Dynamic" ForeColor="Red" ValidationGroup="Alumno" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                            </div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="udtPanel" runat="server">
                                <ContentTemplate>
                                    <div class="form-group">
                                        <label for="usr">Selecciona el tipo de entrenamiento:</label><br />
                                        <asp:Panel ID="pnlTipoMembrecia" runat="server">
                                            <asp:RadioButton ID="chkAcademia" runat="server" Text="Academia" GroupName="Membrecia" Width="30%" OnCheckedChanged="chkAcademia_CheckedChanged" AutoPostBack="true" Font-Bold="false" />
                                            <asp:RadioButton ID="chkPersonalizado" runat="server" Text="Personalizado" GroupName="Membrecia" Width="30%" OnCheckedChanged="chkPersonalizado_CheckedChanged" AutoPostBack="true" Font-Bold="false" />
                                            <asp:RadioButton ID="chkAmbas" runat="server" Text="Ambas" GroupName="Membrecia" Width="30%" OnCheckedChanged="chkAmbas_CheckedChanged" AutoPostBack="true" Font-Bold="false" />
                                        </asp:Panel>
                                    </div>
                                    <div class="form-group" id="divMembreciaAcademia" runat="server" visible="false">
                                        <asp:DropDownList ID="ddlMembreciaAcademia" runat="server" class="form-control" Width="100%"></asp:DropDownList>
                                    </div>
                                    <div class="form-group" id="divMembreciaPersonalizado" runat="server" visible="false">
                                        <asp:DropDownList ID="ddlMembreciaPersonalizada" runat="server" class="form-control" Width="100%"></asp:DropDownList>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                           
                             <div class="panel-group" id="accordion2">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-lg-10 col-md-10 col-sm-10">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion2" href="#Alumno">Foto del alumno</a>

                                                </h4>
                                            </div>
                                             <div class="col-lg-2 col-md-2 col-sm-2 text-right">
                                                 <a data-toggle="collapse" data-parent="#accordion2" href="#Alumno"><i class="fa fa-chevron-down" aria-hidden="true"  style="color:white"></i></a>

                                             </div>
                                        </div>
                                       
                                        <div class="text-right"></div>
                                    </div>
                                    <div id="Alumno" class="panel-collapse collapse">
                                        <div class="panel-body">
                                              <div class="form-group text-center">
                              
                                <asp:Image ID="imgFotoAlumno" runat="server" Width="100px" />
                                <iframe id="iframeFotoAlumno" width="0" height="0" style="border: none;" runat="server"></iframe>
                                <asp:FileUpload ID="fuFotoAlumno" runat="server" class="form-control" onchange="ShowPreviewAlumno(this)" />
                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          
                            <button type="button" class="btn btn-warning" style="width: 100%; background-color: #f7aa00;" onclick="myfunction()">Siguiente Paso</button>
                        </div>


                        <div id="menu1" class="tab-pane fade">
                            <br />
                            <div class="text-center">
                                <h4><b>Documentación:</b></h4>
                            </div>
                             <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="usr">Teléfono Movil:</label>
                                        <asp:TextBox ID="txtTelefonoMovil" runat="server" class="form-control" MaxLength="15"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqtxtTelefonoMovil" ControlToValidate="txtTelefonoMovil" Display="Dynamic" ForeColor="Red" ValidationGroup="Alumno" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label for="pwd">Teléfono Fijo:</label>
                                        <asp:TextBox ID="txtTelefonoFijo" runat="server" class="form-control" MaxLength="15"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqtxtTelefonoFijo" ControlToValidate="txtTelefonoFijo" Display="Dynamic" ForeColor="Red" ValidationGroup="Alumno" runat="server" ErrorMessage="Este campo es obligatorio"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="usr">Fecha de Ingreso:</label>
                                <asp:TextBox ID="txtFechaIngreso" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
                            </div>
                              <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <div class="row">
                                            <div class="col-lg-10 col-md-10 col-sm-10">
                                               <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#Curp">Subir CURP:</a>
                                        </h4>
                                            </div>
                                             <div class="col-lg-2 col-md-2 col-sm-2 text-right">
                                                 <a data-toggle="collapse" data-parent="#accordion" href="#Curp"><i class="fa fa-chevron-down" aria-hidden="true" style="color:white"></i></a>

                                             </div>
                                        </div>
                                       
                                    </div>
                                    <div id="Curp" class="panel-collapse collapse">
                                         <div class="panel-body">
                                  </div>
                            <div class="form-group">
                               
                                <asp:Image ID="imgCurp" runat="server" Width="100%" />
                                <iframe id="iframeCurp" width="0" height="0" style="border: none;" runat="server"></iframe>
                                <asp:FileUpload ID="fileUpCurp" runat="server" class="form-control" onchange="ShowPreviewCurp(this)" />
                            </div>
                                        </div>
                                      
                                    </div>
                                </div>
                               <div class="panel-group" id="accordion3">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <div class="row">
                                            <div class="col-lg-10 col-md-10 col-sm-10">
                                               <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#Nacimiento">Subir Acta de nacimiento:</a>
                                        </h4>
                                            </div>
                                             <div class="col-lg-2 col-md-2 col-sm-2 text-right">
                                                 <a data-toggle="collapse" data-parent="#accordion" href="#Nacimiento"><i class="fa fa-chevron-down" aria-hidden="true" style="color:white"></i></a>

                                             </div>
                                        </div>
                                       
                                    </div>
                                    <div id="Nacimiento" class="panel-collapse collapse">
                                         <div class="panel-body">
    
                            <div class="form-group">
                                
                                <asp:Image ID="imgActaNacimiento" runat="server" Width="100%" />
                                <iframe id="iframeActaNacimiento" width="0" height="0" style="border: none;" runat="server"></iframe>
                                <asp:FileUpload ID="fileUpActaNacimiento" runat="server" class="form-control" onchange="ShowPreviewActaNacimiento(this)" />
                            </div>
                                  </div>
                         
                                        </div>
                                      
                                    </div>
                                </div>
                        <div class="panel-group" id="accordion4">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                          <div class="row">
                                            <div class="col-lg-10 col-md-10 col-sm-10">
                                              <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#Identificacion">Subir Identificación:</a>
                                        </h4>
                                            </div>
                                             <div class="col-lg-2 col-md-2 col-sm-2 text-right">
                                                 <a data-toggle="collapse" data-parent="#accordion" href="#Identificacion"><i class="fa fa-chevron-down" aria-hidden="true" style="color:white"></i></a>

                                             </div>
                                        </div>
                                       
                                    </div>
                                    <div id="Identificacion" class="panel-collapse collapse">
                                         <div class="panel-body">
      <div class="form-group">
                                
                                <asp:Image ID="imgIdentificacion" runat="server" Width="100%" />
                                <iframe id="iframeIdentificacion" width="0" height="0" style="border: none;" runat="server"></iframe>
                                <asp:FileUpload ID="fuIdentificacion" runat="server" class="form-control" onchange="ShowPreviewIdentificacion(this)" />
                            </div>
                           
                                  </div>
                         
                                        </div>
                                      
                                    </div>
                                </div>
                          

                            <%--                            <div class="form-group">
                                <label for="usr">Nivel de ingreso:</label>
                                <dx:ASPxComboBox ID="ddlNivelIngreso" runat="server" ValueType="System.String" class="form-control" Width="100%" DataSourceID="SqlDSNivelDisciplinas" ValueField="Oid" TextField="Descripcion" SelectedIndex="0"></dx:ASPxComboBox>
                            </div>
                            <div class="form-group">
                                <label for="usr">Nivel deseado:</label>
                                <dx:ASPxComboBox ID="ddlNovelDeseado" runat="server" class="form-control" Width="100%" DataSourceID="SqlDSNivelDisciplinas" ValueField="Oid" TextField="Descripcion" SelectedIndex="0"></dx:ASPxComboBox>
                                <asp:SqlDataSource runat="server" ID="SqlDSNivelDisciplinas" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [Descripcion] FROM [CatDisciplinasNiveles] WHERE ([Activo] = @Activo)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>--%>
                            <button id="siguientepaso2" type="button" class="btn btn-warning" style="width: 100%; background-color: #f7aa00;" onclick="myfunction2()" runat="server">Siguiente Paso</button>

                        </div>
                        <div id="menu2" class="tab-pane fade">
                            <br />
                            <div class="text-center">
                                <h4><b>Datos del tutor</b></h4>
                            </div>
                            <div class="form-group">
                                <label for="usr">Nombre del Tutor:</label>
                                <asp:TextBox ID="txtNombreTutor" runat="server" class="form-control" MaxLength="100" onkeypress="return onlyLetters(event)"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Teléfono Fijo del tutor:</label>
                                <asp:TextBox ID="txtTelefonoFijoTutor" runat="server" class="form-control" MaxLength="15"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="usr">Teléfono Movil del tutor:</label>
                                <asp:TextBox ID="txtTelefonoMovilTutor" runat="server" class="form-control" MaxLength="15"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="usr">Correo Electronico del Tutor:</label>
                                <asp:TextBox ID="txtCorreoElectronicoTutor" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                            </div>
                                    <div class="panel-group" id="accordion5">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                          <div class="row">
                                            <div class="col-lg-10 col-md-10 col-sm-10">
                                              <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#Ine">INE/IFE del Tutor:</a>
                                        </h4>
                                            </div>
                                             <div class="col-lg-2 col-md-2 col-sm-2 text-right">
                                                 <a data-toggle="collapse" data-parent="#accordion" href="#Ine"><i class="fa fa-chevron-down" aria-hidden="true" style="color:white"></i></a>

                                             </div>
                                        </div>
                                      
                                    </div>
                                    <div id="Ine" class="panel-collapse collapse">
                                         <div class="panel-body">
                                         <div class="form-group">
                                
                                <asp:Image ID="imgINETutor" runat="server" Width="100%" />
                                <iframe id="iframeINETutor" width="0" height="0" style="border: none;" runat="server"></iframe>
                                <asp:FileUpload ID="fuINETutor" runat="server" class="form-control" onchange="ShowPreviewINE(this)" />
                            </div>
                           
                                  </div>
                         
                                        </div>
                                      
                                    </div>
                                </div>
                           
                            <div class="form-group">
                                <label for="usr">Comentarios del tutor:</label>
                                <asp:TextBox ID="txtComentariosTutor" runat="server" class="form-control" TextMode="MultiLine" Rows="3" Style="resize: none"></asp:TextBox>
                            </div>
                            <button type="button" class="btn btn-warning" style="width: 100%; background-color: #f7aa00;" onclick="myfunction3()">Siguiente Paso</button>
                        </div>
                        <div id="menu3" class="tab-pane fade">
                            <br />
                            <div class="text-center">
                                <h4><b>Datos de estudios</b></h4>
                            </div>
                            <div class="form-group">
                                <label for="usr">Tipo de Servicios Médicos:</label>
                                <asp:TextBox ID="txtTipoServiciosMedicos" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="usr">Póliza de Servicios Médicos:</label>
                                <asp:TextBox ID="txtPolizaServiciosMedicos" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                            </div>

                            <div class="text-center">
                                <h4><b>Datos de la Institución</b></h4>
                            </div>
                            <div class="form-group">
                                <label for="usr">Institucion Educativa:</label>
                                <asp:TextBox ID="txtInstitucion" runat="server" class="form-control" MaxLength="100"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="usr">Institucion Teléfono:</label>
                                <asp:TextBox ID="txtInstitucionTelefono" runat="server" class="form-control" MaxLength="15"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="usr">Institucion Entrenador:</label>
                                <asp:TextBox ID="txtInstitucionEntrenador" runat="server" class="form-control" MaxLength="50" onkeypress="return onlyLetters(event)"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnGuardar" runat="server" Text="Envíar" class="btn btn-warning" Style="width: 100%; background-color: #f7aa00;" ValidationGroup="Alumno" OnClick="btnGuardar_Click" />
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>

                    <nav class="mobile-bottom-nav">
                        <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content" id="homeul">
                                <a data-toggle="tab" href="#home"><i class="fas fa-address-book" aria-hidden="true"></i></a>

                            </div>
                        </div>
                        <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content" id="menu1ul">
                                <a data-toggle="tab" href="#menu1"><i class="fa fa-lock" aria-hidden="true"></i></a>

                            </div>
                        </div>
                        <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content" id="menu2ul">
                                <a data-toggle="tab" href="#menu2"><i class="fas fa-phone"></i></a>

                            </div>
                        </div>
                        <div class="mobile-bottom-nav__item">
                            <div class="mobile-bottom-nav__item-content" id="menu3ul">
                                <a data-toggle="tab" href="#menu3"><i class="fa fa-address-card" aria-hidden="true"></i></a>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>

        </div>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
