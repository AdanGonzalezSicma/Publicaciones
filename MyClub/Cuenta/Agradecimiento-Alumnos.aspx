<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agradecimiento-Alumnos.aspx.cs" Inherits="Sistema_web.Cuenta.Agradecimiento_Alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="../Content/images/MasControlCLUB.png" type="image/x-icon" />
    <link rel="stylesheet" href="../Content/css/bootstrap.css" />
    <link rel="stylesheet" href="../Content/css/fonts.css" />
    <link rel="stylesheet" href="../Content/css/style.css" />
    <title>Más Control</title>
</head>
 
<body style="background-color:#e3e3e3"> 
    <style>
        @media screen and (max-width: 600px) {
.redes{
display:none;
}
}
    </style>
    <form id="form1" runat="server">

       
        <section  class="section section-md">
            <div class="container">
                <div class="row text-center">
                    <div class="col-lg-12 col-sm-12 col-md-12">
                        <div class="card shadow-sm">
                             <div class="card-header" style="background-color:#f7aa00; border-top:5px solid #0090bf  "> <img src="../Content/images/MasControlCLUB-v1B.png" /></div>
                            <div class="card-body">
   <img src="../Content/images/agradecimiento.jpg" style="width:50%" />
                        <h2><b>¡Gracias por registrarte!</b></h2>
                        <p>
                            Por favor, inicia sesión para continuar o dirígete a la página de inicio.
                        </p>
                        <br />
                         <a class="button-width-190 button-primary button-circle button-lg button offset-top-30" href="Iniciar-Sesion-Alumnos.aspx">Ingresar</a>
                           <br />
                        <br />
                        <span class="txt1">ir a 
                        </span>
                        <a class="txt2" href="../index.html" style="color:#f7aa00">Página Principal <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                              
                    <br/>
                            </div>
                        </div>
                     
                    </div>
                </div>
            </div>
        </section>
    </form>
     <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
</html>
