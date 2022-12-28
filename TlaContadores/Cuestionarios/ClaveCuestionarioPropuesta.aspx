<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClaveCuestionarioPropuesta.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.ClaveCuestionarioPropuesta" %>

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
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <style>
        .card-header{
            color: white;
            background-color:rgba(67,191,199,1);
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
             <div class="container-fluid" style="padding-top:1%">
                  <section>
                <div class="container-fluid" style="background: rgb(248,128,23);background: linear-gradient(90deg, rgba(248,128,23,1) 30%, rgba(67,191,199,1) 59%, rgba(67,191,199,1) 100%);">
                    <div class="row text-center">
                        <div class="col-md-12 col-12 col-sm-12 col-lg-12">
                            <h2 data-caption-animate="fadeInLeft" data-caption-delay="0" style="text-shadow: 3px 3px 2px black;
                color: #fff !important; padding:18px">
                                Bienvenido a NOM-035-STPS-2018
                            </h2>
                        </div>

                    </div>
                </div>
            </section>
                 <div class="row">
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
                        

                     </div>
                     
                 </div>
                     </div>
                      <div class="col-lg-8 col-md-6 col-sm-12">
                           <div class="card" style="height:100%;   box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.1) !important">
                     <div class="card-header">Clave Única para Ingresar</div>
                     <div class="card-body text-center">
                        
                         <div class="form-group text-center">
                             <p>Clave para ingresar a los cuestionarios:</p>
                           <label id="clave">4042-3363-5733</label>
                         </div>
                       
                             <p class="nota">Nota: Antes de iniciar la encuesta es muy importante guardar la clave, si no inicia la encuesta en este momento su clave ya no será valida y deberá utilizar una nueva, la clave de la encuesta es necesaría si desea darle continuidad en otro momento.</p>
                        <p>Si usted ya cuenta con una clave y desea darle continiudad al cuestionario, ingrese la clave en el siguiente recuadro:</p>
                         <div class="form-group">
                            <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-6"><input type="text" class="form-control" id="usr"/></div>
                                <div class="col-lg-3"></div>
                            </div>
                             
                         </div>
                     </div>
                     <div class="card-footer">
                         <button id="btnComenzar"  type="button" class="btn float-right" style="width: 100px; margin-right: 2px;" >Iniciar</button>
                         <button id="btnSalir"  type="button" class="btn float-left" style="width: 100px; margin-right: 2px;" >Salir</button>
                     </div>
                 </div>
                      </div>
                 </div>
                 
                
             </div>
         </div>

    </form>
</body>
</html>
