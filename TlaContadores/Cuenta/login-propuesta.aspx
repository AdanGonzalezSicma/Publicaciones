<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login-propuesta.aspx.cs" Inherits="CreandoProductividad.Cuenta.login_propuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link href="../css/pagina/bootstrap5/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <style>
        body {
            background-color: #f3f6f9;
            background-image: url(/images/fondo.png);
    background-attachment: fixed;
    background-size: 100%;
    background-position-y: bottom;
    background-repeat: no-repeat;
        }
        
        .card {
            margin-top: 5%;
            border-radius: 10px;
            background-color: white;
            border-left:none;
            border-right:none;
            border-bottom:none;
            box-shadow: 0 0.1rem 1rem 0.25rem rgb(0 0 0 / 5%) !important;
             border-top: double 3px transparent;background-image: linear-gradient(white, white), radial-gradient(circle at left top, rgb(4 95 172 / 50%), rgb(38 203 199 / 50%));background-origin: border-box;background-clip: content-box, border-box;
        }

        .form-control {
            border-radius: 8px !important;
            line-height: 2rem !important;
            border-color: #e4e6ef !important;
            background-color: #f5f8fa !important;
            border-color: #ecf0f3 !important;
            background-color: #f5f8fa;
            border-color: #ecf0f3;
            color: #5e6278;
        }

        button {
            border-radius: 10px !important;
        }

        h2 {
            color: #045fac
        }

        .btn-primary {
            /*background-color:#05c3bf*/
            background-color: #045fac;
            border-color: #045fac;
            line-height: 2 !important;
        }

        a {
            text-decoration: none;
            color: #05c3bf
        }

        .relative {
            position: relative;
            width: 100%;
        }

            .relative i {
                position: absolute;
                top: 3px;
                right: 5px;
                color: #a1a1a1 !important
            }

        í {
            color: #a1a5b7 !important;
        }

        .showpwd {
            position: absolute;
            right: 83px;
            top: 200px;
            cursor: pointer;
        }
        

        #formulario {
            margin-left: 40px;
            margin-right: 40px
        }

        @media screen and (max-width: 600px) {
            #formulario {
                margin-left: 0px;
                margin-right: 0px
            }

            .showpwd {
                position: absolute;
                right: 37px;
                top: 195px;
                cursor: pointer;
            }
             #showpwd2 {
                position: absolute;
                right: 37px;
                top: 439px;
                cursor: pointer;
            }
        }
    </style>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 text-center" style="align-items: center"></div>
                <div class="col-lg-6">
                    <br /><br />
                    <div class="text-center">
                        <img src="../images/demo/logo.png" style="width: 60%" />
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <br />
                            <div class="text-center">
                                <h2>Iniciar Sesión</h2>
                            </div>


                            <br />
                            <div id="formulario">
                                
                                <div class="mb-3 mt-3">

                                    <input type="email" class="form-control" id="Correo" placeholder="Correo" />
                                </div>

                                <div class="mb-3 mt-3">
                                    <div class="form-group element">
                                        <input id="txtPassword" runat="server" class="form-control" placeholder="Contraseña" autocomplete="off" name="txtPassword" type="password" />
                                        <i class="fa fa-eye-slash fs-5 showpwd" onclick="showPwd('txtPassword', this)" style="color: #a1a5b7;"></i>
                                    </div>

                                </div>
                              
                                <div class="form-check mb-3">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="remember" />
                                        Recordarme
                                    </label>
                                </div>
                              
                                <button type="submit" class="btn btn-primary" style="width: 100%">Ingresar</button>
                                <br />
                                <br />
                                <div class="text-center ">
                                    <a></a>
                                    <p>¿Aún no tienes una cuenta?<a id="lbtnLogin" href="#"> Registrate <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i></a></p>

                                   

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 text-center" style="align-items: center"></div>
            </div>
        </div>
    </form>
    <script>
        function showPwd(id, el) {
            let x = document.getElementById(id);
            if (x.type === "password") {
                x.type = "text";
                el.className = 'fa fa-eye fs-5 showpwd';
            } else {
                x.type = "password";
                el.className = 'fa fa-eye-slash fs-5 showpwd';
            }
        }

    </script>
    <script src="../Content/js/jquery.min.js"></script>
    <script src="../Content/js/main.min.js"></script>
</body>

</html>
