<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClaveCuestionarioPropuesta2.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.ClaveCuestionarioPropuesta2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Minom035</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../Content/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="../Content/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../Content/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
   <link rel="stylesheet" href="../css/bootstrap.css">
  <link rel="stylesheet" href="../css/fonts.css">
  <link rel="stylesheet" href="../css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <style>
        .card-header{
            color: white;
            background-color:navy;
            font-size:20px;
            text-align:center
        }
        #dempresa{
            font-size:18px;
            color:navy

        }
         #clave{
            font-size:30px;
            color:navy

        }
        .inputClave{
            font-size:1.5rem; 
            font-weight:bolder; 
            color:#000080; 
            text-align:center;
          
            Width:70%
        }
        p{
            font-size:18px
        }
        h4{
            text-transform:none;
            color:#f88017
        }
      .nota{
          color:red;
          font-size:18px
      }
        #btnComenzar{
            background-color: #43bfc7; 
            color: white;
            border-radius:5px
        }
        #btnSalir{
            background-color: #43bfc7; 
            color: white;
             border-radius:5px
        }
        
    </style>
    <form id="form1" runat="server">
         <div class="wrapper">
             <div class="content">
                  <!-- Top Banner-->
                 <a class="section section-banner text-center d-none d-xl-block" href="../index.html"
                     style="background: rgba(67,191,199,1);">
                     <img src="../images/banner/banner-fg-02-1600x60-2.png"
                         srcset="../images/banner/banner-fg-02-1600x60-2.png 1x, ../images/banner/banner-fg-02-3200x120-2.png 2x" alt=""
                         width="1600" height="310"></a>
                 </div>
             <div class="container-fluid" >
                 
                 <div class="row" style="padding-top:1%">
                     <div class="col-lg-8 col-md-6 col-sm-12">
                         <div class="card" style="height: 100%; box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.1) !important">
                             <div class="card-header">Instrucciones</div>
                             <div class="card-body text-center">
                                 <div id="demo" class="carousel slide" data-ride="carousel">
                                     <ul class="carousel-indicators">
                                         <li data-target="#demo" data-slide-to="0" class="active"></li>
                                         <li data-target="#demo" data-slide-to="1"></li>
                                         <li data-target="#demo" data-slide-to="2"></li>
                                     </ul>
                                     <div class="carousel-inner">
                                         <div class="carousel-item active">
                                             <h4>1.- La clave para ingresar solo será valida una vez iniciado el cuestionario
                                               
                                             </h4>
                                        
                                             <img src="../Content/img/Nota1.png" style="width:100%" />
                                            
                                         </div>
                                         <div class="carousel-item">
                                               <h4>2.- Es importante que guarde la clave, ya que No se le proporcionará otra
                                                  
                                               </h4>
                                          
                                             <img src="../Content/img/Claveunica.png" style="width:100%" />
                                         </div>
                                         <div class="carousel-item">
                                                 <h4>3.- En dado caso que abandone la página, necesitará otra clave para ingresar
                                                    
                                                 </h4>
                                     
                                             <img src="../Content/img/inicioCuestionario.png" style="width:100%" />
                                         </div>
                                         <div class="carousel-item">
                                                 <h4>4.- Si usted ya cuenta con una clave con la cual ya inició la evaluación, solo necesita agregarla al recuadro y darle continuidad.</h4>
                                          
                                             <img src="../Content/img/claveCuestionario.png" style="width:100%" />
                                         </div>
                                     </div>
                                     <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                         <span class="carousel-control-prev-icon"></span>
                                     </a>
                                     <a class="carousel-control-next" href="#demo" data-slide="next">
                                         <span class="carousel-control-next-icon"></span>
                                     </a>
                                 </div>




                             </div>
                           
                         </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-12">
                          <div class="card" style=" box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.1) !important; height:100%">
                     <div class="card-header">Datos de la Empresa</div>
                     <div class="card-body">
                         
                         <div class="row">
                             <div class="col-lg-4 col-md-5 col-sm-12">
                                 <img src="../Content/img/DEFAULT.jpeg" style="width:100%" />
                             </div>
                              <div class="col-lg-8 col-md-7 col-sm-12">
                                  <div class="form-group">
                                      <label for="name">Nombre:</label><br />
                                     <label id="dempresa">Empresa de ejemplo</label>
                                  </div>
                                  <div class="form-group">
                                      <label for="name">Departamento:</label><br />
                                     <label id="dempresa">Departamento de ejemplo</label>
                                  </div>
                              </div>

                         </div>
                         <div class="row text-center">
                             <div class="col-lg-12 col-md-12 col-sm-12">
                                 <h4>Clave para ingresar a los cuestionarios:</h4>
                                 <label id="clave">4042-3363-5733</label>
                                
                                 <p>Si usted ya cuenta con una clave y desea darle continiudad al cuestionario, ingrese la clave en el siguiente recuadro:</p>
                                 <div class="form-group">
                                     <input type="text" class="form-control" id="usr" />
                                 </div>
                             </div>
                            

                         </div>
                        

                     </div>
                               <div class="card-footer">
                                 <button id="btnComenzar" type="button" class="btn float-right" style="width: 100px; margin-right: 2px;">Iniciar</button>
                                 <button id="btnSalir" type="button" class="btn float-left" style="width: 100px; margin-right: 2px;">Salir</button>
                             </div>
                     
                 </div>
                     </div>
                    
                 </div>
                 
                
             </div>
         </div>

    </form>
</body>
</html>