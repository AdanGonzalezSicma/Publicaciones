<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos-propuesta2.aspx.cs" Inherits="Sistema_web.Inscripciones.Alumnos_propuesta2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" />

</head>
<body>
   <style>
     body{
         background-color:black;
         color:white
     }
     .form-control{
         background-color:#000!important;
         color:white!important;
         border-left:none!important;
         border-right:none!important;
         border-top:none!important;
         border-radius:0
     }
      input:focus, select:focus, select, input.form-control:focus, textarea.form-control:focus {

            outline:none !important;

            outline-width: 0 !important;

            box-shadow: none;

            -moz-box-shadow: none;

            -webkit-box-shadow: none;

        }

     .form-select{
         background-color:#000!important;
         color:white;
         border-left:none;
         border-right:none;
         border-top:none;
         border-radius:0
     }
     .file-upload{
         background-color:#000!important
     }
     input:focus {
background-color:#FFEBCD;
border: 2px solid #CB8B07;
}
       
   </style>
    <script>
        function myfunction() {
            document.getElementById("menu1s").className  = "nav-link active";          
            document.getElementById("homes").className  = "nav-link";          
            document.getElementById("menu1").className = "container tab-pane active";
            document.getElementById("home").className = "container tab-pane fade";
            document.getElementById("progre").style.width = "40%";
        }
         function myfunction2() {
            document.getElementById("menu2s").className  = "nav-link active";          
            document.getElementById("menu1s").className  = "nav-link";          
            document.getElementById("menu2").className = "container tab-pane active";
            document.getElementById("menu1").className = "container tab-pane fade";
            document.getElementById("progre").style.width = "70%";
        }
         function myfunction3() {
            document.getElementById("menu3s").className  = "nav-link active";          
            document.getElementById("menu2s").className  = "nav-link";          
            document.getElementById("menu3").className = "container tab-pane active";
            document.getElementById("menu2").className = "container tab-pane fade";
            document.getElementById("progre").style.width = "100%";
        }
    </script>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 col-md-6 col-sm-12">
                    <div class="text-center" style="margin-top: 5%">
                        <img src="/content/images/logo-mascontrol.png" style="width: 200px" />
                    </div>
                    <br />
                    <div class="row" style="justify-content: center">
                        <div class="col-lg-7 col-md-12 col-sm-12">
                            <!-- Nav pills -->
                            <ul class="nav nav-pills" role="tablist" id="space">
                                <li class="nav-item">
                                    <a class="nav-link active" data-bs-toggle="pill" href="#home" id="homes"><i class="fas fa-address-book"></i></a>
                                    <p>Paso 1</p>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="pill" href="#menu1" id="menu1s"><i class="fa fa-lock"></i></a>
                                    <p>Paso 2</p>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="pill" href="#menu2" id="menu2s"><i class="fas fa-phone"></i></a>
                                    <p>Paso 3</p>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="pill" href="#menu3" id="menu3s"><i class="fa fa-address-card"></i></a>
                                    <p>Paso 4</p>
                                </li>
                            </ul>
                            <!-- Blue -->
<div class="progress" style="height:.5rem!important">
  <div class="progress-bar" id="progre" style="width:10%"></div>
