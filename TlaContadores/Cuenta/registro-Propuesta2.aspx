<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro-Propuesta2.aspx.cs" Inherits="CreandoProductividad.Cuenta.registro_Propuesta2" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link href="../css/pagina/bootstrap5/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <style>
          body {
           
            background-image: url(/images/fondo.png);
    background-attachment: fixed;
    background-size: 100%;
    background-position-y: bottom;
    background-repeat: no-repeat;
        }
        #login{
            margin-top:15%;
            margin-left:8%;
            margin-right:8%
        }
        #back{
            background-color:#045fac;
            min-height:100vh;
            background-image: linear-gradient(-45deg,#00357a  0%,#045fac 100%)
        }
        h2{
            color:white
        }
          .form-control {
            border-radius: 8px !important;
            line-height: 2.3rem !important;
            border-color: #e4e6ef !important;
            background-color: #f5f8fa !important;
            border-color: #ecf0f3 !important;
            background-color: #f5f8fa;
            border-color: #ecf0f3;
            color: #5e6278;
        }
           .contra {
            border-radius: 8px 0px 0px 8px!important;
            line-height: 2.3rem !important;
            border-color: #e4e6ef !important;
            background-color: #f5f8fa !important;
            border-color: #ecf0f3 !important;
            background-color: #f5f8fa;
            border-color: #ecf0f3;
            color: #5e6278;
        }
           .input-group-text {
    display: flex;
    align-items: center;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    text-align: center;
    white-space: nowrap;
    background-color: #05c3bf;
    border: 1px solid #05c3bf;
    border-radius: 8px;
}
          p, .form-check-label{
              color:white
          }
          a {
            text-decoration: none;
            color: #05c3bf
        }
           button {
            border-radius: 10px !important;
        }

               
 .btn-primary{
     background-color:#05c3bf;
     border-color:#05c3bf;
      line-height: 2 !important;
 }
  .btn-primary:hover{
     background-color:#000;
     border-color:#000
 }
  @media screen and (max-width: 768px) {
.movil{
display:none;
}
}
    </style>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 col-md-7 col-sm-0">
                    <br  class="movil"/>
                    <br />
                    <div class="text-center">
                         <img src="../images/demo/logo.png" style="width: 250px" />
                        <div style="margin-top:5%">
                            <img src="../images/login.png" style="width:50%" class="movil"/>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-5 col-sm-12" id="back">
                         <div id="login">
                            <br />
                            <div class="text-center">
                                <h2>Crear Cuenta</h2>
                            </div>

                                 <div class="text-center ">
                                   
                                    <p>¿Ya tienes una cuenta?<a id="lbtnLogin" href="#"> Inicia Sesión <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i></a></p>

                                   

                                </div>
                            <br />
                            <div id="formulario">
                                
                                <div class="mb-3 mt-3">

                                    <input type="text" class="form-control" id="nombre" placeholder="Nombre de la empresa" />
                                </div>
                                <div class="mb-3 mt-3">

                                    <input type="text" class="form-control" id="rfc" placeholder="RFC de la empresa" />
                                </div>
                                <div class="mb-3 mt-3">

                                    <input type="email" class="form-control" id="codigo" placeholder="Código postal" />
                                </div>
                                <div class="mb-3 mt-3">

                                    <input type="email" class="form-control" id="Correo" placeholder="Correo" />
                                </div>

                                <div class="mb-3 mt-3">
                                     <div class="input-group mb-3">
     
        <input id="txtPassword" runat="server" class="form-control contra" placeholder="Contraseña" autocomplete="off" name="txtPassword" type="password" />
       <span class="input-group-text"> <i class="fa fa-eye-slash fs-5 showpwd" onclick="showPwd('txtPassword', this)" style="color: #fff;"></i></span>
    </div>
                                    <div class="mb-3 mt-3">
                                     <div class="input-group mb-3">
     
        <input id="Password1" runat="server" class="form-control contra" placeholder="Contraseña" autocomplete="off" name="txtPassword" type="password" />
       <span class="input-group-text"> <i class="fa fa-eye-slash fs-5 showpwd" onclick="showPwd('Password1', this)" style="color: #fff;"></i></span>
    </div>
                                  

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
                            
                            </div>

                         </div>
                        </div>
            
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
