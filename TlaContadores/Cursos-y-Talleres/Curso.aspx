<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="CreandoProductividad.Cursos_y_Talleres.Curso" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenCursosVisualizaciones" ClientInstanceName="hiddenCursosVisualizaciones" runat="server"></dx:ASPxHiddenField>
    <%--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>--%>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script src="../Content/js/jquery.min.js"></script>
    <script>
        var vid = document.getElementById("video");
        function CargarCursoHidden() {
            hiddenCursosVisualizaciones.Set("", 0);
        }
        var visibleIndex = "";
        function onToolbarCorreos(s, e) {
            if (e.item.name == "eliminar") {
                visibleIndex = gridAgregarInvitados.GetFocusedRowIndex();
                gridAgregarInvitados.GetRowValues(visibleIndex, 'OIDCursosCorreos', fncEliminarUnidad);
            }
            if (e.item.name == "enviar") {
                popupAbrirEnviarCorreos.Show();
            }
        }
        function fncEliminarUnidad(value) {
            var OIDCursoCorreos = value;
            if (OIDCursoCorreos != 0) {
                hiddenCursosVisualizaciones.Set("OIDCursosCorreos", OIDCursoCorreos);
                popupEliminarAgregarInvitados.Show();
            } else {
                PopupError.Show();
            }
        }

        function CerrarPopUP() {
            popupAbrirEnviarCorreos.Hide();
            gridAgregarInvitados.Refresh();
            LoadingPanel.Show();
        }

        function FunEliminar() {
            console.log('visibleIndex');
            console.log(visibleIndex);
            gridAgregarInvitados.DeleteRow(visibleIndex);
            popupEliminarAgregarInvitados.Hide();
        }


        function fcnAbrirpopupVizualizar() {
            popupVisualizarCursos.Show();
            //gridVisualizacionesCursos.Refresh();
        }
        function fcnAbrirpopupAgregarInvvitados() {
            popupAgregarInvitados.Show();
        }
        function playVid() {
            var vid = document.getElementById("video");
            vid.play();
            setTimeout(stopVid, 10000);
        }
        function stopVid() {
            var vid = document.getElementById("video");
            vid.currentTime = 0;
            vid.pause();
            vid.load();
        }
    </script>
    <style>
        @media screen and (max-width: 1025px) {
            .imgCurso {
                width: 100%;
            }

            .gradient-background {
                height: 100%;
                width: 100%;
                background: #17488D;
            }
        }

        @media screen and (min-width: 1026px) {
            .imgCurso {
                width: 100%;
            }

            .gradient-background {
                height: 100%;
                width: 100%;
                background: linear-gradient(45deg, #17488D 750px, #fff 180px, #fff);
            }
        }

        .imgCurso {
            border-radius: 10px
        }



        .banner-informacion label {
            color: white;
            font-size: 20px
        }

        .banner-informacion i {
            padding-right: 10px
        }

        .info {
            color: white;
            font-size: 18px
        }

        .visualizacion label {
            color: #17488D;
            font-size: 18px
        }

        .dxbButton_Material {
            box-shadow: none
        }


        .titulo {
            font-size: 25px;
            color: #17488D;
            margin-bottom: 24px
        }

        .btn-danger {
            letter-spacing: 0.5px;
            border-radius: 0px !important;
            text-transform: uppercase;
            font-size: 14px;
            font-weight: 500
        }

        @media screen and (max-width: 600px) {
            .informacion {
               height: 550px;
            }
        }

        @media screen and (min-width: 601px) {
            .informacion {
                height: 350px
            }
        }

        @media screen and (max-width: 992px) {
            .curso {
               min-height: 1300px;
            }

            #ImagenCurso2 {
                display: inline-block
            }

            .imgCurso {
                display: none
            }

            .informacion {
                min-height: 902px
            }

            .dcm {
                display: inline-block
            }
        }

        @media screen and (min-width: 993px) {
            .curso {
                min-height: 800px;
            }

            #ImagenCurso2 {
                display: none
            }

            .dcm {
                display: none
            }

            .imgCurso {
                display: inline-block
            }
        }
    </style>
    <!-- DISTRACTOR CARGANDO -->
    <dx:ASPxLoadingPanel ID="LoadingPanel" runat="server" ClientInstanceName="LoadingPanel" Modal="True"></dx:ASPxLoadingPanel>

    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right" style="padding-top: 15px">
                    <li class="breadcrumb-item"><a href="/default.aspx" style="color: gray">Inicio</a></li>
                    <li class="breadcrumb-item" style="color: #17488D">Curso</li>

                </ol>
            </div>
        </div>
    </div>

    <div class="container-fluid curso" style="padding-left:0%!important;padding-right:0%!important">


        <div class="row informacion shadow-sm" style="background-color: #045fac;">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8">
                        <br />

                        <img src="../Content/img/nom-035-video.png" id="ImagenCurso2" alt="Card image" style="width: 100%; border-radius:10px" />


                        <asp:Label ID="lblTitulo" runat="server" Text="Label" Font-Size="30px" Font-Bold="false" CssClass="info"></asp:Label>
                        <p style="color: white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nibh magna, rutrum consequat quam nec, aliquam rutrum felis. Ut porta id enim non vestibulum.</p>
                        <p style="color: white; font-size: 18px">Nombre del instructor:  
                            <asp:Label ID="lblInstructor" runat="server" Text="Label"></asp:Label></p>

                        <p class="dcm" style="margin-bottom: 5px!important; color: white">
                            <label><i class="fa fa-exclamation-circle" aria-hidden="true" style="margin-right:5px"></i>Categoría:  
                                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="info" ForeColor="#17488D"></asp:Label></label></p>
                        <br class="dcm" />

                        <p class="dcm" style="margin-bottom: 5px!important; color: white">
                            <label><i class="fa fa-exclamation-circle" aria-hidden="true" style="margin-right:5px"></i>Tipo:
                                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="info" ForeColor="#17488D"></asp:Label></label></p>
                        <br class="dcm" />


                        <p class="dcm" style="margin-bottom: 5px!important; color: white">
                            <label><i class="fa fa-eye" aria-hidden="true" style="margin-right:5px"></i></label>
                            <asp:Label ID="Label3" runat="server" Text="0"></asp:Label></p>
                        <br class="dcm" />




                        <p style="margin-bottom: 5px!important; color: white" class="dcm">
                            <label><i class="fa fa-clock" aria-hidden="true" style="margin-right:5px"></i>Duración:  
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></label></p>




                        <p style="color: white"><i class="fa fa-calendar" aria-hidden="true" style="margin-right:5px"></i>Fecha de la última actualización:  
                            <label>
                                <asp:Label ID="lblTextoTiempo" runat="server" Text=""></asp:Label></label>
                            <asp:Label ID="lblDisponibilidad" runat="server" Text="Label"></asp:Label></p>

                        <button type="button" class="btn btn-primary" onclick="fcnAbrirpopupAgregarInvvitados()" style="margin-bottom: 5px">
                            <img src="../Content/icons/iconos-nuevos/nuevo-icono.png" style="width: 20px" />
                            Agregar Invitados</button>
                        <button type="button" class="btn btn-primary" onclick="fcnAbrirpopupVizualizar()" style="margin-bottom: 5px">
                            <img src="../Content/icons/iconos-nuevos/ver-v2.png" style="width: 20px" />
                            Ver Visualizaciones</button>
                        <br />
                        <br />
                        <br />

                        <div class="card">
                            <div class="card-body">
                                <h4 class="titulo"><i class="fa fa-check-circle" aria-hidden="true" style="margin-right:5px"></i>Objetivo del curso: </h4>

                                <asp:Label ID="lblObjetivo" runat="server" Text="Label"></asp:Label>
                            </div>

                        </div>
                        <br />
                        <div class="card">
                            <div class="card-body">
                                <h4 class="titulo"><i class="fa fa-list" aria-hidden="true" style="margin-right:5px"></i>Lo que aprenderás</h4>


                                <asp:Label ID="lblTemario" runat="server" Text="Label"></asp:Label>
                                <br />

                            </div>
                        </div>

                        <br />
                        <a  href="#" class="btn btn-primary dcm" style="width: 100%">Ir al curso</a>
                        <br />


                    </div>
                    <div class="col-lg-4">
                        <br />
                        <br />

                        <div class="card shadow-sm imgCurso" style="width: 100%;">
                            <asp:Image ID="imgCurso" runat="server" Visible="false" CssClass="card-img-top" alt="Card image" />
                            <%--  <video id="video" class="imgCurso"  >
                            <source src="/Cursos/Videos/Maria.mp4" type="video/mp4" onclick="fncPlayVideo()" />
                        </video>--%>
                            <%=CargarVideo() %>
                            <%--<video class="imgCurso" id="video" poster="/Content/img/Nom_0-35-01.jpg" onclick="playVid();">
                            <source type="video/mp4" src="/Cursos/Videos/1PrimerVideo.mp4">
                        </video>--%>

                            <div class="card-body">

                                <p style="margin-bottom: 5px!important">
                                    <label><i class="fa fa-exclamation-circle" aria-hidden="true" style="margin-right:5px"></i>Categoría:  
                                        <asp:Label ID="lblCategoria" runat="server" Text="Label" CssClass="info" ForeColor="#17488D"></asp:Label></label></p>

                                <p style="margin-bottom: 5px!important">
                                    <label><i class="fa fa-exclamation-circle" aria-hidden="true" style="margin-right:5px"></i>Tipo:
                                        <asp:Label ID="lblTipo" runat="server" Text="Label" CssClass="info" ForeColor="#17488D"></asp:Label></label></p>
                                <hr />

                                <p style="margin-bottom: 5px!important">
                                    <label><i class="fa fa-eye" aria-hidden="true" style="margin-right:5px"></i></label>
                                    <asp:Label ID="lblVisualizaciones" runat="server" Text="0"></asp:Label></p>




                                <label><i class="fa fa-clock" aria-hidden="true" style="margin-right:5px"></i>Duración: </label>

                                <asp:Label ID="lblDuracion" runat="server" Text="Label"></asp:Label>

                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                            <div class="card-footer">
                                <a href="#" class="btn btn-primary" style="width: 100%">Ir al curso</a>
                            </div>



                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <br />
    <br />
    <br />

    <br />
    <br />
    <br />

    <br />
    <br />
    <br />









    <!-- POPUP VISUALIZAR CURSOS -->
    <dx:ASPxPopupControl
        ID="popupVisualizarCursos"
        ClientInstanceName="popupVisualizarCursos"
        runat="server"
        HeaderText="Listado de Visualizaciones"
        Font-Bold="False" Style="width: 80%" CloseAction="CloseButton" CloseOnEscape="false" Modal="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" AllowDragging="true">
        <HeaderStyle BackColor="Navy" Font-Bold="False" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MinWidth="90%" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxGridView
                    ID="gridVisualizacionesCursos"
                    ClientInstanceName="gridVisualizacionesCursos" Width="100%"
                    runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSCursosVisualizaciones">
                    <SettingsAdaptivity AdaptivityMode="HideDataCells">
                        <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                    </SettingsAdaptivity>

                    <SettingsBehavior AllowFocusedRow="True"></SettingsBehavior>

                    <EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>

                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="NombreUnidad" VisibleIndex="0" Caption="Centro de trabajo" Width="15%">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NumEncuesta" VisibleIndex="1" Caption="Núm. Encuesta" Width="7%"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaInicio" VisibleIndex="5" Caption="Fecha de inicio" Width="7%"></dx:GridViewDataDateColumn>
                        <dx:GridViewDataDateColumn FieldName="FechaFinal" VisibleIndex="6" Caption="Fecha final" Width="7%">
                            <PropertiesDateEdit DisplayFormatString="d"></PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2" Width="40%"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Puesto" VisibleIndex="3" Width="12%"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Departamento" VisibleIndex="4" Width="12%"></dx:GridViewDataTextColumn>
                    </Columns>
                    <Styles>
                        <Header BackColor="#43BFC7" ForeColor="White">
                        </Header>
                    </Styles>
                </dx:ASPxGridView>
                <asp:SqlDataSource runat="server" ID="SqlDSCursosVisualizaciones" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="select centro.NombreUnidad,visualizaciones.[NumEncuesta], visualizaciones.[FechaInicio], visualizaciones.[FechaFinal], visualizaciones.Nombre, visualizaciones.Puesto, Departamento  from 
