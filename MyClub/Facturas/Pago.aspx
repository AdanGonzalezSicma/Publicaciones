<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago.aspx.cs" Inherits="Sistema_web.Facturas.Pago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Más Control - Pago</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body style="background-color:#f7f7f7">
    <%=CargarTema() %>
<%--    <style>
        .btn-info {
            background-color: #0090bf
        }

        .card-header {
            background-color: #0090bf;
            color: white
        }
    .navbar-expand-sm { background-color: #f7aa00 }
    </style>--%>
   
    <script>
        $(function () {
            //add the theader
            $("#tableCobros").append("<thead><tr><th>Cargo</th><th>Total</th> </tr></thead>");
            $("#tableCobros").DataTable();
        })
    </script>
    <nav class="navbar navbar-expand-sm " >
        <!-- Brand/logo -->
        <a class="navbar-brand" href="#">

            <%-- <img src="../Content/images/logo-mascontrolVB.png" alt="logo" style="width:150px;"/>--%>
        </a>
        <br />
        <br />
        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="btn" href='javascript:history.go(-1)' style="background-color:none;border:none"><i class="fas fa-arrow-left"></i> Regresar a la página anterior</a>
            </li>


        </ul>
    </nav>
    <br />
    <br />
  <style>
      .btn{
         color:white!important
      }
  </style>
    <div id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-6 col-sm-12">
                    <div>
                        <img src="../Content/images/logo-mascontrol.png" style="width: 200px" />
                    </div>
                    <br />
                    <h4><b>Elija un método de pago:</b></h4>
                    <p style="color:red">Por el momento solo manejamos la opción de Tarjeta de Crédito</p>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-6 col-sm-12">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio" checked><b>Tarjeta de Crédito</b>
                                </label>
                            </div>
                            <br />
                            <div class="row">
                                <br />
                                <br />
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xl-2 col-2">
                                    <img src="../Content/images/visa.png" style="width: 80%" />
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xl-2 col-2">
                                    <img src="../Content/images/mastercard.png" style="width: 80%" />
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xl-2 col-2">
                                    <img src="../Content/images/American-Express.png" style="width: 80%" />
                                </div>

                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="card" style="opacity: .5; pointer-events: none;">
                        <div class="card-body"> 
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio"><b>Transferencia Interbancaria</b>
                                </label>
                            </div>
                            <p>Enviaremos a tu correo información para que puedas hacer una transferencia electrónica a tráves del portal en línea de tu banco. Tu aportación se reflejará en máx 48hrs.</p>
                            <div class="row">
                                        <div class="col">
                                          <input type="text" class="form-control" placeholder="Nombre">
                                        </div>
                                        <div class="col">
                                          <input type="text" class="form-control" placeholder="Correo">
                                        </div>
                                      </div>
                        </div>
                    </div>
                    <br />
                    <div class="card" style="opacity: .5; pointer-events: none;">
                        <div class="card-body">
                             <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio"><b>Paypal</b>
                                </label>
                            </div> <br />
                             <div class="row">
                                <br />
                                <br />
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xl-2 col-2">
                                    <img src="../Content/images/paypal.png" style="width: 80%" />
                                </div>
                               
                              

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="card shadow-sm">
                        <div class="card-header text-center" style="background-color:white!important; border-bottom:none">
                            <h4 style="color:black"><b>Total a Pagar:</b></h4>
                        </div>
                               <div class="card-body">
                            <table class="table table-striped" id="tableCobros" runat="server">
                            </table>
                            <hr />
                            <table class="table text-right">
                                <thead>
                                    <tr>
                                        <th>
                                            <h5><b>Sub Total</b></h5>
                                        </th>
                                        <th>
                                            <asp:Label ID="lblSubTotal" runat="server" Text="$0.00"></asp:Label>
                                            MXN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <h5><b>Total</b></h5>
                                        </td>
                                        <td><b>
                                            <asp:Label ID="lblTotal" runat="server" Text="$0.00"></asp:Label>
                                            MXN</b></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                          <div class="card-footer" style="background-color:white; border-top:none">
                        <form action="https://www.prosepago.com/tvirtual/tvsv.aspx?t=78&amp;ppost=1" method="post" ">
                            <input runat="server" name="nom" id="nom" type="text" value="Juan Perez" hidden="hidden"/>
                            <input runat="server" name="con" id="con" type="text" value="Primer cobro desde terminal precargada" hidden="hidden" />
                            <input runat="server" name="ref" id="ref" type="text" value="0000001" hidden="hidden" />
                            <input runat="server" name="imp" id="imp" type="text" value="0.10" hidden="hidden" />
                            <input runat="server" name="ema" id="ema" type="text" value="juanperez@prosepago.com" hidden="hidden" />
                            <input runat="server" name="urlOk" id="urlOk" type="text" value="https://www.google.com.mx/#hl=es-419&amp;safe=off&amp;tbo=d&amp;output=search&amp;sclient=psy-ab&amp;q=ok&amp;oq=ok&amp;fp=1ab6da987cff1d6a" hidden="hidden" />
                            <input runat="server" name="urlKo" id="urlKo" type="text" value="https://www.google.com.mx/#hl=es-419&amp;safe=off&amp;tbo=d&amp;output=search&amp;sclient=psy-ab&amp;q=ko&amp;oq=ok&amp;fp=1ab6da987cff1d6a" hidden="hidden" />
                            <input runat="server" name="autoBack" id="autoBack" type="text" value="1" hidden="hidden" />
                            <input class="btn btn-danger" style="width: 100%;" type="submit" value="Pagar" />
                        </form>
                        <%--<button type="button" class="btn btn-danger" style="width: 100%">Continuar</button>--%>
                    </div>
                       
                    </div>

                </div>
            </div>
        </div>
      
    </div>
</body>
</html>
