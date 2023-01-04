<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Facturacion.aspx.cs" Inherits="Sistema_web.AlumnosySocios.Facturacion" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.13.4/jquery.mask.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Mis Facturas</b></h3>
                   
                </div>

            </div>
        </div>
    </div>
    <br />
    <style>
        thead {
            background-color: #0090bf;
            color: white
        }
        /*.table{
            border:1px solid lightgray
        }*/
        @media screen and (max-width: 600px) {
            .imagenL {
                display: none;
            }
        }
    </style>
    <script>
        function OnSelectedChanged(s, e) {
            gridPagosPendientes.GetSelectedFieldValues("Importe", GetSelectedFieldValuesCallback);
        }
        function GetSelectedFieldValuesCallback(values) {
            //
            var _rbtnTotal = document.getElementById("ContentPlaceHolder1_rbtnTotal").checked;

            var ImportePagosPendientes = 0;
            for (var i = 0; i < values.length; i++) {
                ImportePagosPendientes = ImportePagosPendientes + parseInt(values[i]);
            }
            if (_rbtnTotal && values.length > 0) {
                document.getElementById("ContentPlaceHolder1_rbtnTotal").checked = false;
                document.getElementById("ContentPlaceHolder1_rbtnPersonalizado").checked = true;
            }
            if (values.length == 0) {
                document.getElementById("ContentPlaceHolder1_rbtnTotal").checked = true;
                document.getElementById("ContentPlaceHolder1_rbtnPersonalizado").checked = false;
            }
            // Create our number formatter.
            var formatter = new Intl.NumberFormat('en-US', {
                style: 'currency',
                currency: 'USD',

                // These options are needed to round to whole numbers if that's what you want.
                //minimumFractionDigits: 0, // (this suffices for whole numbers, but will print 2500.10 as $2,500.1)
                //maximumFractionDigits: 0, // (causes 2500.99 to be printed as $2,501)
            });

            document.getElementById("ContentPlaceHolder1_txtTotalPersonalizado").value = formatter.format(ImportePagosPendientes);
        }
         window.onload = function active() {
            var act = document.getElementById("Alumnos");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
    
        }
    </script>
    <div class="row">
        <div class="col-lg-8">
            <dx:ASPxGridView ID="gridPagosPendientes" ClientInstanceName="gridPagosPendientes" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSPagosPendientes" KeyFieldName="Oid" Width="100%">
                <ClientSideEvents SelectionChanged="OnSelectedChanged" />
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
                <Columns>
                    <dx:GridViewCommandColumn ShowSelectCheckbox="True" SelectAllCheckboxMode="AllPages" VisibleIndex="0"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="1" Visible="False">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="2" Visible="False"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OidMembresiaAlumno" VisibleIndex="3" Visible="False"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TipoMovimiento" VisibleIndex="5" Visible="False"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="4"></dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Concepto" VisibleIndex="6"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Importe" VisibleIndex="7">
                        <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PagpVerificado" ReadOnly="True" VisibleIndex="8" Caption="Pago Verificado"></dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource runat="server" ID="SqlDSPagosPendientes" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="spMembreciasCargosAbonosAlumnos" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter SessionField="OIDAlumno" Name="OidMembresiaAlumno" Type="Int32"></asp:SessionParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <div class="card-header">Nuevo pago</div>
                <div class="card-body">
                    <div class="row">

                        <div class="col-lg-8">
                            <asp:RadioButton ID="rbtnTotal" runat="server" ValidationGroup="Pagos" Checked="true" />
                            Total a pagar:
                            <br />
                            <asp:RadioButton ID="rbtnPersonalizado" runat="server"  ValidationGroup="Pagos"/>
                            Pagar otra cantidad: 
                        </div>
                        <div class="col-lg-4">
                            <asp:Label ID="lblTotalApagar" runat="server" Text="$0.00"></asp:Label><br />
                            <asp:TextBox ID="txtTotalPersonalizado" runat="server" Width="100%" class="form-control" Text="$0.00" /><br />
                        </div>
                    </div>
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btnPagar" Text="Aceptar" runat="server" class="btn btn-primary"  OnClick="btnPagar_Click"/>
                </div>
            </div>
            <br />
            <br />
            <div class="text-center col-sm-0">
                <br />
                <br />
                <img src="../Content/images/MasControlCLUB.png" class="imagenL" style="width: 60%" />
            </div>
        </div>

    </div>
    <script>
        $('.txtTotalPersonalizado').mask("#,##0.00", {reverse: true});

    </script>
      <br />
     <br />
    <br />
</asp:Content>
