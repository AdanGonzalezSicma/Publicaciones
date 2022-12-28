<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="ProgresoUsuario.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.ProgresoUsuario_nuevo" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenBandera" ClientInstanceName="hiddenBandera" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>

    <script>
        function MostrarError() {
            loadingPanel.Show();
        }
        function OcultarClave() {
            popupClaveUnica.Hide();
        }
        function OcultarProgreso() {
            popupContinuarProceso.Hide();
        }
    </script>
     <%=CargarTema() %>
    <style>
        /*
            DEMO STYLE
        */

        /*@import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";

        body {
            font-family: 'Poppins', sans-serif;
            background: #fafafa;
        }*/

        p {
           
            font-size:18px;
           
            margin-bottom: 1rem;
           
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
                /*background: #00367c;
                color: #fff;*/
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
                /*background: #00367c;
                color: #fff;*/
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
            /*background: #548cde;*/
        }

        #sidebar ul.components {
            padding: 20px 0;
            /*border-bottom: 1px solid #47748b;*/
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
                /*color: #7386D5;
                background: #fff;*/
            }

        #sidebar ul li.active > a,
        button[aria-expanded="true"] {
            color: #fff;
            /*background: #548cde;*/
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

        ul ul button {
            font-size: 0.9em !important;
            padding-left: 30px !important;
            /*background: #6d7fcc;*/
        }

        ul.INFO {
            padding: 20px;
        }

            ul.INFO button {
                text-align: center;
                font-size: 0.9em !important;
                display: block;
                border-radius: 5px;
                margin-bottom: 5px;
            }

       

        a.article,
        a.article:hover {
            /*background: #6d7fcc !important;
            color: #fff !important;*/
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

        /*.btn-avances {
            background-color: #548cde;
            border-color: #548cde
        }

            .btn-avances:hover {
                background-color: #045fac;
                border-color: #045fac
            }*/

       

       

        .card {
            box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

       

      

       

        .list-group-item {
            position: relative;
            display: block;
            padding: 0.75rem 1.25rem;
            margin-bottom: -1px;
           
        }
       

    </style>
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
                <h3 class="tituloOpciones">Avance de la aplicación NOM-035-STPS-2018:</h3>
                <br />
                <p>
                    De clic en el boton de ingresar de la primera opción para comenzar.
                    <br />

                    Nota: Los siguientes botones se irán activando conforme avance en la aplicación.
                </p>

            </div>
        </div>
        <br />
        <br id="menos1600" />


        <div class="row">
            <div class="col-lg-1 text-center"></div>
            <div class="col-lg-10">
                <asp:Label ID="lblError" runat="server" />     
                <ul class="list-group" style="box-shadow: 1px 1px 3px rgb(0 0 0 / 10%)">
                    <li class="list-group-item d-flex justify-content-between align-items-center" runat="server" id="divDatosEncuestado">
                        <asp:Label ID="lblDatosEncuestados" runat="server" Text="Datos del encuestado"></asp:Label>
                        <button id="btnDatosUsuario" type="button" onmouseup="MostrarError()" class="btn btn-avances" onserverclick="btnDatosUsuario_ServerClick" runat="server">
                            Ingresar
                        </button>
                        <asp:Image ID="Image1" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <asp:Label ID="lblPrimerVideoSensibilizacion" Text="I Parte del curso" runat="server" />
                        <button id="btnPrimerVideoSensibilizacion" onmouseup="MostrarError()" type="button" class="btn btn-avances" onserverclick="btnPrimerVideoSensibilizacion_ServerClick"
                            runat="server">
                            <img src="../Content/icons/completado3.png" style="width: 20px; height: 20px" />
                            / Ingresar
                        </button>
                        <asp:Image ID="imgPrimerVideoSensibilizacion" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <asp:Label ID="lblPrimerRetroalimentacion" Text="I Retroalimentación" runat="server" />
                        <button id="btnPrimerRetroalimentacion" onmouseup="MostrarError()" type="button" class="btn btn-avances" onserverclick="btnPrimerRetroalimentacion_ServerClick"
                            runat="server">
                            Ingresar</button>
                        <asp:Image ID="imgPrimerRetroalimentacion" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <asp:Label ID="lblSegundoVideoSensibilizacion" Text="II Parte del curso" runat="server" />
                        <button id="btnSegundoVideoSensibilizacion" onmouseup="MostrarError()" type="button" class="btn btn-avances" onserverclick="btnSegundoVideoSensibilizacion_ServerClick"
                            runat="server">
                            <img src="../Content/icons/completado3.png" style="width: 20px; height: 20px" />
                            / Ingresar</button>
                        <asp:Image ID="imgSegundoVideoSensibilizacion" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <asp:Label ID="lblSegundaRetroalimentacion" Text="II Retroalimentación" runat="server" />
                        <button id="btnSegundaRetroalimentacion" onmouseup="MostrarError()" type="button" class="btn btn-avances" onserverclick="btnSegundaRetroalimentacion_ServerClick"
                            runat="server">
                            Ingresar</button>
                        <asp:Image ID="imgSegundaRetroalimentacion" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <asp:Label ID="lblGuiaITitulo" Text="Guia Referencia I.- Acontecimientos Traumaticos" runat="server" />
                        <button id="btnGuiaI" onmouseup="MostrarError()" onserverclick="btnGuiaI_ServerClick" type="button" class="btn btn-avances"
                            runat="server">
                            Ingresar
                        </button>
                        <asp:Image ID="imgGuiaI" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center" runat="server" id="divGuiaII">
                        <asp:Label ID="lblGuiaIITitulo" Text="Guia Referencia II.- Factores de Riesgo Psicosocial" runat="server" />
                        <button id="btnGuiaII" onmouseup="MostrarError()" onserverclick="btnGuiaII_ServerClick" type="button" class="btn btn-avances"
                            runat="server">
                            Ingresar</button>
                        <asp:Image ID="imgGuiaII" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center" runat="server" id="divGuiaIII">
                        <asp:Label ID="lblGuiaIIITitulo" Text="Guia Referencia III.- Evaluación del Entorno Psicosocial" runat="server" />
                        <button id="btnGuiaIII" onmouseup="MostrarError()" onserverclick="btnGuiaIII_ServerClick" type="button" class="btn btn-info"
                            runat="server">
                            Ingresar</button>
                        <asp:Image ID="imgGuiaIII" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <asp:Label ID="lblGuiaVTitulo" Text="Guia Referencia V.- Datos del Trabajador" runat="server" />
                        <button id="btnGuiaV" onmouseup="MostrarError()" onserverclick="btnGuiaV_ServerClick" type="button" class="btn btn-avances" runat="server">
                            Ingresar</button>
                        <asp:Image ID="imgGuiaV" ImageUrl="../Content/icons/completado3.png" Visible="false" runat="server" />
                    </li>
                </ul>
            </div>
            <div class="col-lg-1 text-center"></div>
        </div>

        <br />
        <br />
    </div>

    <dx:ASPxPopupControl ID="popupClaveUnica" ClientInstanceName="popupClaveUnica" runat="server" HeaderStyle-ForeColor="White" HeaderText="Clave Única " MinWidth="750px" Width="100%" SettingsAdaptivity-Mode="Always">
        <SettingsAdaptivity MinHeight="20%" MinWidth="345px" MaxHeight="450px" MaxWidth="50%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderImage IconID="support_info_16x16">
        </HeaderImage>
        <HeaderStyle ForeColor="White"  Border-BorderStyle="None"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <p>Esta es su Clave, asegúrese de guardarla ya que, si se interrumpe el proceso, necesitará ingresarla nuevamente:</p>
                <div class="row text-center">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4 text-center">
                        <asp:TextBox ID="txtClaveAcceso" runat="server" class="form-control" style="text-align: center; width: 100%;" maxlength="14" ReadOnly="true"></asp:TextBox>
                    </div>

                    <div class="col-lg-4"></div>

                    <br />

                </div>
                <div class="text-right">
                    <input id="Button1" type="button" value="Aceptar" class="btn btn-primary" style="padding: 8px 33px 8px; color: white" onclick="OcultarClave()" />
                </div>
            </dx:PopupControlContentControl>

        </ContentCollection>


        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popupContinuarProceso" ClientInstanceName="popupContinuarProceso" runat="server" HeaderStyle-ForeColor="White" HeaderText="¡Sigue con la aplicacion de la nom-035!" MinWidth="750px" Width="100%" SettingsAdaptivity-Mode="Always">
        <SettingsAdaptivity MinHeight="20%" MinWidth="345px" MaxHeight="450px" MaxWidth="50%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderImage IconID="support_info_16x16">
        </HeaderImage>
        <HeaderStyle ForeColor="White"  Border-BorderStyle="None"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <p>La aplicacion de la nom-035 va avanzando de forma correcta, por favor de clic en el siguiente botón para continuar.</p>

                <br />
                <br />
                <div class="text-right">
                    <input id="Button1" type="button" value="Continuar el proceso" class="btn btn-primary" style="padding: 8px 33px 8px; color: white" onclick="OcultarProgreso()" />
                </div>
            </dx:PopupControlContentControl>

        </ContentCollection>


        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server"></dx:ASPxPopupControl>
    <!-- The Modal -->
    <div class="modal fade" id="myModal3">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content" style="min-height: 300px">

                <!-- Modal Header -->
                <div class="modal-header">

                    <h5 class="modal-title"><i class="fas fa-exclamation-circle" style="font-size: 29px"></i>Clave única</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>


                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <p>Esta es su Clave, asegúrese de guardarla ya que, si se interrumpe el proceso, necesitará ingresarla nuevamente:</p>
                    <div class="row text-center">
                        <div class="col-lg-4"></div>
                        <div class="col-lg-4 text-center">
                            <input type="text" class="form-control" style="text-align: center; width: 100%;" maxlength="14" placeholder="12345678912345" readonly>
                        </div>

                        <div class="col-lg-4"></div>



                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <a class="btn btn-primary" style="padding: 8px 33px 8px; color: white" data-dismiss="modal">Continuar el proceso</a>
                </div>

            </div>
        </div>
    </div>

    <!-- The Modal -->
    <div class="modal fade" id="myModal4">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content" style="min-height: 300px">

                <!-- Modal Header -->
                <div class="modal-header">

                    <h5 class="modal-title"><i class="fas fa-exclamation-circle" style="font-size: 29px"></i>¡Sigue con la aplicacion de la nom-035!</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>


                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <p>Continua con el proceso al darle clic al siguiente bontón de ingresar.</p>

                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <a class="btn btn-primary" style="padding: 8px 33px 8px; color: white" data-dismiss="modal">Continuar el proceso</a>
                </div>

            </div>
        </div>
    </div>
    <dx:ASPxPopupControl ID="popupError" ClientInstanceName="popupError" runat="server" HeaderStyle-ForeColor="White" HeaderText="Oh, oh, algo salió mal..." Width="500px">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" FixedFooter="False" />
        <HeaderImage IconID="status_warning_16x16">
        </HeaderImage>
        <HeaderStyle ForeColor="White" BackColor="#DC3545" Border-BorderColor="#DC3545" Border-BorderStyle="Solid" Border-BorderWidth="1px"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <p style="font-size: 18px; color: #606060">
                    <asp:Label Text="" ID="lblErrorIngresar" runat="server" />
                </p>
                <br />
                <br />
                <div class="text-right">
                    <button class="btn btn-primary" type="button" style="padding: 8px 33px 8px; color: white; background-color: #DC3545" onclick=" OcultarError()">Aceptar</button>
                </div>
            </dx:PopupControlContentControl>

        </ContentCollection>


        <Border BorderStyle="None" />


    </dx:ASPxPopupControl>
    <script src="/Content/js/jquery.min.js"></script>

    <!-- SCRIPT -->
    <script type="text/javascript">
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
        });

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

            if ( /* !leftWindow  && */ (!from || from.nodeName === 'HTML')) {
                // Haz lo que quieras aquí

                var MostrarMensaje = "";
                var Bandera = "";
                Bandera = hiddenBandera.Get("Bandera");

                if (Bandera && MostrarMensaje != 1) {
                    var mensaje = confirm('¿Desea salir de la página?');
                    if (mensaje) {
                        MostrarMensaje = 1;
                        cbActualizarNumeroAccesos.PerformCallback();
                        location.href = "Acceso.aspx";
                    }
                }
                
                // localStorage.setItem( 'leftWindow', true );
            }
        });

    </script>
</asp:Content>