</div>
                        </div>
                    </div>
                    <div class="row" style="justify-content: center">
                        <div class="col-lg-8 col-md-12 col-sm-12">


                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="home" class="container tab-pane active">
                                    <br/>
                                    <br />
                                    <div class="text-center">
                                        <h4><b>Datos Generales</b></h4>
                                    </div>
                                    <div class="row" style="margin-bottom: 5px">
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label for="usr">Nombre:</label>
                                                <input id="txtNombreAlumno" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label for="pwd">Apellido(s):</label>
                                                <input id="txtApellidos" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 5px">
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label for="usr">Género:</label>
                                                <select class="form-select" id="sel1" name="sellist1">
                                                    <option>Masculino</option>
                                                    <option>Femenino</option>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label for="usr">Correo Electronico:</label>
                                                <input id="txtCorreo" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>

                                    </div>
                                    <div class="row" style="margin-bottom: 5px">
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <label for="pwd" style="color: red">Guardar el NIP para futuros cambios:</label><br />
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">

                                                <b>
                                                    <asp:Label ID="lblNIP" runat="server" Text="NIP:"></asp:Label></b>
                                                <input id="nip" runat="server" class="form-control" onkeypress="return onlyNumbers(event)" maxlength="4" />
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label for="usr">Fecha de nacimiento:</label>
                                                <input id="txtFecha" runat="server" class="form-control" />

                                            </div>
                                        </div>
                                    </div>




                                    <div class="form-group"  style="margin-bottom: 5px">
                                        <label for="usr">CURP:</label>
                                        <input id="Curp" runat="server" class="form-control" maxlength="15" style="text-transform: uppercase" />

                                    </div>
                                    <label for="usr" style="margin-bottom: 5px">Selecciona el tipo de entrenamiento:</label><br />
                                    <div class="row" style="justify-content: space-between; text-align: center">
                                        <div class="col">
                                            <div class="form-group">
                                                <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" />
                                                Academia
                                                    <label class="form-check-label" for="radio1"></label>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2" />
                                                Personalizado
                                                    <label class="form-check-label" for="radio2"></label>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3" />
                                                Ambas
                                                     <label class="form-check-label" for="radio3"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <label for="usr" style="margin-bottom: 5px">Foto del alumno:</label><br />
                                              <div class="file file-upload">
                                                        <div id="divSinImagen" runat="server" class="image-upload-wrap image-uploadwrap w-125px h-125px">
                                                            <input type="file" id="duImagenEmpresa" class="file-upload-input file-uploadinput" onchange="readURL(this);" runat="server" accept="image/*" />
                                                            <div class="row text-center" style="align-content: center">
                                                                <div class="text-center">
                                                                    <img src="/content/images/computacion-en-la-nube.png" style="width: 80px" />
                                                                </div>



                                                                <h5>Subir imagen</h5>

                                                            </div>

                                                        </div>
                                                        <div id="divConImagen" runat="server" class="file-upload-content file-uploadcontent">
                                                            <img id="imgEntrenador" class="file-upload-image file-uploadimage" runat="server" alt="your image" />
                                                            <div class="image-title-wrap">
                                                                <button type="button" onclick="removeUpload()" class="remove-image removeimage2" style="font-size: 1.075rem !important">Eliminar imagen <i class="fa fa-minus-circle" aria-hidden="true" style="color: red"></i></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                  

                                  



                                    <button type="button" class="btn btn-warning" onclick="myfunction()">Siguiente Paso</button><br /><br />
                                </div>
                                <div id="menu1" class="container tab-pane fade">
                                      <br/>
                                    <br />
                                    <div class="text-center">
                                        <h4><b>Documentación</b></h4>
                                    </div>
                                    <div class="row" style="margin-bottom: 5px">
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label for="usr">Teléfono Movil:</label>
                                                <input id="Text1" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label for="pwd">Teléfono Fijo:</label>
                                                <input id="Text2" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                    </div>
                                       <div class="row" style="margin-bottom: 5px">
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="usr">Fecha de Ingreso:</label>
                                                <input id="Text5" runat="server" class="form-control" type="date" />

                                            </div>
                                        </div>
                                       
                                      
                                    </div>
                                      <div class="row">
                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="mb-3 mt-3">
                                            <label class="form-label" style="font-weight: 600;">CURP:</label>
                                            <div class="file file-upload">
                                                <div id="div1" runat="server" class="image-upload-wrap2 image-uploadwrap  w-125px h-125px">
                                                    <input type="file" id="File1" class="file-upload-input2 file-uploadinput" onchange="readURL2(this);" runat="server" accept="image/*" />
                                                    <div class="row text-center" style="align-content:center">
                                                        <div class="text-center">
                                                            <img src="/content/images/computacion-en-la-nube.png" style="width: 80px" />
                                                        </div>
                                                        
                                                        
    
                                                            <h5>Subir imagen</h5>
                                                       
                                                    </div>
                                                   
                                                </div>
                                                <div id="div2" runat="server" class="file-upload-content2 file-uploadcontent">
                                                    <img id="img1" class="file-upload-image2 file-uploadimage" runat="server" alt="your image" style="height:200px"/>
                                                    <div class="image-title-wrap2">
                                                        <button type="button" onclick="removeUpload2()" class="remove-image2 removeimage2" style="font-size:1.075rem !important">Eliminar imagen <i class="fa fa-minus-circle" aria-hidden="true" style="color:red"></i> </button>
                                                    </div>
                                                </div>
                                            </div>
                                          </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="mb-3 mt-3">
                                            <label class="form-label" style="font-weight: 600;">Acta de nacimiento:</label>
                                            <div class="file file-upload">
                                                <div id="div3" runat="server" class="image-upload-wrap3 image-uploadwrap  w-125px h-125px">
                                                    <input type="file" id="File2" class="file-upload-input3 file-uploadinput" onchange="readURL3(this);" runat="server" accept="image/*" />
                                                    <div class="row text-center" style="align-content:center">
                                                        <div class="text-center">
                                                            <img src="/content/images/computacion-en-la-nube.png" style="width: 80px" />
                                                        </div>
                                                        
                                                        
    
                                                            <h5>Subir imagen</h5>
                                                       
                                                    </div>
                                                   
                                                </div>
                                                <div id="div4" runat="server" class="file-upload-content3 file-uploadcontent">
                                                    <img id="img2" class="file-upload-image3 file-uploadimage" runat="server" alt="your image"  style="height:200px"/>
                                                    <div class="image-title-wrap3">
                                                        <button type="button" onclick="removeUpload3()" class="remove-image3 removeimage2" style="font-size:1.075rem !important">Eliminar imagen <i class="fa fa-minus-circle" aria-hidden="true" style="color:red"></i> </button>
                                                    </div>
                                                </div>
                                            </div>
                                          </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div class="mb-3 mt-3">
                                            <label class="form-label" style="font-weight: 600;">Identificación:</label>
                                            <div class="file file-upload">
                                                <div id="div5" runat="server" class="image-upload-wrap4 image-uploadwrap  w-125px h-125px">
                                                    <input type="file" id="File3" class="file-upload-input4 file-uploadinput" onchange="readURL4(this);" runat="server" accept="image/*" />
                                                    <div class="row text-center" style="align-content:center">
                                                        <div class="text-center">
                                                            <img src="/content/images/computacion-en-la-nube.png" style="width: 80px" />
                                                        </div>
                                                        
                                                        
    
                                                            <h5>Subir imagen</h5>
                                                       
                                                    </div>
                                                   
                                                </div>
                                                <div id="div6" runat="server" class="file-upload-content4 file-uploadcontent">
                                                    <img id="img3" class="file-upload-image4 file-uploadimage" runat="server" alt="your image"  style="height:200px"/>
                                                    <div class="image-title-wrap4 image-titlewrap">
                                                        <button type="button" onclick="removeUpload4()" class="remove-image4 removeimage2" style="font-size:1.075rem !important">Eliminar imagen <i class="fa fa-minus-circle" aria-hidden="true" style="color:red"></i> </button>
                                                    </div>
                                                </div>
                                            </div>
                                          </div>
                                    </div>
                                </div>
                                    <button type="button" class="btn btn-warning" onclick="myfunction2()">Siguiente Paso</button><br /><br />
                                </div>
                                <div id="menu2" class="container tab-pane fade">
                                    <br/>
                                    <br />
                                    <div class="text-center">
                                        <h4><b>Datos del tutor</b></h4>
                                    </div>
                                    <div class="row" style="margin-bottom: 5px">
                                        <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="usr">Nombre del Tutor:</label>
                                                <input id="Text3" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="pwd">Teléfono Fijo del tutor:</label>
                                                <input id="Text4" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="pwd">Teléfono Movil del tutor:</label>
                                                <input id="Text6" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                           <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="pwd">Correo Electronico del Tutor:</label>
                                                <input id="Text7" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                    </div>
                                      <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="mb-3 mt-3">
                                            <label class="form-label" style="font-weight: 600;">INE/IFE del Tutor:</label>
                                            <div class="file file-upload">
                                                <div id="div7" runat="server" class="image-upload-wrap5 image-uploadwrap  w-125px h-125px">
                                                    <input type="file" id="File4" class="file-upload-input5 file-uploadinput" onchange="readURL5(this);" runat="server" accept="image/*" />
                                                    <div class="row text-center" style="align-content:center">
                                                        <div class="text-center">
                                                            <img src="/content/images/computacion-en-la-nube.png" style="width: 80px" />
                                                        </div>
                                                        
                                                        
    
                                                            <h5>Subir imagen</h5>
                                                       
                                                    </div>
                                                   
                                                </div>
                                                <div id="div8" runat="server" class="file-upload-content5 file-uploadcontent">
                                                    <img id="img4" class="file-upload-image5 file-uploadimage" runat="server" alt="your image" style="height:200px"/>
                                                    <div class="image-title-wrap5 image-titlewrap">
                                                        <button type="button" onclick="removeUpload5()" class="remove-image5 removeimage2" style="font-size:1.075rem !important">Eliminar imagen <i class="fa fa-minus-circle" aria-hidden="true" style="color:red"></i> </button>
                                                    </div>
                                                </div>
                                            </div>
                                          </div>
                                    </div>
                                    </div>
                                    <div class="row">
                                        <label for="comment">Comentarios del tutor:</label>
