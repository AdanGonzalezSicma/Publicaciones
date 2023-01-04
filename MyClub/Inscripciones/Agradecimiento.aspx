<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agradecimiento.aspx.cs" Inherits="Sistema_web.Inscripciones.Agradecimiento" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="../Content/images/MasControlCLUB.png" type="image/x-icon" />
        <link rel="icon" href="/Content/images/MasControlCLUB.png" type="image/x-icon"/>
    <link rel="stylesheet" href="/Content/css/bootstrap.css" />
    <link rel="stylesheet" href="/Content/css/fonts.css" />
    <link rel="stylesheet" href="/Content/css/style.css" />
    <title>Más Control</title>
</head>
<body>
    <style>
        .nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link{
            background-color:#f7aa00!important
        }
        .nav-tabs .nav-link {
    border: 1px solid transparent;
    border-top-left-radius: 0.25rem;
    border-top-right-radius: 0.25rem;
    color:white;
    background-color:#0090bf
}
        h1{
            color:white
        }
        .pasos{
            background:#f7aa00;
             width: 50px;
     height: 50px;
     -moz-border-radius: 50%;
     -webkit-border-radius: 50%;
     border-radius: 50%;
    color:white;
    font-size:23px
        }
        .logo{
            width:30%
        }
        .pasosImg{
            width:80%
        }
        @media screen and (max-width: 600px) {
.logo{
width:80%
}
.pasosImg{
    width:100%
}
h4{
    font-size:20px
}
}
    </style>
    <form id="form1" runat="server">
               
         <div class="container-fluid" style="background-color: #f7aa00; border-bottom:3px solid #0090bf ">
             <div class="rd-navbar-aside">
                                <br />
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
                                     <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-facebook" href="https://www.facebook.com/MasControlClub/"></a></li>
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-instagram" href="https://www.instagram.com/mascontrolclub/"></a></li>
                                    <li><a class="icon icon-sm icon-circle icon-circle-md icon-bg-white fa-youtube-play" href="https://www.youtube.com/channel/UCJSckwQpNeNq9z4CZJ4niCw"></a></li>
                                </ul>
                              
                                <br />
                            </div>
        </div>
       

        <section class="section section-md">
            <div class="container">
                <div class="row text-center">
                    <div class="col-lg-12 col-sm-12 col-md-12">


                        <img class="logo" src="../Content/images/logo-mascontrol.png"/>
                        <h2><b>¡Gracias por registrarte!</b></h2>
                        <p>
                            Por favor, sigue los pasos para iniciar sesión.
                        </p>

                        <%--<a class="button-width-190 button-primary button-circle button-lg button offset-top-30" href="iniciar-sesion.aspx">Ingresar</a>--%>

                        <br />
                        <div class="card shadow-sm">
                            <div class="card-body text-center">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs justify-content-center">
                                    <li class="nav-item" >
                                        <a class="nav-link active" data-toggle="tab" href="#home">¿Cómo iniciar sesión?</a>
                                    </li>
                                    <li class="nav-item"  style="background-color:#0090bf">
                                        <a class="nav-link" data-toggle="tab" href="#menu1">¿Cómo cambio o actualizo mi información?</a>
                                    </li>
                                  
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane container active" id="home">
                                        <br />
                                        <div class="row">
                                           
                                          <div class="col-lg-1 col-md-1 col-sm-1 text-center">
                                              <div class="pasos" style="clip-path: circle(50% at 50% 50%);">1</div> 
                                              </div> 
                                            <div class="col-lg-10 col-md-10 col-sm-10 text-left">
                                                <h4>Ingresar a la página principal y dar click en la opción de iniciar sesion del menú</h4>
                                                <br />
                                                <img class="pasosImg" src="../Content/images/paso1.jpg" />
                                            </div>
                                        </div>
                                          <div class="row">
                                           
                                          <div class="col-lg-1 col-md-1 col-sm-1 text-center">
                                              <div class="pasos" style="clip-path: circle(50% at 50% 50%);">2</div> 
                                              </div> 
                                            <div class="col-lg-10 col-md-10 col-sm-10 text-left">
                                                <h4>Ingresamos nuestro nombre de usuario y/o correo y contraseña para iniciar y listo, ya podemos ingresar a la plataforma.</h4><br />
                                                <img class="pasosImg" src="../Content/images/paso2.jpg"/>
                                            </div>
                                        </div>
                                        
                                        </div>
                                    <div class="tab-pane container fade" id="menu1">
                                    
                                        <div class="row">
                                           
                                          <div class="col-lg-1 col-md-1 col-sm-1 text-center">
                                              <div class="pasos" style="clip-path: circle(50% at 50% 50%);">1</div> 
                                              </div> 
                                            <div class="col-lg-10 col-md-10 col-sm-10 text-left">
                                                <h4>Ingresar a la opcion de perfil en el menu superior de la plataforma y dar clic en perfil</h4>
                                                <br />
                                                <img class="pasosImg" src="../Content/images/paso1-inf.jpg" />
                                            </div>
                                        </div>
                                          <div class="row">
                                           
                                          <div class="col-lg-1 col-md-1 col-sm-1 text-center">
                                              <div class="pasos" style="clip-path: circle(50% at 50% 50%);">1</div> 
                                              </div> 
                                            <div class="col-lg-10 col-md-10 col-sm-10 text-left">
                                                <h4>Una vez en la pagina de mi perfil, nos mostrarán los datos que hemos ingresado, tambien solicitará nuevos. Ahí podemos modificarlos o eliminarlos, segun la necesidad</h4>
                                                <br />
                                                <img class="pasosImg" src="../Content/images/paso2-inf.jpg" />
                                            </div>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                        <span class="txt1">ir a 
                        </span>
                        <a class="txt2" href="/index.aspx" style="color: #f7aa00">Página Principal <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                        <br />
                       <%-- <img src="../Content/images/2541493.png" style="width: 80%" />--%>



                    </div>
                </div>
            </div>
        </section>
    </form>
    <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
</html>
