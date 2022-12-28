<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cursos-y-Talleres.aspx.cs" Inherits="CreandoProductividad.Cursos_y_Talleres.Cursos_y_Talleres" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenOIDCurso" ClientInstanceName="hiddenOIDCurso" runat="server"></dx:ASPxHiddenField>
    <script>
        function fncAgregarEditar() {
            hiddenOIDCurso.Set("OIDCurso", null);
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_txtTitulo").value = "";
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_txtObjetivo").value = "";
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_txtTemario").value = "";
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_txtDuracion").value = "";
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_txtSegmentoDe").value = "";
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_txtSegmentoHasta").value = "";
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_txtInstructor").value = "";
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_txtVideo").value = "";
            document.getElementById("ContentPlaceHolder1_popupCursos_callCurso_ddlCategoria_I").value = "";
            document.getElementById('ContentPlaceHolder1_popupCursos_callCurso_imgImagen').src = '/Content/img/not-available.png'
            popupCursos.Show();
        }
        function fncAgregarEditarCurso(value) {
            hiddenOIDCurso.Set("OIDCurso", value);
            callCurso.PerformCallback();
            popupCursos.Show();
        }
        function fncOcultarAgregarEditar() {
            if ($('#ContentPlaceHolder1_popupCursos_callCurso_txtTitulo').val().length == 0) {
                return false;
            }
            if ($('#ContentPlaceHolder1_popupCursos_callCurso_txtDuracion').val().length == 0) {
                return false;
            }
            if ($('#ContentPlaceHolder1_popupCursos_callCurso_txtSegmentoDe').val().length == 0) {
                return false;
            }
            if ($('#ContentPlaceHolder1_popupCursos_callCurso_txtSegmentoHasta').val().length == 0) {
                return false;
            }
            if ($('#ContentPlaceHolder1_popupCursos_callCurso_txtInstructor').val().length == 0) {
                return false;
            }
            if ($('#ContentPlaceHolder1_popupCursos_callCurso_txtVideo').val().length == 0) {
                return false;
            }
            if ($('#ContentPlaceHolder1_popupCursos_callCurso_txtObjetivo').val().length == 0) {
                return false;
            }
            if ($('#ContentPlaceHolder1_popupCursos_callCurso_txtTemario').val().length == 0) {
                return false;
            }
            popupCursos.Hide();
            LoadingPanel.Show();
        }
        function fncOcultarAgregarEditar2() {
            popupCursos.Hide();
        }
        function fncMostrarEliminar(value) {
            hiddenOIDCurso.Set("OIDCurso", value);
            popupEliminar.Show();
        }
        function fncOcultarEliminar() {
            popupEliminar.Hide();
        }
        function fncOcultarEliminarCategoria(){
            popupEliminarCategorias.Hide();
        }
        function fncOcultarLograrEliminar() {
            popupEliminar.Hide();
            LoadingPanel.Show();
        }
        function ShowPreviewImage(input) {
            if (input.files && input.files[0]) {
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    $('#ContentPlaceHolder1_popupCursos_callCurso_imgImagen').attr('src', e.target.result);
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
        function fncPopCategoria() {
            popupCategorias.Show();
        }
        var visibleIndex;
        function onTolbarItemCategorias(s, e) {
            if (e.item.name == "eliminar") {
                visibleIndex = gridCategorias.GetFocusedRowIndex();
                gridCategorias.GetRowValues(visibleIndex, 'OIDCursosCategoria', fcnEliminarCategoria);
            }
        }
        function fcnEliminarCategoria(value) {
            var OIDCursosCategoria = value;
            console.log(OIDCursosCategoria);
            hiddenOIDCurso.Set("OIDCursosCategoria", OIDCursosCategoria);
            popupEliminarCategorias.Show();
        }

    </script>
    <style>
        thead {
            background-color: #43bfc7 !important;
            color: #ffffff
        }

        label {
            color: navy;
            font-size:15px
        }

        #respuestas {
            color: gray !important;
        }

        .btn-success {
            background-color: #43bfc7;
        }

        @media screen and (min-width: 1559px) {
            .input {
                width: 70% !important
            }

            .input2 {
                width: 20% !important
            }

            .input3 {
                width: 70% !important
            }
        }

        @media screen and (max-width: 1558px) and (min-width: 900px) {
            .input {
                width: 75% !important
            }

            .input2 {
                width: 20% !important
            }

            .input3 {
                width: 70% !important
            }
        }

        @media screen and (max-width: 899px) {
            .input {
                width: 100% !important
            }

            .input2 {
                width: 100% !important
            }

            .input3 {
                width: 100% !important
            }
        }
        .card-block {
    font-size: 1em;
    position: relative;
    margin: 0;
    padding: 1em;
    border: none;
    border-top: 1px solid rgba(34, 36, 38, .1);
    box-shadow: none;
     
}
.card {
    font-size: 1em;
    overflow: hidden;
    padding: 5;
    border: none;
    border-radius: .28571429rem;
    box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
    margin-top:20px;
}
 .btn-danger{
             border-radius:0.35rem
         }


    </style>
    <!-- DISTRACTOR CARGANDO -->
    <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel" Modal="True"></dx:ASPxLoadingPanel>
    <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h3 class="m-0" style="padding-top: 15px"><b>Cursos y Talleres para Empresas</b></h3>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                        <li class="breadcrumb-item"><a href="/default.aspx" style="color: white">Inicio</a></li>
                        <li class="breadcrumb-item active" style="color: white">Cursos y Talleres para Empresas</li>

                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <br />
        <div class="row text-right">
            <div class="col-lg-6"></div>
            <div class="col-lg-6">
                <input type="button" name="name" value="Categorias" onclick="fncPopCategoria()" class="btn btn-primary" />
                <input type="button" name="name" value="Nuevo Curso" onclick="fncAgregarEditar()" class="btn btn-primary" />
            </div>
        </div>
        <br />
        <div class="row" style="padding-top: 15px">
            <asp:Repeater ID="repeaterCursosTalleres" runat="server">
                <ItemTemplate>
                    <div class="col-lg-6 col-md-12" style="padding-bottom:10px">
                     
                        <div class="card" style="width: 100%; border-top: 3px solid #f88017;height:100%; ">
                             <div class="card-header"><b><%# Eval("Titulo") %></b></div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <asp:Image ID="imgCurso" runat="server" ImageUrl='<%# GetImage(Eval("Imagen")) %>' Style="width: 100%;height:200px" />
                                    </div>
                                    <div class="col-lg-6">
                                               <b><label><i class="fa fa-exclamation-circle" aria-hidden="true"></i> Categoría:</label></b> 
                                                  <label> <%# Eval("Categoria") %></label><br />
                                                <b><label><i class="fa fa-exclamation-circle" aria-hidden="true"></i> Tipo:</label></b>  
                                                <label><%# Eval("Tipo") %></label><br />
                                                <b><label><i class="fa fa-clock" aria-hidden="true"></i> Duración:</label></b>
                                                <label><%# Eval("DuracionHoras") %> Minutos</label><br />
                                                <b><label>Segmento:</label></b> 
                                                <label><%# Eval("SegmentoDesde") %></label>
                                                <label>De</label>
                                                <label><%# Eval("SegmentoHasta") %></label><br />
                                                <b><label><i class="fa fa-user" aria-hidden="true"></i> Instructor: </label></b>
                                                <label> <%# Eval("Instructor") %></label><br />
                                                <%--<b><label><i class="fa fa-play" aria-hidden="true"></i> Vídeo:</label></b>--%>
                                                <%--<label> <%# Eval("Video") %></label>--%>
                                                <%--<label class="mb-2 mr-sm-2"><%: Recortar(Eval("Video").ToString(),25,2) %></label>--%>
                                          
                                        
                                    </div>
                                   
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                                <b><label><i class="fa fa-check-circle" aria-hidden="true"></i> Objetivo:</label></b> 
                                                <label><%# Eval("Objetivo") %></label><br />
                                                <%--<label class="mb-2 mr-sm-2"><%# Recortar(Eval("Objetivo").ToString(),150,1) %></label>--%>
                                                <b><label><i class="fa fa-list" aria-hidden="true"></i> Temario:</label></b>
                                                <label><%# Eval("Temario") %></label>
                                                <%--<label class="mb-2 mr-sm-2"><%# Recortar(Eval("Temario").ToString(),150,1) %></label>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-right">
                                <button type="button" class="btn btn-success" onclick="fncAgregarEditarCurso(<%# Eval("OIDCurso") %>)">Editar</button>
                                <button type="button" class="btn btn-success" onclick="fncMostrarEliminar(<%# Eval("OIDCurso") %>)">Eliminar</button>
                            </div>
                           
                        </div>
                       
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Panel ID="pnlSinCursos" runat="server" CssClass="col-sm-12 d-flex justify-content-center">
                <h1 class="text-center">Sin cursos creados</h1>
            </asp:Panel>
        </div>
        <br />
        <dx:ASPxPopupControl
            ID="popupEliminar"
            ClientInstanceName="popupEliminar"
            runat="server" Width="650px"
            AllowDragging="true"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="WindowCenter"
            HeaderText="Eliminar Curso">
            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
            <HeaderStyle BackColor="#FF3547" ForeColor="White" />
            <ContentCollection>
                <dx:PopupControlContentControl>
                   <p style="font-size:18px">¿Está seguro que desea eliminar este curso?</p> 
                    <br />
                   
                    <div class="text-right">
                        <dx:ASPxButton ID="btnEliminar"  runat="server" Text="Eliminar" OnClick="btnEliminar_Click" BackColor="#FF3547" CssClass="btn-danger">
                            <ClientSideEvents Click="fncOcultarLograrEliminar" />
                            <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="4px" />
                        </dx:ASPxButton>
                        <button type="button" class="btn btn-danger" onclick="fncOcultarEliminar()" style="background-color:white; border:3px solid #FF3547; color:#FF3547">Cancelar</button>
                    </div>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        <dx:ASPxPopupControl
            ID="popupCursos" AllowDragging="true" CloseAction="CloseButton" CloseOnEscape="false" Modal="true"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalAlign="WindowCenter"
            ClientInstanceName="popupCursos" Width="1000px"
            runat="server" HeaderText="Nuevo Curso">
            <SettingsAdaptivity Mode="OnWindowInnerWidth" />
            <HeaderStyle BackColor="Navy" ForeColor="White" />
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <div class="row" style="padding-top: 15px">
                        <div class="card" style="width: 100%; border-top: 3px solid #f88017">
                            <div class="card-body">
                                <dx:ASPxCallbackPanel ID="callCurso" ClientInstanceName="callCurso" runat="server" OnCallback="callCurso_Callback">
                                    <PanelCollection>
                                        <dx:PanelContent>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <asp:Image ID="imgImagen" runat="server" Style="width: 100%; " />
                                                    <asp:FileUpload ID="fileUploadImagen" runat="server" onchange="ShowPreviewImage(this)" />
                                              
                                                    </div>
                                                <div class="col-lg-6 text-left">
                                                    <div class="form-inline text-left" style="justify-content:unset!important;padding-bottom:8px">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Categoría:</label>
                                                        <dx:ASPxComboBox
                                                            ID="ddlCategoria"
                                                            runat="server"
                                                            DataSourceID="SqlDSCategorias"
                                                            TextField="Categoria" Height="100%"
                                                            class="form-control input3 mb-2 mr-sm-2"
                                                            ValueField="OIDCursosCategoria"
                                                            ValueType="System.String"  Width="70%">
                                                        </dx:ASPxComboBox>
                                                    </div>
                                                    <div class="form-inline text-left" style="padding-bottom:8px">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Tipo:</label>
                                                        <dx:ASPxComboBox
                                                            ID="ddlTipo"
                                                            runat="server"
                                                            DataSourceID="SqlDSTipos"
                                                            TextField="Tipo"
                                                            ValueField="OIDCursosTipo"
                                                            Height="100%"
                                                            class="form-control input3 mb-2 mr-sm-2"
                                                            ValueType="System.String" Width="70%">
                                                        </dx:ASPxComboBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="req_ddlCategoria" ControlToValidate="ddlCategoria" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <div class="form-inline text-left">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Titulo:</label>
                                                        <asp:TextBox ID="txtTitulo" runat="server" class="form-control input mb-2 mr-sm-2" MaxLength="300"></asp:TextBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="req_txtTitulo" ControlToValidate="txtTitulo" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <div class="form-inline">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Duración:</label>
                                                        <asp:TextBox ID="txtDuracion" runat="server" class="form-control input mb-2 mr-sm-2" MaxLength="10"></asp:TextBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="req_txtDuracion" ControlToValidate="txtDuracion" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <div class="form-inline">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Segmento:</label>
                                                        <asp:TextBox ID="txtSegmentoDe" runat="server" class="form-control input2 mb-2 mr-sm-2" MaxLength="10"></asp:TextBox>
                                                        <label class="mb-2 mr-sm-2">De</label>
                                                     
                                                        <asp:TextBox ID="txtSegmentoHasta" runat="server" class="form-control input2 mb-2 mr-sm-2" MaxLength="10"></asp:TextBox>
                                                    </div>                                                 
                                                    <asp:RequiredFieldValidator ID="req_txtSegmentoDe" ControlToValidate="txtSegmentoDe" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:RequiredFieldValidator ID="req_txtSegmentoHasta" ControlToValidate="txtSegmentoHasta" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <div class="form-inline">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Instructor(es):</label>
                                                        <asp:TextBox ID="txtInstructor" runat="server" class="form-control input mb-2 mr-sm-2" MaxLength="50"></asp:TextBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="req_txtInstructor" ControlToValidate="txtInstructor" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <div class="form-inline">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Vídeo:</label>
                                                        <asp:TextBox ID="txtVideo" runat="server" class="form-control input mb-2 mr-sm-2" placeholder="https://player.vimeo.com/video/473259269"></asp:TextBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="req_txtVideo" ControlToValidate="txtVideo" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="form-inline">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Objetivo:</label>
                                                        <asp:TextBox ID="txtObjetivo" TextMode="MultiLine" Rows="2" style="resize:none" runat="server" class="form-control input mb-2 mr-sm-2"></asp:TextBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="req_txtObjetivo" ControlToValidate="txtObjetivo" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                               
                                                       <div class="form-inline">
                                                        <label class="mb-2 mr-sm-2" style="width: 100px">Temario:</label>
                                                        <asp:TextBox ID="txtTemario" TextMode="MultiLine" Rows="2" Style="resize: none" runat="server" class="form-control input mb-2 mr-sm-2"></asp:TextBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="req_txtTemario" ControlToValidate="txtTemario" runat="server" ErrorMessage="Este campo no debe estar vacío" ForeColor="Red" ValidationGroup="CursosTalleres" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxCallbackPanel>
                            </div>
                            <div class="card-footer text-right">
                                <asp:Button ID="btnPopupGuardar" runat="server" ValidationGroup="CursosTalleres" Text="Guardar" OnClientClick="fncOcultarAgregarEditar()" class="btn btn-success" OnClick="btnPopupGuardar_Click1" />
                                <button type="button" class="btn btn-danger" onclick="fncOcultarAgregarEditar2()">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        <asp:SqlDataSource ID="SqlDSCategorias" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDCursosCategoria], [Categoria] FROM [CatNomCursosCategorias] WHERE ([Activo] = @Activo)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="Activo" Type="Boolean"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDSTipos" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDCursosTipo], [Tipo] FROM [CatNOMCursosTipo] WHERE ([Activo] = @Activo)">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>




    <dx:ASPxPopupControl
        ID="popupCategorias"
        ClientInstanceName="popupCategorias"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        Width="1000px"
        runat="server" HeaderText="Categorias">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderStyle BackColor="Navy" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxGridView  
                    runat="server" 
                    OnRowInserting="gridCategorias_RowInserting" OnRowDeleted="gridCategorias_RowDeleted"
                    ID="gridCategorias" 
                    ClientInstanceName="gridCategorias" 
                    DataSourceID="sqlCategorias" 
                    AutoGenerateColumns="False" 
                    KeyFieldName="OIDCursosCategoria" 
                    Width="100%">
                    <ClientSideEvents ToolbarItemClick="onTolbarItemCategorias"></ClientSideEvents>

                    <SettingsAdaptivity AdaptivityMode="HideDataCells">
                        <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                    </SettingsAdaptivity>
                      <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
                    <SettingsPager AlwaysShowPager="True">
                    </SettingsPager>

                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings ShowGroupPanel="True" ShowFilterRow="True"></Settings>
                    <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" />
                    <SettingsPopup>
                        <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True"></EditForm>
                    </SettingsPopup>

                    <StylesPopup>
                        <EditForm>
                            <Header BackColor="Navy" ForeColor="White">
                            </Header>
                        </EditForm>
                    </StylesPopup>

                    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColumnName="Categoria" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1" Visible="False"></dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDCursosCategoria" ReadOnly="True" VisibleIndex="0" Visible="False">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Categoria" VisibleIndex="1" Width="80%"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="2"></dx:GridViewDataCheckColumn>

                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolbarCategoria">
                            <Items>
                                <dx:GridViewToolbarItem Command="New" Name="nuevo" Text="Nuevo" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Command="Edit" Name="editar" Text="Editar" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" />
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="eliminar" Text="Eliminar" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White" />
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
                    <Styles>
                        <EditFormDisplayRow HorizontalAlign="Center"></EditFormDisplayRow>

                        <EditForm HorizontalAlign="Center"></EditForm>
                    </Styles>
                </dx:ASPxGridView>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>



    <asp:SqlDataSource ID="sqlCategorias" runat="server" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT OIDCursosCategoria, Categoria, Activo FROM CatNomCursosCategorias where OIDMatriz = @OIDMatriz" InsertCommand="INSERT INTO [NOM035].[dbo].[CatNomCursosCategorias]
           ([Categoria]
           ,[Activo]
           ,[OIDMatriz])
     VALUES
           (@Categoria,1,@OIDMatriz)"
        UpdateCommand="UPDATE [NOM035].[dbo].[CatNomCursosCategorias]
   SET [Categoria] = @Categoria
      ,[Activo] = 1
 WHERE OIDCursosCategoria=@OIDCursosCategoria">
        <InsertParameters>
            <asp:Parameter Name="Categoria"></asp:Parameter>
            <asp:Parameter Name="OIDMatriz"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDMatriz" Name="OIDMatriz"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Categoria"></asp:Parameter>
            <asp:Parameter Name="OIDCursosCategoria"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <dx:ASPxPopupControl
        ID="popupEliminarCategorias" AllowDragging="true" Modal="true"
        ClientInstanceName="popupEliminarCategorias"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        Width="650px"
        
        runat="server" HeaderText="¡Advertencia!">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderStyle BackColor="#FF3547" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>

                <asp:Label ID="Label1" runat="server" Text="¿Está seguro que desea eliminar esta categoría?" Font-Size="18px"></asp:Label>
                <br />
                <br />
                <div class="text-right">
                     <dx:ASPxButton ID="btnEliminarCategoria" class="btn btn-danger"  runat="server" Text="Eliminar" OnClick="btnEliminarCategoria_Click" BackColor="#FF3547" CssClass="btn-danger">
                            <ClientSideEvents Click="fncOcultarLograrEliminar" />
                            <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="4px" />
                        </dx:ASPxButton>
                        <button type="button" class="btn btn-danger" style="background-color:white; border: 3px solid #FF3547; color:#FF3547; text-transform:uppercase" onclick="fncOcultarEliminarCategoria()">Cancelar</button>
                </div>

               

            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>








</asp:Content>
