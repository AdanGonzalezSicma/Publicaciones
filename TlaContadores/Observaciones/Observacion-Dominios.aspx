<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Observacion-Dominios.aspx.cs" Inherits="CreandoProductividad.Observaciones.Observacion_Dominios" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenObservacion" ClientInstanceName="hiddenObservacion" runat="server"></dx:ASPxHiddenField>
    <style>
        .question {
  height: 25px;
  width: 25px;
  background: #ccc;
  font-size: 20px;
  line-height: 25px;
  text-align: center;
  border-radius: 50%;
  cursor: pointer;
}
              .dxgvHeader_Material {
    cursor: pointer;
    white-space: nowrap;
    padding: 21px 10px 17px;
    border: 1px solid #DFDFDF;
    background-color: white;
    color: black;
    overflow: hidden;
    font-weight: normal;
    text-align: left;
    font: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol;
    font-weight: 600; 
    font-size: 1em;
}
    </style>


    <script>

        
        window.onload = function active() {
            var act = document.getElementById("res");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
            }
            var act2 = document.getElementById("resultados");
           
            if (act2.className.match("menum")) {
                act2.className = "menum active";
                 document.getElementById("radio-0").checked = true;
            } else {
                act2.remove.className("active");
                  document.getElementById("radio-0").checked = false;
            }
    
        }
        var visibleIndex;

        function toltipsDominio(s, e) {
            if (e.item.name == "eliminar") {
                console.log('Eliminar');
                visibleIndex = gridObservacionesDominio.GetFocusedRowIndex();
                if (visibleIndex > -1) {
                gridObservacionesDominio.GetRowValues(visibleIndex, 'OIDObservaciones', fncEliminarDominio);
                }
            }
        }


        function fncEliminarDominio(value) {
            var OIDObservacion = value;
            console.log(OIDObservacion);

            if (OIDObservacion != 0) {
                hiddenObservacion.Set("OIDObservaciones", OIDObservacion);
                PopupEliminarObservacionDominio.Show();
            }
        }


        function FunEliminarDominio() {
            console.log(visibleIndex)
            gridObservacionesDominio.DeleteRow(visibleIndex);
            PopupEliminarObservacionDominio.Hide();
        }


        function FunCancelarDominio() {
            PopupEliminarObservacionDominio.Hide();
        }



    </script>


      <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0"  style="padding-top: 15px;font-weight:600">Observación por Dominio</h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item" style="color: white">Resultados</li>
                        <li class="breadcrumb-item active" style="color: white">Observación por Dominio</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <br />
   <a class="btn btn-primary" data-toggle="tooltip" title="Más información"><i class="fas fa-question-circle" style="color:white; font-size:25px"></i></a>
    <br />





    <dx:ASPxGridView ID="gridObservacionesDominio" ClientInstanceName="gridObservacionesDominio" runat="server" AutoGenerateColumns="False" DataSourceID="sqlObservacionesDominio" KeyFieldName="OIDObservaciones" Width="100%">
        <ClientSideEvents ToolbarItemClick="toltipsDominio"></ClientSideEvents>

        <SettingsAdaptivity AdaptivityMode="HideDataCells">
            <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
          <SettingsText PopupEditFormCaption="Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsEditing Mode="PopupEditForm">
        </SettingsEditing>

        <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>

        <SettingsBehavior AllowFocusedRow="True" />

        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" />
            </EditForm>
        </SettingsPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="DescripcionObservaciones" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>

        <Columns>
            <dx:GridViewDataTextColumn FieldName="OIDObservaciones" ReadOnly="True" VisibleIndex="1" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="2"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="3" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OIDDominio" VisibleIndex="4" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DescripcionObservaciones" VisibleIndex="5"></dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar  ItemAlign="Right"  Name="toolbarObserDominio">
                <Items>
                    <dx:GridViewToolbarItem Command="Edit" Name="editar" Text="Editar" BeginGroup="True">
                         <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="eliminar" Text="Eliminar"  BeginGroup="True">
                         <Image Height="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
           <SettingsCommandButton>
            <NewButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Nuevo" Height="32px" ToolTip="Nuevo" Url="~/Content/icons/new.png" Width="32px">
                </Image>
            </NewButton>
            <UpdateButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/icons/save.png" Width="32px">
                </Image>
            </UpdateButton>
            <CancelButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/icons/cancel.png" Width="32px">
                </Image>
            </CancelButton>
            <EditButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Editar" Height="32px" ToolTip="Editar" Url="~/Content/icons/edit.png" Width="32px">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image" RenderMode="Image" Styles-Style-CssClass="btnDelete">
                <Image AlternateText="Eliminar" Height="32px" Url="~/Content/icons/delete.png" Width="32px">
                </Image>

                <Styles>
                    <Style CssClass="btnDelete"></Style>
                </Styles>
            </DeleteButton>
        </SettingsCommandButton>
    </dx:ASPxGridView>



    <asp:SqlDataSource ID="sqlObservacionesDominio" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDObservaciones], [Fecha], [OIDEmpresa], [OIDDominio], [DescripcionObservaciones] FROM [CatNOMObservacionesDominios] WHERE ([OIDEmpresa] = @OIDEmpresa) ORDER BY [OIDObservaciones] DESC" DeleteCommand="DELETE FROM [NOM035].[dbo].[CatNOMObservacionesDominios]
 WHERE [OIDObservaciones] = @OIDObservaciones"
        UpdateCommand="UPDATE [NOM035].[dbo].[CatNOMObservacionesDominios]
   SET  [DescripcionObservaciones] = @DescripcionObservaciones
 WHERE [OIDObservaciones] = @OIDObservaciones">
        <DeleteParameters>
            <asp:Parameter Name="OIDObservaciones"></asp:Parameter>
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="OIDEmpresa" SessionField="OIDEmpresaLogeada" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="DescripcionObservaciones"></asp:Parameter>
            <asp:Parameter Name="OIDObservaciones"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>






    <dx:ASPxPopupControl ID="PopupEliminarObservacionDominio" ClientInstanceName="PopupEliminarObservacionDominio" runat="server"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" HeaderText="¡Advertencia!" Width="650px" Height="165px">
        <SettingsAdaptivity MinHeight="10%" MinWidth="40%" Mode="Always" VerticalAlign="WindowCenter" />
        <HeaderStyle BackColor="#FF3547" Font-Bold="True" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h5>¿Desea eliminar esta Observación?</h5>

                <br />
                <div class="text-right">
                    <button class="btn btn-danger" id="btnEliminarDominio" onclick="FunEliminarDominio()" type="button"style="background-color:#FF3547; border:1px solid #FF3547; color:#FFFFFF">
                        ELIMINAR
                    </button>
                    <button class="btn btn-danger" id="btnCancelarDominio" onclick="FunCancelarDominio()" type="button"style="background-color:white; border:2px solid #FF3547; color:#FF3547">
                        CANCELAR
                    </button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>


       <br />
    <br />
    <br />  <br />
    <br />
    <br />





</asp:Content>
