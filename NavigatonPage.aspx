<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NavigatonPage.aspx.cs" Inherits="Bryan_Test.NavigatonPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Width="900px" DynamicEnableDefaultPopOutImage="false" StaticEnableDefaultPopOutImage="false"
            BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" 
            Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="0px" >
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <Items>
                <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR">
                    <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR">
                        <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/iPARReportTest.aspx" Text="iPAR"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
    </div>
    </form>
</body>
</html>