(SELECT [OIDCursosVisualizaciones], [OIDEmpresa], [OIDCursoAsignado], [OIDCentroTrabajo], case when [NumEncuesta] is null then 'No aplica' else [NumEncuesta] end as 'NumEncuesta', [FechaInicio], case when CONVERT(varchar,[FechaFinal], 103) is null then 'Sin terminar' else CONVERT(varchar,[FechaFinal],103) end as 'FechaFinal', case when [Puesto] is null then 'No aplica' else [Puesto] end as 'Puesto' , case when [Nombre] is null then 'No aplica' else [Nombre] end as 'Nombre',case when [OIDDepartamento] is null then 0 else  [OIDDepartamento] end as 'OIDDepartamento' FROM [CatNomCursosVisualizaciones] ) as visualizaciones
left join 
(select OIDUnidadEvaluar,NombreUnidad from CatNOMUnidadesEvaluar) as centro
on
visualizaciones.OIDCentroTrabajo = centro.OIDUnidadEvaluar
left join 
(select OIDDepartamento, Departamento from CatNomDepartamento) as depa
on
visualizaciones.OIDDepartamento = depa.OIDDepartamento
WHERE (OIDCursoAsignado = @OIDCursoAsignado)  and (OIDEmpresa = @OIDEmpresa)
order by visualizaciones.OIDCursosVisualizaciones desc
">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hiddenCursosVisualizaciones" Name="OIDCursoAsignado" PropertyName="['OIDCursoAsignado']" Type="Int32" DefaultValue="" />
                        <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="OIDEmpresa"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <br />
    <br />
    <!-- POPUP AGREGAR INVITADOS-->
    <dx:ASPxPopupControl
        ID="popupAgregarInvitados"
        ClientInstanceName="popupAgregarInvitados"
        runat="server"
        HeaderText="Enviar invitaciones al curso"
        Font-Bold="False" Width="600px" CloseAction="CloseButton" CloseOnEscape="false" Modal="true"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter" AllowDragging="true">
        <HeaderStyle BackColor="Navy" Font-Bold="False" ForeColor="White" Border-BorderStyle="None" />
        <SettingsAdaptivity Mode="Always" VerticalAlign="WindowCenter" MinWidth="50%" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <dx:ASPxGridView
                    ID="gridAgregarInvitados"
                    ClientInstanceName="gridAgregarInvitados" Width="100%"
                    runat="server" AutoGenerateColumns="False" DataSourceID="sqlCursosCorreos" KeyFieldName="OIDCursosCorreos" OnRowInserting="gridAgregarInvitados_RowInserting">
                    <ClientSideEvents ToolbarItemClick="onToolbarCorreos"></ClientSideEvents>

                    <SettingsAdaptivity>
                        <AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
                    </SettingsAdaptivity>
                    <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                    <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True"></SettingsBehavior>

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
                            <dx:GridViewColumnLayoutItem ColumnName="Correo" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>

                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="OIDCursosCorreos" ReadOnly="True" VisibleIndex="0" Visible="False">
                            <EditFormSettings Visible="False"></EditFormSettings>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="1"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="Enviado" VisibleIndex="2"></dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDEmpresa" VisibleIndex="3" Visible="False"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OIDCurso" VisibleIndex="4" Visible="False"></dx:GridViewDataTextColumn>
                    </Columns>
                    <Columns>
                    </Columns>
                    <Toolbars>
                        <dx:GridViewToolbar ItemAlign="Right" Name="toolinvitados">
                            <Items>
                                <dx:GridViewToolbarItem Command="New" Name="nuevo" Text="Nuevo" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/nuevo-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/nuevo-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White">
                                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                                        </HoverStyle>
                                    </ItemStyle>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Command="Edit" Name="editar" Text="Editar" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/editar-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/editar-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/editar-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/editar-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White">
                                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                                        </HoverStyle>
                                    </ItemStyle>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="eliminar" Text="Eliminar" BeginGroup="True">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/delete-icono.png" UrlChecked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlDisabled="~/Content/icons/iconos-nuevos/delete-icono.png" UrlHottracked="~/Content/icons/iconos-nuevos/delete-icono.png" UrlSelected="~/Content/icons/iconos-nuevos/delete-icono.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White">
                                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                                        </HoverStyle>
                                    </ItemStyle>
                                </dx:GridViewToolbarItem>
                                <dx:GridViewToolbarItem Name="enviar" BeginGroup="True" Text="Enviar Correos">
                                    <Image Height="32px" Url="~/Content/icons/iconos-nuevos/opcion-de-envio-por-correo-v2.png" UrlChecked="~/Content/icons/iconos-nuevos/opcion-de-envio-por-correo-v2.png" UrlDisabled="~/Content/icons/iconos-nuevos/opcion-de-envio-por-correo-v2.png" UrlHottracked="~/Content/icons/iconos-nuevos/opcion-de-envio-por-correo-v2.png" UrlSelected="~/Content/icons/iconos-nuevos/opcion-de-envio-por-correo-v2.png" Width="32px">
                                    </Image>
                                    <ItemStyle BackColor="Navy" Border-BorderColor="Navy" Border-BorderStyle="Solid" ForeColor="White">
                                        <HoverStyle BackColor="#43BFC7" Border-BorderColor="#43BFC7" Border-BorderStyle="Solid">
                                        </HoverStyle>
                                    </ItemStyle>
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
                        <Header BackColor="#43BFC7" ForeColor="White">
                        </Header>
                    </Styles>
                </dx:ASPxGridView>
                <asp:SqlDataSource runat="server" ID="sqlCursosCorreos" ConnectionString='<%$ ConnectionStrings:NOM035ConnectionString %>' SelectCommand="SELECT [OIDCursosCorreos], [Correo], [Enviado], [OIDEmpresa], [OIDCurso],[OIDPinAcceso] FROM [CatNomCursosCorreos] WHERE (([OIDEmpresa] = @OIDEmpresa) AND ([OIDCurso] = @OIDCurso))" DeleteCommand="DELETE FROM [NOM035].[dbo].[CatNomCursosCorreos]
      WHERE OIDCursosCorreos=@OIDCursosCorreos"
                    InsertCommand="INSERT INTO [NOM035].[dbo].[CatNomCursosCorreos]
                    ([Correo]
                    ,[Enviado]
                    ,[OIDEmpresa]
                    ,[OIDCurso]
                    ,[OIDPinAcceso])
                VALUES
                    (@Correo
                    ,@Enviado
                    ,@OIDEmpresa
                    ,@OIDCurso
                    ,@OIDPinAcceso)"
                    UpdateCommand="UPDATE [NOM035].[dbo].[CatNomCursosCorreos]
   SET [Correo] = @Correo
      ,[Enviado] = @Enviado
 WHERE OIDCursosCorreos=@OIDCursosCorreos">
                    <DeleteParameters>
                        <asp:Parameter Name="OIDCursosCorreos"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Correo"></asp:Parameter>
                        <asp:Parameter Name="Enviado"></asp:Parameter>
                        <asp:Parameter Name="OIDEmpresa"></asp:Parameter>
                        <asp:Parameter Name="OIDCurso"></asp:Parameter>
                        <asp:Parameter Name="OIDPinAcceso"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter SessionField="OIDEmpresaLogeada" Name="OIDEmpresa" Type="Int32"></asp:SessionParameter>
                        <asp:ControlParameter ControlID="hiddenCursosVisualizaciones" Name="OIDCurso" PropertyName="['OIDCursoAsignado']" Type="Int32" DefaultValue="" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Correo"></asp:Parameter>
                        <asp:Parameter Name="Enviado"></asp:Parameter>
                        <asp:Parameter Name="OIDCursosCorreos"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>


    <!-- POPUP ELIMINAR -->
    <dx:ASPxPopupControl
        ID="popupEliminarAgregarInvitados"
        ClientInstanceName="popupEliminarAgregarInvitados"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <HeaderStyle BackColor="#FF3547" Font-Bold="False" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h5>¿Desea eliminar el registro seleccionado?</h5>
                <br />
                <div class="text-right">

                    <button type="button" class="btn btn-danger" onclick="FunEliminar()" style="color: white; background-color: #FF3547; border: 2px solid #FF3547; text-transform: uppercase; font-size: 13px; border-radius: 0px!important; letter-spacing: 1px">Eliminar</button>
                    <dx:ASPxButton ID="btnCerrarEliminar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" class="btn btn-danger" Font-Size="13px">
                        <ClientSideEvents Click="function (s, e) { popupEliminarAgregarInvitados.Hide(); }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="2px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>


    <dx:ASPxPopupControl
        ID="popupAbrirEnviarCorreos"
        ClientInstanceName="popupAbrirEnviarCorreos"
        runat="server"
        Modal="True"
        CloseAction="CloseButton"
        PopupHorizontalAlign="WindowCenter"
        PopupVerticalAlign="WindowCenter"
        HeaderText="¡Advertencia!" Font-Bold="False" Width="650px">
        <HeaderStyle BackColor="#FF3547" Font-Bold="False" ForeColor="White" Border-BorderStyle="None" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <h5>¿Esta seguro que desea enviar los correos?</h5>
                <br />
                <div class="text-right">

                    <asp:Button Text="Enviar" runat="server" ID="btnEnviarCorreos" OnClientClick="CerrarPopUP()" OnClick="btnEnviarCorreos_Click" CssClass="btn btn-danger" BackColor="#FF3547" ForeColor="white" BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" Width="100px" />
                    <dx:ASPxButton ID="btnCancelar" runat="server" Text="Cancelar" AutoPostBack="false" BackColor="White" ForeColor="#FF3547" Width="100px" class="btn btn-danger" Font-Size="14px">
                        <ClientSideEvents Click="function (s, e) { popupAbrirEnviarCorreos.Hide();  }" />
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="3px" />
                    </dx:ASPxButton>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <Border BorderStyle="None" />
    </dx:ASPxPopupControl>


    <script>
        document.oncontextmenu = function () { return false }
        $(function () {
            $(document).bind("contextmenu", function (e) {
                return false;
            });
        });
    </script>
    
</asp:Content>
