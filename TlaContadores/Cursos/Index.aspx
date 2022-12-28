<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CreandoProductividad.Cursos.Index" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>NOM-035</title>
    <meta name="viewport"
        content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="icon" href="../images/nom.png" type="image/x-icon">
    <script type='text/javascript'>
        document.oncontextmenu = function () { return false }
    </script>
</head>

<body>
    <style>
        @media screen and (max-width: 999px) {
            #video {
                width: 100%;
                height: 364px
            }
        }

        @media screen and (max-width: 1600px) and (min-width: 1000px) {
            #video {
                width: 80%;
                height: 464px
            }
        }

        @media screen and (min-width: 1601px) {
            #video {
                width: 100%;
                height: 564px
            }
        }

        .dxbButton_Material div.dxb {
            padding: unset;
            box-shadow: none
        }

        .button {
            margin-top: 0px !important
        }
        /*Clase para manipular el color de la barra superior*/
        /*.section-banner { background: rgba(67,191,199,1); }*/
        /* clase para cambiar el color de letra del banner superior*/
        /*.section-banner h5, h3 { color: white }*/
        /* clase para cambiar el color del borde del banner superior*/
        /*.borde { border-right: 3px solid #f88017; }*/
        /* clase para cambiar el color del borde que se muestra debajo del banner superior*/
        /*.page-header { border-bottom: 5px solid; border-image: linear-gradient(100deg, #f88017, #43bfc7) 1; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important; }*/
        /*.content-header{ background-color: #f88017; }*/
        /*.content-header h3{ color: #ffffff; }*/
        /*.captcha input { border: 1px solid navy; color: #f88017; }*/
        /*.captcha p{ color:navy }*/
        /*#Sumando{ color: navy; background-color: lightblue; }*/
    </style>
    <%=CargarTema() %>
    <form id="form1" runat="server">
        <div id="home">
            <!-- Top Banner-->
            <div class="container-fluid section section-banner text-center d-none d-xl-block">

                <div class="row text-center" style="padding: 0.5%; margin-top: 0px!important">
                    <div class="col-lg-4 col-md-5 borde">
                        <h3 style="font-size: 25px;">¡Plataforma NOM-035!</h3>
                    </div>
                    <div class="col-lg-5 col-md-5  borde">
                        <h5 style="text-transform: none;">Para cumplir paso a paso con la implementación de la NOM-035</h5>
                    </div>
                    <div class="col-lg-3 col-md-2">
                        <button class="button button-primary button-ujarak" style="padding: 10px 23px 10px!important; min-width: 100px" runat="server">Salir</button></div>
                </div>
            </div>
            <!-- Page Header-->
            <header id="head" class="section page-header">
                <!-- RD Navbar-->
                <div class="rd-navbar-wrap">
                    <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
                        data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static"
                        data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static"
                        data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static"
                        data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px"
                        data-xxl-stick-up-offset="46px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
                        <div class="rd-navbar-main-outer">
                            <div class="rd-navbar-main">
                                <!-- RD Navbar Panel-->
                                <div class="rd-navbar-panel">
                                    <!-- RD Navbar Toggle-->
                                    <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                                    <!-- RD Navbar Brand-->
                                    <div class="rd-navbar-brand">
                                        <a class="brand" href="index.html">
                                            <img src="../images/Creando-logo.png"
                                                alt="" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </header>
            <section>
                <div class="container">

                    <div class="row">
                        <div class="col-md-0 col-lg-1 col-sm-0 text-center"></div>
                        <div class="col-md-12 col-lg-10 col-sm-12 text-center" style="padding-top: 1%">
                            <div>
                                <input id="obtenerTiempo" type="hidden" name="name" value="<%: Session["DuracionVideo"] %>" />
                            </div>

                            <div class="content-header" style="border-radius: 5px">
                                <h3 style="padding-top: 3px; padding-bottom: 3px"><%: Session["NombreVideo"] %></h3>
                            </div>
                            <%
                                if (Convert.ToBoolean(Context.Session["Activo"]) == true)
                                {%>

                            <div id="contenedorVideo">
                                <video id="video" width="100%" height="564" frameborder="0">
                                    <source src="<%: Session["UrlVideo"] %>" type="video/mp4" />
                                </video>
                            </div>
                            <%}
                                else
                                {
                            %>

                            <div id="contenedorVideoVimeo">
                                <iframe src="<%: Session["UrlVideo"] %>" style="width: 100%; height: 564px; border: none"></iframe>
                            </div>
                            <%} %>
                            <!-- PLAY -->
                            <%--    <a class="button button-primary button-ujarak" onmouseup="fncPlay();" href="#" data-caption-animate="fadeInUp" data-caption-delay="200" style="margin:5px">
                        <span id="btnReproducir">Reproducir</span>
                    </a>--%>
                        </div>
                        <div class="col-md-0 col-lg-1 col-sm-0 text-center"></div>
                    </div>
                </div>
            </section>


            <input id="ActivarCaptcha" type="hidden" name="name" value="<%: Session["Activo"] %>" class="button button-primary button-ujarak" />
            <input id="CantidadDeCaptchas" type="hidden" name="name" value="<%: Session["CantidadDeCaptchas"] %>" class="button button-primary button-ujarak" />

            <!-- PLAY -->
            <div class="container-fluid">
                <div class="row text-center">
                    <div class="col-lg-2 col-md-2 col-sm-0"></div>
                    <div id="btnRe" class="col-md-4  col-sm-12 col-lg-4 text-center">
                        <a class="button button-primary" onmouseup="fncPlay();" href="#" data-caption-animate="fadeInUp" data-caption-delay="200" style="margin: 5px">
                            <span id="btnReproducir">Reproducir</span>
                        </a>
                    </div>
                    <div id="contenidoTerminar" class="col-md-4  col-sm-12 col-lg-4 text-center" style="visibility: hidden">
                        <dx:ASPxButton ID="btnTerminar" ClientInstanceName="btnTerminar" OnClick="btnTerminar_Click" runat="server" Text="Terminar" CssClass="button button-primary button-ujarak"></dx:ASPxButton>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-0"></div>
                </div>
            </div>


        </div>


        <dx:ASPxPopupControl
            ID="popupCaptcha"
            ClientInstanceName="popupCaptcha"
            runat="server" Modal="true" CloseAction="None"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="WindowCenter"
            Width="400px"
            HeaderText="Captcha" SettingsAdaptivity-Mode="OnWindowInnerWidth" Height="216px">
            <SettingsAdaptivity Mode="OnWindowInnerWidth"></SettingsAdaptivity>

            <HeaderStyle BackColor="Navy" ForeColor="White" />
            <ContentCollection>
                <dx:PopupControlContentControl>


                    <div class="row captcha">
                        <input hidden="hidden" id="num1" type="text" name="name" value="" readonly="true" style="border-radius: 5px; font-size: 18px; margin: 2px; height: 29px; width: 104px; font-weight: 900" />
                        <input hidden="hidden" id="num2" type="text" name="name" value="" readonly="true" style="border-radius: 5px; font-size: 18px; margin: 2px; height: 29px; width: 104px; font-weight: 900" />


                        <div class="col-lg-12">

                            <p style="font-size: 16px;">
                                Escribe el resultado de la suma para continuar
                            </p>
                            <div class="text-center">
                                <label id="Sumando" style="font-size: 30px; font-weight: 900; padding: 12px"></label>
                                <br />
                                 <p><b>Tiempo restante: </b></p>
                                    
                                    <label id="lblContadorTiempoCaptcha" style="font-size: 18px;"></label>
                            </div>

                          
                                <div>
                                    <p style="font-size: 15px;"><b>Respuesta:</b></p>
                                    <input id="Resultado" type="text" name="name" value="" style="border-radius: 5px; font-size: 15px; margin: 2px; height: 29px; font-weight: 900; width: 100%" />
                                </div>
                               
                         
                         
                          

                         
                            <div class="text-center">

                                <button type="button" class="button button-primary" onclick="fcnAceptar()" style="padding: 5px 5px 5px; width: 100px; margin-top: 2px!important;">Aceptar </button>
                            </div>

                        </div>






                    </div>



                </dx:PopupControlContentControl>
            </ContentCollection>
            <Border BorderStyle="NotSet" />
        </dx:ASPxPopupControl>


        <input type="hidden" id="ocultoUrl" runat="server" name="name" value="" />


        <dx:ASPxPopupControl
            ID="popUpTerminarCurso"
            ClientInstanceName="popUpTerminarCurso"
            runat="server"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="WindowCenter"
            Width="651px"
            HeaderText="Captcha" ShowHeader="False" SettingsAdaptivity-Mode="OnWindowInnerWidth" Height="216px">
            <SettingsAdaptivity Mode="OnWindowInnerWidth"></SettingsAdaptivity>

            <HeaderStyle BackColor="Navy" ForeColor="White" />
            <ContentCollection>
                <dx:PopupControlContentControl>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Correo Electronico"></asp:Label>
                        <dx:ASPxTextBox ID="txtCorreo" ClientInstanceName="txtCorreo" runat="server" Width="170px"></dx:ASPxTextBox>
                    </div>
                    <br />
                    <br />
                    <dx:ASPxButton ID="btnTerminarCurso" OnClick="btnTerminarCurso_Click" runat="server" Text="Terminar"></dx:ASPxButton>

                </dx:PopupControlContentControl>
            </ContentCollection>
            <Border BorderColor="#43BFC7" BorderStyle="Solid" BorderWidth="4px" />
        </dx:ASPxPopupControl>

    </form>
    <!-- JavaScript Bundle with Popper -->
    <script src="../Content/js/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>


    <script type="text/javascript">
           var Imprimir = function(numero){
        	var str='';
        	if (numero < 10) {
        		str='00:0'+numero;
        	}else{
        		str='00:'+numero;
        	}
        	return str;
        }
        		var totalTiempo=0;



        var Activar = document.getElementById('ActivarCaptcha').value;
        var CanCaptchas = document.getElementById('CantidadDeCaptchas').value;
        console.log(Activar);
        if (Activar == 'True') {
            console.log('entre el if');



            var a = document.getElementById('obtenerTiempo').value;
            var lst = a.split(':');
            var min = lst[0];
            var seg = lst[1];
            var conseg = min * 60;
            var Total = 0;
            var divici = 0;
            var valor = 1;
            var totalCanCapchas = 0;
            Total = Math.floor(conseg) + Math.floor(seg);
            totalCanCapchas = Math.floor(valor) + Math.floor(CanCaptchas);
            console.log(CanCaptchas)
            divici = (Total / totalCanCapchas);

            console.log(Math.floor(divici));
            var myVideo = document.getElementById("video");
            var numeroRe = 30;
		document.getElementById('lblContadorTiempoCaptcha').innerText=Imprimir(numeroRe);
        var ConTiempoCaptcha = document.getElementById('lblContadorTiempoCaptcha').innerText;
        console.log(ConTiempoCaptcha);


            function fncPlay() {
                if (myVideo.paused) {
                    myVideo.play();
                    Clock.resume();
                    $("#btnReproducir").text("Pausa");
                }
                else {
                    myVideo.pause();
                    Clock.pause();
                    $("#btnReproducir").text("Reproducir");
                }
            }

            var Clock = {
                totalSeconds: 0,
                Duracion: 0,

                start: function () {
                    var self = this;

                    this.interval = setInterval(function () {
                        self.totalSeconds += 1;
                        self.Duracion += 1;
                        console.log(self);
                        console.log(self.Duracion);
                        if (self.Duracion == Total) {
                            console.log('hola guapo');
                            $('#contenidoTerminar').css('visibility', 'visible');
                            Clock.pause();
                            Captcha.pause();
                            myVideo.pause();
                            return;
                        }
                        if (self.totalSeconds == Math.floor(divici)) {
                            self.totalSeconds = 0;
                            myVideo.pause();
                            Clock.pause();
                            Captcha.resume();
                            popupCaptcha.Show();
                            $("#btnReproducir").text("Reproducir");
                        }

                    }, 1000);
                },

                pause: function () {
                    clearInterval(this.interval);
                    delete this.interval;
                },

                resume: function () {
                    if (!this.interval) this.start();
                }
            };

            var num1 = Math.random() * 10;
            var num2 = Math.random() * 10;
            var r = 0;
            document.getElementById('num1').value = Math.floor(num1);
            document.getElementById('num2').value = Math.floor(num2);

            r = Math.floor(num1) + Math.floor(num2);
            document.getElementById('Sumando').innerText = Math.floor(num1) + " + " + Math.floor(num2) + " : ";

            function fcnAceptar() {
                var resultado = document.getElementById('Resultado').value;
                console.log(resultado);
                console.log(r);

                if (r == resultado) {
                    fncPlay();
                    ActualizarValores();
                    Captcha.Duracion = 0;
                    Captcha.pause();
                    popupCaptcha.Hide();
                } else {
                    console.log('si entre al else debi resumir todo');
                    ActualizarValores();
                    Captcha.Duracion = 0;
                    Captcha.resume();
                }
            }

            function ActualizarValores() {
                num1 = Math.random() * 10;
                num2 = Math.random() * 10;
                document.getElementById('num1').value = Math.floor(num1);
                document.getElementById('num2').value = Math.floor(num2);
                document.getElementById('Resultado').value = '';
                document.getElementById('Sumando').innerText = Math.floor(num1) + " + " + Math.floor(num2) + " : ";
                r = Math.floor(num1) + Math.floor(num2);
            }
            //FUNCION PARA DESHABILITAR CLIC DERECHO
            $(function () {
                $(document).bind("contextmenu", function (e) {
                    return false;
                });
            });
            var Captcha = {
                Duracion: 0,

                start: function () {
                    var self = this;

                    this.interval = setInterval(function () {
                        self.Duracion += 1;

                        totalTiempo = numeroRe-self.Duracion;
						document.getElementById('lblContadorTiempoCaptcha').innerText=Imprimir(totalTiempo);


                        console.log(self);
                        if (self.Duracion == 30) {
                            self.Duracion = 0;
                            Captcha.pause();
                            alert('No se dio por finalizado el video debido a su ausencia, será redireccionado al acceso');
                            location.href = document.getElementById('ocultoUrl').value;
                        }
                    }, 1000);
                },

                pause: function () {
                    clearInterval(this.interval);
                    delete this.interval;
                },

                resume: function () {
                    if (!this.interval) this.start();
                }
            }
        }



    </script>
</body>
</html>
