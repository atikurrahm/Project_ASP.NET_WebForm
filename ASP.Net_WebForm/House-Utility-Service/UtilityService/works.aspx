<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="works.aspx.cs" Inherits="House_Utility_Service.UtilityService.works" %>

<%@ Register Src="~/UserWorks.ascx" TagPrefix="uc1" TagName="UserWorks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <link href="../Content/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.6.0.js"></script>
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <script>
        $(() => {
            $('.date').datepicker({
                format: "yyyy-mm-dd"
            });
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <uc1:UserWorks runat="server" id="UserWorks" />
</asp:Content>
