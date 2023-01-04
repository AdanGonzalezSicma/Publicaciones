<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago-Club.aspx.cs" Inherits="Sistema_web.Club.Pago_Club" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Más Control</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon" />
    <link rel="stylesheet" href="/Content/css/bootstrap.css" />
    <link rel="stylesheet" href="/Content/css/fonts.css" />
    <link rel="stylesheet" href="/Content/css/style.css" />
    <style>
        .section-intro {
    padding: 90px 0!important;
    position: relative;
}
         .section-intro .intro-bg{
     height:200px
 }
        .card-header{
            background-color:#0090bf;
            color:white
        }
         .card-header h4{
           
            color:white
        }
         @media screen and (max-width: 600px) {
 .section-intro {
    padding: 60px 0!important;
    position: relative;
}
.section-intro .intro-bg{
     height:150px
 }
}
    </style>
</head>
<body>
    <div id="form1" runat="server">
        <div class="preloader">
            <div class="preloader-body">
                <div class="cssload-container">
                    <div class="cssload-speeding-wheel"></div>
                </div>
                <p>Cargando...</p>
            </div>
        </div>
        <div class="container-fluid section section-banner  d-xl-block" style="background-color: #0090bf">

            <br />

        </div>

        <div class="page">
            <header class="section page-header">
                <!--RD Navbar-->
                <div class="rd-navbar-wrap">
                    <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
                        data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static"
                        data-lg-device-layout="rd-navbar-static" data-xl-layout="rd-navbar-static"
                        data-xl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px"
                        data-xxl-stick-up-offset="46px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
                        <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse">
                            <span></span>
                        </div>
                        <div class="rd-navbar-aside-outer rd-navbar-collapse bg-gray-dark">
                            <div class="rd-navbar-aside">
                                <ul class="list-inline navbar-contact-list text-center">

                                    <li>
                                        <p style="color: white; font-size: 18px">¡Síguenos en nuestras redes sociales! o escríbenos al correo</p>
                                    </li>
                                    <li>
                                        <div class="unit unit-spacing-xs align-items-center">
                                            <div class="unit-left">
                                                <span class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-envelope" style="color: #0090bf;"></span>
                                            </div>
                                            <div class="unit-body">
                                                <a href="mailto:contacto@mascontrol.club">contacto@mascontrol.club</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="unit unit-spacing-xs align-items-center">
                                            <div class="unit-left">
                                                <span class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-phone" style="color: #0090bf;"></span>
                                            </div>
                                            <div class="unit-body">
                                                <a href="tel:+526623242038">(662) 324 2038</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="social-links">

                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-facebook" href="https://www.facebook.com/MasControlClub/"></a></li>
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-instagram" href="https://www.instagram.com/mascontrolclub/"></a></li>
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-youtube-play" href="https://www.youtube.com/channel/UCJSckwQpNeNq9z4CZJ4niCw"></a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                </div>
            </header>
            <section class="section section-intro context-dark">
                <div class="intro-bg" style="background: url(/Content/images/pagosIMG.png) no-repeat; background-size: 100%; background-position: top center;"></div>
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 text-center">
                            <h1 class="font-weight-bold wow fadeInLeft">Realiza tu pago</h1>

                        </div>
                    </div>
                </div>
            </section>
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                       
                        <div class="card" style="border: none;">
                            <div class="card-header">
                                <h4>Escoge un método de pago</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-8 col-sm-8">
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" /><b>Tarjeta de Crédito/Débito</b>
                                            <label class="form-check-label" for="radio1"></label>
                                        </div>

                                    </div>
                                    <div class="col-lg-2 col-sm-2">
                                        <img src="../Content/images/visa.png" style="width: 100px" />

                                    </div>
                                    <div class="col-lg-2 col-sm-2">

                                        <img src="../Content/images/mastercard.png" style="width: 100px" />
                                    </div>
                                </div>
                                <div class="row" aria-disabled>
                                    <div class="col-lg-8">
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="radio2" disabled name="optradio" value="option1" /><b>Mercado Pago</b>
                                            <label class="form-check-label" for="radio1"></label>
                                        </div>

                                    </div>
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-2">

                                        <img src="../Content/images/mercadopago.jpg" style="width: 100px" />
                                    </div>
                                </div>
                                <div class="row" aria-disabled>
                                    <div class="col-lg-8">
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="radio2" disabled name="optradio" value="option1" /><b>PayPal</b>
                                            <label class="form-check-label" for="radio1"></label>
                                        </div>

                                    </div>
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-2">

                                        <img src="../Content/images/paypal.png" style="width: 100px" />
                                    </div>
                                </div>
                                <br />
                                <br />
                            </div>
                            <div class="card-footer" style="border: none; background-color: transparent"><a class="btn btn-primary" style="width: 100%; background-color: #f7aa00; color: white; border-color: #f7aa00">Siguiente</a></div>
                        </div>
                    </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-4">
                     
                        <div class="card" style="width: 100%">

                            <div class="card-body">
                                <div class="text-center">
                                    <img src="../Content/images/MasControlCLUB.png " style="width: 50%" />
                                </div>

                                <h4 class="card-title">Club: <b>
                                    <asp:Label ID="lblNombreClubDeportivo" runat="server" Text="Label"></asp:Label></b></h4>
                                <p class="card-text">
                                    <asp:Label ID="lblDescripcion" runat="server" Text="Label"></asp:Label>.
                                </p>
                                <br />
                                <hr />
                                <br />
                                <h4><b>Total:<asp:Label ID="lblimp" runat="server" Text="Label"></asp:Label>MXN</b></h4>
                                <br />

                            </div>
                            <div>
                                <form action="https://www.prosepago.com/tvirtual/tvsv.aspx?t=78&amp;ppost=1" method="post" target="_blank">
                                    <input runat="server" name="nom" id="nom" type="text" value="Juan Perez" hidden="hidden" />
                                    <input runat="server" name="con" id="con" type="text" value="Primer cobro desde terminal precargada" hidden="hidden" />
                                    <input runat="server" name="ref" id="ref" type="text" value="0000001" hidden="hidden" />

                                    <input runat="server" name="imp" id="imp" type="text" value="0.10" hidden="hidden" />
                                    <input runat="server" name="ema" id="ema" type="text" value="juanperez@prosepago.com" hidden="hidden" />
                                    <input runat="server" name="urlOk" id="urlOk" type="text" value="https://www.google.com.mx/#hl=es-419&amp;safe=off&amp;tbo=d&amp;output=search&amp;sclient=psy-ab&amp;q=ok&amp;oq=ok&amp;fp=1ab6da987cff1d6a" hidden="hidden" />
                                    <input runat="server" name="urlKo" id="urlKo" type="text" value="https://www.google.com.mx/#hl=es-419&amp;safe=off&amp;tbo=d&amp;output=search&amp;sclient=psy-ab&amp;q=ko&amp;oq=ok&amp;fp=1ab6da987cff1d6a" hidden="hidden" />
                                    <input runat="server" name="autoBack" id="autoBack" type="text" value="1" hidden="hidden" />
                                    <br />

                                    <div class="card-footer" style="border: none; background-color: transparent">
                                        <input class="btn btn-primary" style="width: 100%" type="submit" value="Pagar" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <br />
            <br />
        </div>
    </div>
    <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
</html>
