<%@ Page Title="" Language="C#" MasterPageFile="~/Cuestionarios/Cuestionarios.Master" AutoEventWireup="true" CodeBehind="DatosPersonalesPropuestaDiseño.aspx.cs" Inherits="CreandoProductividad.Cuestionarios.DatosPersonalesPropuestaDiseño" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid text-center">
            <button type="button" id="sidebarCollapse" class="btn btn-info">
                <i class="fas fa-align-justify"></i>
            </button>
        </div>
    </nav>
    <div class="container">
     <div class="row">
            <br />
            <div class="col-lg-12 text-center">
                <h3 class="tituloOpciones">Informe de referencia V
                </h3>

                <p>Conteste el siguiente Datos Laborales:</p>
                </div>
          </div>
         <br />
    <div class="row  justify-content-center">
         <div class="col-lg-9 text-center">
             <div class="card text-left">
                 <div class="card-body">
                     <div class="row">
                         <div class="col-lg-12"> <div class="mb-3 mt-3">
                              <div class="alert alert-info informacionT">
                                            <strong>Nombre completo:</strong>
                                        </div>
                       
                         <input type="text" class="form-control">
                     </div></div>
                     </div>
                       <div class="row">
                         <div class="col-lg-6"><div class="mb-3 mt-3">
                             <div class="alert alert-info informacionT">
                                            <strong>Puesto:</strong>
                                        </div>
                       
                         <input type="text" class="form-control">
                     </div></div>
                         <div class="col-lg-6"> <div class="mb-3 mt-3">
                                <div class="alert alert-info informacionT">
                                            <strong>Curp:</strong>
                                        </div>
                         
                         <input type="text" class="form-control">
                     </div></div>
                     </div>
                    
                      
                     
                 </div>
               
             </div>
             <br />
             <br />
              <div class="row">
                          <div class="col-lg-6 col-md-6 col-sm-6 "><button class="btn btn-primary"> Cancelar</button></div>
                          <div class="col-lg-6 col-md-6 col-sm-6 "><button class="btn btn-primary"> Guardar</button></div>
                      </div>
         </div>
    </div>
    </div>
 
</asp:Content>
