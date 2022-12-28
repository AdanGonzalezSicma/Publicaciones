<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="ClaveCuestionario.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.ClaveCuestionario_nuevo" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxLoadingPanel ID="loadingPanel" ShowImage="true" Image-Url="/images/load.gif" ClientInstanceName="loadingPanel" Modal="true" runat="server"  Border-BorderColor="Transparent" Border-BorderWidth="0" BackColor="Transparent" Image-Width="100px" ImagePosition="Top" CssClass="shadow-none"></dx:ASPxLoadingPanel>
    <script>
        function DistractorPrimeraVez() {
            popuoClave.Hide();
                popupReingreso.Hide();
            loadingPanel.Show();
        }
        function DistractorSegundaVez() {
            if (document.getElementById("ContentPlaceHolder1_popupReingreso_txtNumEncuesta_I").value != "") {
                popupReingreso.Hide();
            loadingPanel.Show();
            }
        }
    </script>
    <%=CargarTema() %>
    <style>
        @media (min-width: 576px) {
            .dxmodalSys > .dxpclW {
                max-width: 700px !important;
                margin: 30px auto;
            }
        }
    </style>
   <%--  <div class="container-fluid section section-banner text-center d-none d-xl-block">

                <div class="row text-center" style="padding: 0.5%; margin-top: 0px!important">
                    <div class="col-lg-4 col-md-5 borde">
                        <h3>¡Plataforma Nom-035!</h3>
                    </div>
                    <div class="col-lg-5 col-md-5  borde">
                        <h5 style="text-transform: none;">Para cumplir paso a paso con la implementación de la NOM-035</h5>
                    </div>
                    <div class="col-lg-3 col-md-2">
                        <button class="btn btn-primary" style="padding: 9px 20px 9px!important; min-width: 90px" runat="server">Salir</button>
                    </div>
                </div>
            </div>--%>
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
                <h3 class="tituloOpciones">Seleccione una opción:</h3>
                <br />
                <p>
                    De clic en el primer botón para iniciar la encuesta por primera vez.
                    <br />

                    si usted ya cuenta con una clave y desea darle continuidad al proceso, de clic en el segundo botón
                </p>
                <asp:Label ID="lblNumEncuesta" Text="text" runat="server" Visible="false" />
            </div>
        </div>
        <br />
        <br id="menos1600" />
        <br id="menos1600" />
        <br id="menos1600" />

        <div class="row">
            <div class="col-lg-1 text-center"></div>
            <div class="col-lg-5 text-center">
                <a class="btn btn-primary" id="IniciarEncuesta" style="width: 100%; min-height: 300px; margin-bottom: 10px" runat="server" onserverclick="IniciarEncuesta_ServerClick">
                    <br />
                    <img src="../images/portada-modelos-de-encuestas.png" style="width: 250px" />
                    <br />
                    <br />
                    <h5>Iniciar encuesta por primera vez</h5>
                </a>
            </div>
            <div class="col-lg-5 text-center">
                <a class="btn btn-primary" id="Reingreso" style="width: 100%; min-height: 300px; margin-bottom: 10px" runat="server" onserverclick="Reingreso_ServerClick">
                    <br />
                    <img src="../images/portada-que-es-una-encuesta.png" style="width: 250px" />
                    <br />
                    <br />
                    <h5>Continuar con el proceso</h5>
                </a>
            </div>

            <div class="col-lg-1 text-center"></div>
        </div>


    </div>

    <dx:ASPxPopupControl ID="popupError" ClientInstanceName="popupError" runat="server" HeaderStyle-ForeColor="White" HeaderText="¡Algo salió mal!" Width="500px">
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" FixedFooter="False" />
        <HeaderImage IconID="status_warning_16x16">
        </HeaderImage>
        <HeaderStyle ForeColor="White" BackColor="#DC3545" Border-BorderColor="#DC3545" Border-BorderStyle="Solid" Border-BorderWidth="1px"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <p style="font-size: 18px">
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label></p>
                <br />
                <br />
                <div class="text-right">
                    <a class="btn btn-primary" style="padding: 8px 33px 8px; color: white; background-color: #DC3545; border-color: #DC3545" data-dismiss="modal">Aceptar</a>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <dx:ASPxPopupControl ID="popuoClave" ClientInstanceName="popuoClave" runat="server" HeaderStyle-ForeColor="White" HeaderText="Clave Única para Ingresar" MinWidth="750px" Width="100%" SettingsAdaptivity-Mode="Always">
        <SettingsAdaptivity MinHeight="30%" MinWidth="345px" MaxHeight="450px" MaxWidth="50%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderImage IconID="support_info_16x16">
        </HeaderImage>
        <HeaderStyle ForeColor="White"  Border-BorderStyle="None"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <p>Al darle clic al botón <span style="color: #045fac">"Iniciar Encuesta"</span> se genera un número de encuesta, el cual es muy importante, ya que, si usted desea, podrá darle continuidad a la encuesta en cualquier otro momento.</p>
                <p>Si por alguna razón el número de encuesta se pierde u olvida, deberá comunicarse con su asesor antes de comenzar una nueva, ya que cada número es único para cada usuario.</p>
                <br />
                
                <div class="text-right">
                    <asp:Button ID="btnIniciarEncuesta" runat="server" Text="Iniciar Encuesta" class="btn btn-primary" onmouseup="DistractorPrimeraVez()" Style="padding: 8px 33px 8px; color: white" OnClick="btnIniciarEncuesta_Click" />
                </div>
            </dx:PopupControlContentControl>

        </ContentCollection>


        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>

    <dx:ASPxPopupControl ID="popupReingreso" ClientInstanceName="popupReingreso" runat="server" HeaderStyle-ForeColor="White" HeaderText="Ingrese la clave" Width="500px">
        <SettingsAdaptivity MinHeight="30%" MinWidth="345px" MaxHeight="450px" MaxWidth="50%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderImage IconID="support_info_16x16">
        </HeaderImage>
        <HeaderStyle ForeColor="White"  Border-BorderStyle="None"></HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <p>Si usted ya cuenta con un número de encuesta y desea darle continuidad al cuestionario, ingrese el número en el siguiente recuadro:</p>
                <div class="row text-center">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4 text-center">
                        <dx:ASPxTextBox ID="txtNumEncuesta" runat="server" class="form-control" style="text-align: center; width: 100%;" maxlength="14" HorizontalAlign="Center">
                            <MaskSettings Mask="0000-0000-0000" ErrorText="Por favor, complete el número" />
                            <ValidationSettings Display="Dynamic" ErrorTextPosition="Bottom" />
                        </dx:ASPxTextBox>
                        <%--<asp:TextBox ID="txtNumEncuesta" runat="server"></asp:TextBox>--%>
                    </div>

                    <div class="col-lg-4"></div>

                </div>
                <br />
                <br />
                <div class="text-right">
                    <asp:Button ID="btnContinuarEncuesta" Text="Continuar el proceso" runat="server" onmouseup="DistractorSegundaVez()" class="btn btn-primary" Style="padding: 8px 33px 8px; color: white" OnClick="btnContinuarEncuesta_Click" />
                </div>
            </dx:PopupControlContentControl>

        </ContentCollection>


        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>
</asp:Content>
