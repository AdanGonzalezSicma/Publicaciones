<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inscripciones.aspx.cs" Inherits="Sistema_web.Personalizados.Inscripciones" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxHiddenField ID="hiddenInscripcion" ClientInstanceName="hiddenInscripcion" runat="server"></dx:ASPxHiddenField>
    <dx:ASPxHiddenField ID="hiddenEntrenador" ClientInstanceName="hiddenEntrenador" runat="server"></dx:ASPxHiddenField>
    <script>    
        var visibleIndex;
        var idDocumento;
        function OnToolbarItemClick(s,e) {
            if (e.item.name == 'btnEliminar') {
                popupEliminarAlumnoPeronalizado.Show();
            }
            if (e.item.name == 'btnHorarios') {
                visibleIndex = gridAlumnosPersonalizados.GetFocusedRowIndex();
                idDocumento = gridAlumnosPersonalizados.GetRowKey(visibleIndex);
                gridAlumnosPersonalizados.GetRowValues(visibleIndex, 'OidPersonalizado;OidAlumno', OnGetRowValues);
                
            }
            if (e.item.name == 'btnNuevo') {
                popupInscribirAlumno.Show();
            }
        }
        function OnGetRowValues(value) {
            LoadingSiteMaster.Show();
            window.location = 'http://localhost:58488/Personalizados/Horarios.aspx?E=' + value[0] + '&EA=' + idDocumento + '&A=' + value[1];
            //window.location = 'https://mascontrol.club/Personalizados/Horarios.aspx?E=' + value[0] + '&EA=' + idDocumento + '&A=' + value[1];
            //hiddenInscripcion.Set('hiddenInscripcion', value);
            //popupSeleccionEntrenadorH.Show();
            //callbaclEntrenadoes.PerformCallback();
        }
        function fncOcultarEliminarHorario() {
            popupEliminarAlumnoPeronalizado.Hide();
        }
        function fncEliminarAlumnoPersonalizado() {
            popupEliminarAlumnoPeronalizado.Hide();
            LoadingSiteMaster.Show();
        }
    </script>
      <script>
         window.onload = function active() {
            var act = document.getElementById("EntrenamientosP");
            if (act.className.match("nav-item")) {
                act.className ="nav-item active";
            } else {
                act.remove.className("active");
             }
             var act2 = document.getElementById("label4");
            if (act2.className.match("tab4")) {
                act2.className ="tab active";
            } else {
                ac2t.remove.className("active");
            }
    
        }
    </script>
    <style>
        
          @media screen and (max-width: 600px) {
.dxflGroupCell_Material {
    padding: 0 7px;
}
}
            @media screen and (max-width: 600px) {
.dxflGroupCell_Material {
    padding: 0 7px;
}
.dxgvPopupEditForm_Material {
     padding: 0!important; 
    margin: 0!important;
}
.dxflCLLSys .dxflCaptionCell_Material, *[dir="rtl"].dxflFormLayout_Material .dxflCLRSys .dxflCaptionCell_Material {
    padding-left: 0px;
   padding-right: 0px; 
}
}
    </style>
        <!-- TITULO MODULO -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h3 class="m-0" style="padding: 15px"><b>Inscripción a personalizados</b></h3>
                </div>            
            </div>
        </div>
    </div>
    <br />
    <dx:ASPxGridView ID="gridAlumnosPersonalizados" ClientInstanceName="gridAlumnosPersonalizados" OnInitNewRow="gridAlumnosPersonalizados_InitNewRow" OnRowInserting="gridAlumnosPersonalizados_RowInserting" OnRowUpdating="gridAlumnosPersonalizados_RowUpdating" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSAlumnosPersonalizados" KeyFieldName="Oid" Width="100%">

