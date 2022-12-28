<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportViewReporteGeneral.aspx.cs" Inherits="CreandoProductividad.Reportes.ReportViewReporteGeneral" %>

<%@ Register Assembly="DevExpress.XtraReports.v18.1.Web.WebForms, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Reporte General de la NOM 035</title>
    <link href="/images/demo/logo-icon2.ico" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxWebDocumentViewer ID="ASPxWebDocumentViewer1" runat="server"></dx:ASPxWebDocumentViewer>
    </form>
</body>
</html>
