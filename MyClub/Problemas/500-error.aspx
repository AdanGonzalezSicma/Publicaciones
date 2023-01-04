<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="500-error.aspx.cs" Inherits="Sistema_web.Problemas._500_error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Creando Productividad</title>
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="icon" href="/Content/images/icono3-t.png" type="image/x-icon"/>
    <!-- Stylesheets-->

    <link rel="stylesheet" href="/Content/css/bootstrap.css"/>
    <link rel="stylesheet" href="/Content/css/fonts.css"/>
    <link rel="stylesheet" href="/Content/css/style.css"/>
    <style>
        .ie-panel {
            display: none;
            background: #212121;
            padding: 10px 0;
            box-shadow: 3px 3px 5px 0 rgba(0, 0, 0, .3);
            clear: both;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        html.ie-10 .ie-panel,
        html.lt-ie-10 .ie-panel {
            display: block;
        }
    </style>
</head>
<body style=" background-position: 100%; background-repeat: no-repeat; background-size: cover">
    <form id="form1" runat="server">
      
     
        <div class="page">
            <div id="home">
                <!-- Top Banner-->
                <a class="section section-banner text-center d-none d-xl-block" href="#"
                    style="background: rgba(67,191,199,1);" target="_blank">
                    <img src="/Content/images/banner/banner-fg-02-1600x60.png"
                        srcset="/Content/images/banner/banner-fg-02-1600x60.png 1x, /Content/images/banner/banner-fg-02-3200x120.png 2x" alt=""
                        width="1600" height="310">
                </a>
                <!-- Page Header-->




            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card" style="margin-top: 10%; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.175) !important; border-top: 15px solid; border-image: linear-gradient(100deg, #f88017, #43bfc7) 3;">

                            <div class="card-body">
                                <br />

                                <div class="row">
                                    <div class="col-12 col-lg-5 col-md-5 col-sm-12">
                                        <br />
                                        <br />
                                        <img src="images/error.png" style="width: 100%" />
                                        <br />
                                        <br />
                                    </div>
                                    <div class="col-12 col-lg-7 col-md-7 col-sm-12">

                                        <div class="error-content">
                                            <h1 style="text-shadow: 3px 3px 2px black; color: rgba(67,191,199,1);">Ha ocurrido un problema</h1>

                                            <p style="font-size: 50px">
                                                Internal Server Error


                                            </p>
                                            <a class="button button-primary " href="index.aspx">Ir a la página de inicio</a>


                                        </div>
                                        <br />
                                        <br />
                                    </div>

                                </div>
                                <br />
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
</html>