<SettingsAdaptivity AdaptivityMode="HideDataCells">
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <SettingsEditing Mode="PopupEditForm"></SettingsEditing>
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
        <SettingsBehavior AllowFocusedRow="True" AllowEllipsisInText="True"></SettingsBehavior>
         <SettingsText PopupEditFormCaption="Crear/Editar" CommandCancel="Cancelar" CommandEdit="Guardar" CommandNew="Guardar" />
        <SettingsPopup>
            <EditForm HorizontalAlign="WindowCenter" VerticalAlign="WindowCenter" Modal="True">
                <SettingsAdaptivity Mode="OnWindowInnerWidth" VerticalAlign="WindowCenter" />
            </EditForm>
        </SettingsPopup>

        <EditFormLayoutProperties ColCount="2" ColumnCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="OidAlumno" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="OidPersonalizado" ColSpan="2" ColumnSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaRegistro" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaAlta" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaUltimoCargo" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="FechaUltimaAsistencia" ColSpan="2"></dx:GridViewColumnLayoutItem>
                <dx:GridViewColumnLayoutItem ColumnName="Activo" ColSpan="1"></dx:GridViewColumnLayoutItem>
                <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2" HorizontalAlign="Right"></dx:EditModeCommandLayoutItem>
            </Items>
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="Oid" ReadOnly="True" VisibleIndex="0" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OidClub" VisibleIndex="1" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="FechaRegistro" VisibleIndex="4"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaAlta" VisibleIndex="5"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaUltimoCargo" VisibleIndex="6" Caption="&#218;lt. Cargo"></dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="FechaUltimaAsistencia" VisibleIndex="7" Caption="&#218;lt. Asistencia"></dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="8"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="MontoDescuentoAutorizado" VisibleIndex="9" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UsuarioDescuento" VisibleIndex="10" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Suspendido" VisibleIndex="11" Visible="False"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="FechaSuspension" VisibleIndex="12" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataCheckColumn FieldName="UsuarioSuspension" VisibleIndex="13" Visible="False"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="MotivoSuspension" VisibleIndex="14" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="Baja" VisibleIndex="15" Visible="False"></dx:GridViewDataCheckColumn>
            <dx:GridViewDataDateColumn FieldName="FechaBaja" VisibleIndex="16" Visible="False"></dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="UsuarioBaja" VisibleIndex="17" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MotivoBaja" VisibleIndex="18" Visible="False"></dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidAlumno" Caption="Alumno" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="SqlDSAlumnos" TextField="Nombre" ValueField="OIDAlumnos"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="OidPersonalizado" Caption="Entrenamiento" VisibleIndex="3">
                <PropertiesComboBox DataSourceID="SqlDSPersonalizados" TextField="Nombre" ValueField="Oid"></PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="OIDEntrenador" VisibleIndex="19" Visible="False"></dx:GridViewDataTextColumn>
        </Columns>
        <Toolbars>
            <dx:GridViewToolbar ItemAlign="Right" Name="toolbarEntrenadores" EnableAdaptivity="True">
                <Items>
                    <dx:GridViewToolbarItem Name="btnNuevo" BeginGroup="True" Text="Nuevo" Command="New">
                        <Image Height="32px" Width="32px" Url="~/Content/iconos/Nuevo.png" UrlChecked="~/Content/iconos/Nuevo.png" UrlDisabled="~/Content/iconos/Nuevo.png" UrlHottracked="~/Content/iconos/Nuevo.png" UrlSelected="~/Content/iconos/Nuevo.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEditar" BeginGroup="True" Text="Editar" Command="Edit">
                        <Image Height="32px" Width="32px" Url="~/Content/Iconos/editar.png" UrlChecked="~/Content/Iconos/editar.png" UrlDisabled="~/Content/Iconos/editar.png" UrlHottracked="~/Content/Iconos/editar.png" UrlSelected="~/Content/Iconos/editar.png"></Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnEliminar" BeginGroup="True" Text="Eliminar" Command="Custom">
                        <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Name="btnHorarios" BeginGroup="True" Text="Entrenador" Command="Custom">
                        <Image Height="32px" Url="~/Content/iconos/delete-icono.png" UrlChecked="~/Content/iconos/delete-icono.png" UrlDisabled="~/Content/iconos/delete-icono.png" UrlHottracked="~/Content/iconos/delete-icono.png" UrlSelected="~/Content/iconos/delete-icono.png" Width="32px">
                        </Image>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
        <SettingsCommandButton>
            <NewButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Nuevo" Height="32px" ToolTip="Nuevo" Url="~/Content/iconos/new.png" Width="32px">
                </Image>
            </NewButton>
            <UpdateButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Guardar" Height="32px" ToolTip="Guardar" Url="~/Content/iconos/save.png" Width="32px">
                </Image>
            </UpdateButton>
            <CancelButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Cancelar" Height="32px" ToolTip="Cancelar" Url="~/Content/iconos/cancel2.png" Width="32px">
                </Image>
            </CancelButton>
            <EditButton ButtonType="Image" RenderMode="Image">
                <Image AlternateText="Editar" Height="32px" ToolTip="Editar" Url="~/Content/iconos/edit.png" Width="32px">
                </Image>
            </EditButton>
            <DeleteButton ButtonType="Image" RenderMode="Image" Styles-Style-CssClass="btnDelete">
                <Image AlternateText="Eliminar" Height="32px" Url="~/Content/iconos/delete.png" Width="32px">
                </Image>

                <Styles>
                    <Style CssClass="btnDelete"></Style>
                </Styles>
            </DeleteButton>
        </SettingsCommandButton>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="SqlDSAlumnosPersonalizados" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [OidClub], [OidAlumno], [OidPersonalizado], [NumeroControlAsistencua], [FechaRegistro], [FechaAlta], [FechaUltimoCargo], [FechaUltimaAsistencia], [Activo], [MontoDescuentoAutorizado], [UsuarioDescuento], [Suspendido], [FechaSuspension], [UsuarioSuspension], [MotivoSuspension], [Baja], [FechaBaja], [UsuarioBaja], [MotivoBaja],[OIDEntrenador] FROM [ClubPersonalizadosAlumnos] WHERE ([OidClub] = @OidClub)" InsertCommand="INSERT INTO [dbo].[ClubPersonalizadosAlumnos]
           ([OidClub]
           ,[OidAlumno]
           ,[OidPersonalizado]
           ,[NumeroControlAsistencua]
           ,[FechaRegistro]
           ,[FechaAlta]
           ,[FechaUltimoCargo]
           ,[FechaUltimaAsistencia]
           ,[Activo]
           ,[MontoDescuentoAutorizado]
           ,[UsuarioDescuento]
           ,[Suspendido]
           ,[FechaSuspension]
           ,[UsuarioSuspension]
           ,[MotivoSuspension]
           ,[Baja]
           ,[FechaBaja]
           ,[UsuarioBaja]
           ,[MotivoBaja])
     VALUES
           (@OidClub
           ,@OidAlumno
           ,@OidPersonalizado
           ,@NumeroControlAsistencua
           ,@FechaRegistro
           ,@FechaAlta
           ,@FechaUltimoCargo
           ,@FechaUltimaAsistencia
           ,@Activo
           ,@MontoDescuentoAutorizado
           ,@UsuarioDescuento
           ,@Suspendido
           ,@FechaSuspension
           ,@UsuarioSuspension
           ,@MotivoSuspension
           ,@Baja
           ,@FechaBaja
           ,@UsuarioBaja
           ,@MotivoBaja)"
        UpdateCommand="
