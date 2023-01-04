<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_web.Menu" %>

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
        
        .dropdown-menu.show {
            display:inline!important;
        }

        .dropdown-menu[x-placement^="top"], .dropdown-menu[x-placement^="right"], .dropdown-menu[x-placement^="bottom"], .dropdown-menu[x-placement^="left"] {
            right: auto;
            bottom: auto;
        }

        .dropdown-menu {
            position: absolute;
            top: -5px!important;
            left: 0;
            z-index: 1000;
            display: none;
            /* float: left; */
            min-width: 100%;
           padding: 0rem 0!important; 
            margin: 0rem 0 0!important; 
            font-size: 1rem;
            color: #888888;
            text-align: center;
            list-style: none;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid rgba(0, 0, 0, 0.15);
            border-radius: 0.25rem;
        }

         #ulmovil {
            list-style: none;
            padding: 0;
            /* margin: 0; */
        }
         #ulmovil li{
            display:inline-block!important
        }

        #ulmovil {
            /* margin-top: 0; */
            margin-bottom: 1rem;
        }
         .registrate{
font-size:30px;
color:white;
text-align:center
}
        .btn-registro{
            font-size:13px;
            text-align:center
        }
        .botonRegistrate{
            text-align:center
        }
        @media screen and (max-width: 800px) {
.registrate{
font-size:18px;
color:white;
text-align:Center
}
 .botonRegistrate{
            text-align:center
        }
  .btn-registro{
            font-size:13px;
            text-align:center
        }
}
         @media screen and (max-width: 1000px) and (min-width: 800px) {
.registrate{
font-size:25px;
color:white;
text-align:Center
}
 .botonRegistrate{
            text-align:center
        }
  .btn-registro{
            font-size:13px;
            text-align:center
        }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ie-panel">
            <a href="#">
                <img src="/Content/images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820"
                    alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a>
        </div>
        <div class="preloader">
            <div class="preloader-body">
                <div class="cssload-container">
                    <div class="cssload-speeding-wheel"></div>
                </div>
                <p>Cargando...</p>
            </div>
        </div>
          <div class="container-fluid section section-banner  d-xl-block" style="background-color:#0090bf">

            <div class="row" style="padding:0.5%; margin-top:0px!important">
                <div class="col-lg-1"></div>
                <div class="col-lg-6 col-md-12" ><h3 class="registrate" > ¿Administras un club y aún no eres miembro?</h3>

                </div>
                
                <div class="col-lg-4 col-md-12 botonRegistrate"><a href="Cuenta/Registro.aspx" class="button-width-190 button-primary button-circle button-lg button btn-registro" style=" background-color:red"> ¡Registrate ahora!</a></div>
             <div class="col-lg-1"></div>
            </div>
        </div>
        <div class="page">
        
                     <div class="menu2">
  <a class="nav-item" href="/index.aspx" >
    <i class="fa fa-home"></i><span>Inicio</span>
  </a>
  
  <a class="nav-item" href="/Contacto.aspx">
    <i class="fa fa-envelope"></i><span>Contacto</span>
  </a>
  
  <a class="nav-item" href="/Cuenta/Iniciar-Sesion.aspx">
    <i class="fa fa-user-circle"></i><span>Cuenta</span>
  </a>
  
  <a class="nav-item active" href="/Menu.aspx" id="home">
    <i class="fa fa-bars"></i>
  </a>

</div>
          <style>
              .btn-primary{
                  width:100%;
                  color:white!important;
                  margin-bottom:10px;
                  text-transform:none;
                  background-color:#ffac00!important;
                  border-color:#ffac00!important
              }
              .btn-primary i{
                  font-size:40px!important
              }
          </style>
            <!--Mailform-->
            <section class="section section-md">
                <div class="container">
           
                    <div class="row">
                        <div class="col-6">
                            <a class="btn btn-primary" href="/Inscripciones/Menu.aspx">
                                <i class="fa fa-user-plus"></i><br />
                                Registro
                            </a>
                        </div>
                         <div class="col-6">
                            <a class="btn btn-primary" href="aplicacion.aspx">
                                <i class="fa fa-mobile-phone"></i><br />
                                Aplicación
                            </a>
                        </div>
                           <div class="col-6">
                            <a class="btn btn-primary" href="blog.aspx">
                                <i class="fa fa-pencil-square-o"></i><br />
                                Blog
                            </a>
                        </div>
                      
                    </div>
                </div>
            </section>
          
           
        </div>
    </form>
    <script src="/Content/js/core.min.js"></script>
    <script src="/Content/js/script.js"></script>
</body>
</html>