<textarea class="form-control" rows="3" id="comment" name="text"></textarea>
                                    </div>
                                    <br />
                                  
                                     <button type="button" class="btn btn-warning" onclick="myfunction3()">Siguiente Paso</button><br /><br />
                                </div>
                                <div id="menu3" class="container tab-pane fade">
                                   <br/>
                                    <br />
                                    <div class="text-center">
                                        <h4><b>Datos de estudios</b></h4>
                                    </div>
                                    <div class="row" style="margin-bottom: 5px">
                                        <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="usr">Tipo de Servicios Médicos:</label>
                                                <input id="Text8" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="pwd">Póliza de Servicios Médicos:</label>
                                                <input id="Text9" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                  
                                    </div>
                                       <br />
                                    <div class="text-center">
                                        <h4><b>Datos de la Institución</b></h4>
                                    </div>
                                    <div class="row" style="margin-bottom: 5px">
                                        <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="usr">Institucion Educativa:</label>
                                                <input id="Text10" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="pwd">Institucion Teléfono:</label>
                                                <input id="Text11" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                           <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom: 5px">
                                            <div class="form-group">
                                                <label for="pwd">Institucion Entrenador:</label>
                                                <input id="Text12" runat="server" class="form-control" maxlength="30" onkeypress="return onlyLetters(event)" />

                                            </div>
                                        </div>
                                  
                                    </div>
                                    <br />
                                  
                                     <button type="button" class="btn btn-warning" onclick="myfunction4()">Envíar</button><br /><br />
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-lg-4 col-md-6 col-sm-0" id="fondo">
                </div>
            </div>
        </div>
    </form>
    <script src="js/upload.js"></script>
</body>
</html>