UPDATE [dbo].[ClubPersonalizadosAlumnos]
   SET [OidAlumno] = @OidAlumno
      ,[OidPersonalizado] = @OidPersonalizado
      ,[FechaAlta] = @FechaAlta
      ,[FechaUltimoCargo] = @FechaUltimoCargo
      ,[FechaUltimaAsistencia] = @FechaUltimaAsistencia
      ,[Activo] = @Activo
      ,[MontoDescuentoAutorizado] = @MontoDescuentoAutorizado
      ,[UsuarioDescuento] = @UsuarioDescuento
      ,[Suspendido] = @Suspendido
      ,[FechaSuspension] = @FechaSuspension
      ,[UsuarioSuspension] = @UsuarioSuspension
      ,[MotivoSuspension] = @MotivoSuspension
      ,[Baja] = @Baja
      ,[FechaBaja] = @FechaBaja
      ,[UsuarioBaja] = @UsuarioBaja
      ,[MotivoBaja] = @MotivoBaja
 WHERE Oid = @Oid">
        <InsertParameters>
            <asp:Parameter Name="OidClub"></asp:Parameter>
            <asp:Parameter Name="OidAlumno"></asp:Parameter>
            <asp:Parameter Name="OidPersonalizado"></asp:Parameter>
            <asp:Parameter Name="NumeroControlAsistencua"></asp:Parameter>
            <asp:Parameter Name="FechaRegistro"></asp:Parameter>
            <asp:Parameter Name="FechaAlta"></asp:Parameter>
            <asp:Parameter Name="FechaUltimoCargo"></asp:Parameter>
            <asp:Parameter Name="FechaUltimaAsistencia"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="MontoDescuentoAutorizado"></asp:Parameter>
            <asp:Parameter Name="UsuarioDescuento"></asp:Parameter>
            <asp:Parameter Name="Suspendido"></asp:Parameter>
            <asp:Parameter Name="FechaSuspension"></asp:Parameter>
            <asp:Parameter Name="UsuarioSuspension"></asp:Parameter>
            <asp:Parameter Name="MotivoSuspension"></asp:Parameter>
            <asp:Parameter Name="Baja"></asp:Parameter>
            <asp:Parameter Name="FechaBaja"></asp:Parameter>
            <asp:Parameter Name="UsuarioBaja"></asp:Parameter>
            <asp:Parameter Name="MotivoBaja"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OidAlumno"></asp:Parameter>
            <asp:Parameter Name="OidPersonalizado"></asp:Parameter>
            <asp:Parameter Name="FechaAlta"></asp:Parameter>
            <asp:Parameter Name="FechaUltimoCargo"></asp:Parameter>
            <asp:Parameter Name="FechaUltimaAsistencia"></asp:Parameter>
            <asp:Parameter Name="Activo"></asp:Parameter>
            <asp:Parameter Name="MontoDescuentoAutorizado"></asp:Parameter>
            <asp:Parameter Name="UsuarioDescuento"></asp:Parameter>
            <asp:Parameter Name="Suspendido"></asp:Parameter>
            <asp:Parameter Name="FechaSuspension"></asp:Parameter>
            <asp:Parameter Name="UsuarioSuspension"></asp:Parameter>
            <asp:Parameter Name="MotivoSuspension"></asp:Parameter>
            <asp:Parameter Name="Baja"></asp:Parameter>
            <asp:Parameter Name="FechaBaja"></asp:Parameter>
            <asp:Parameter Name="UsuarioBaja"></asp:Parameter>
            <asp:Parameter Name="MotivoBaja"></asp:Parameter>
            <asp:Parameter Name="Oid"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSPersonalizados" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [Oid], [Nombre] FROM [ClubPersonalizados] WHERE (([OidClub] = @OidClub) AND ([Activo] = @Activo)) ORDER BY [Nombre]">
        <SelectParameters>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSAlumnos" runat="server" ConnectionString='<%$ ConnectionStrings:MyClubConnectionString %>' SelectCommand="SELECT [OIDAlumnos], RTRIM([Apellidos]) + ' ' + RTRIM([Nombre]) as 'Nombre' FROM [ClubAlumnos] WHERE (([Activo] = @Activo) AND ([OidClub] = @OidClub))">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean"></asp:Parameter>
            <asp:SessionParameter SessionField="OIDEmpresa" Name="OidClub" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <dx:ASPxPopupControl ID="popupEliminarAlumnoPeronalizado" ClientInstanceName="popupEliminarAlumnoPeronalizado" runat="server" AllowDragging="true"
        PopupHorizontalAlign="WindowCenter" Width="650px"
        PopupVerticalAlign="WindowCenter"
        HeaderText="Eliminar Alumno Personalizado">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderStyle BackColor="#FF3547" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <p style="font-size: 18px">¿Está seguro que desea eliminar este Alumno?</p>
                <br />

                <div class="text-right">
                    <dx:ASPxButton ID="btnEliminarAlumnoPersonalizado" runat="server" Text="Eliminar" OnClick="btnEliminarAlumnoPersonalizado_Click" BackColor="#FF3547" CssClass="btn-danger">
                        <Border BorderColor="#FF3547" BorderStyle="Solid" BorderWidth="4px" />
                        <ClientSideEvents Click="fncEliminarAlumnoPersonalizado" />
                    </dx:ASPxButton>
                    <button type="button" class="btn btn-danger" onclick="fncOcultarEliminarHorario()" style="background-color: white; border: 3px solid #FF3547; color: #FF3547">Cancelar</button>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="popupSeleccionEntrenadorH" ClientInstanceName="popupSeleccionEntrenadorH" runat="server" Width="500px">
        <SettingsAdaptivity Mode="OnWindowInnerWidth" />
        <HeaderStyle BackColor="#FF3547" ForeColor="White" />
        <ContentCollection>
            <dx:PopupControlContentControl>
                <p style="font-size: 18px">Seleccione entrenador</p>
                <br />
                <dx:ASPxCallbackPanel ID="callbaclEntrenadoes" ClientInstanceName="callbaclEntrenadoes" runat="server" OnCallback="ASPxCallbackPanel1_Callback">
                    <PanelCollection>
                        <dx:PanelContent>
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnUnload="UpdatePanel1_Unload">
                                <ContentTemplate>
                            <asp:DropDownList ID="ddlEntrenadores" runat="server" AutoPostBack="true" OnTextChanged="ddlEntrenadores_TextChanged"></asp:DropDownList>
                                    <dx:ASPxDateEdit ID="ASPxDateEdit1" OnCalendarCustomDisabledDate="ASPxDateEdit1_CalendarCustomDisabledDate" runat="server"></dx:ASPxDateEdit>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddlEntrenadores" EventName="TextChanged" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </dx:PanelContent>
                    </PanelCollection></dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <%--<asp:SqlDataSource ID="SqlDSEntrenadores" runat="server"></asp:SqlDataSource>--%>
</asp:Content>
