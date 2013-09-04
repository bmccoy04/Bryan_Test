<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelerikModalTest.aspx.cs" Inherits="Bryan_Test.TelerikModalTest" %>
<%@ Register Src="~/Controls/ModalUserControl.ascx" TagPrefix="uc" TagName="ModalUserControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <telerik:RadCodeBlock ID="rcbScripts" runat="server">
            <script type="text/javascript">
                function ShowSuccess() {
                    $find("<%= rwRadWindow.ClientID %>").show();
                }
            </script>
        </telerik:RadCodeBlock>
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />

    <div>
        This page has a rad widow on it
        <asp:Button ID="brnOpenRadWindow" runat="server" Text="openWindow" OnClick="btnOpenRadWindow_Click" />
    </div>
    <div>
        <asp:literal ID="litWindowText" runat="server"></asp:literal>
    </div>
<%--    <uc:ModalUserControl runat="server" ID="ucModalUserControl" /> --%>
        
        
    <telerik:RadWindow ID="rwRadWindow" runat="server" Modal="True" DestroyOnClose="False">
        <ContentTemplate>            
<%--            rad window:--%>
<%--            <br/>--%>
<%--            <asp:Literal runat="server" ID="litMyWindowLit"></asp:Literal>--%>
<%--            <br />--%>
<%--            <asp:DropDownList runat="server" ID="ddlMyList" AutoPostBack="True" OnSelectedIndexChanged="ddlMyList_SelectedIndexChanged">--%>
<%--                <Items>--%>
<%--                    <asp:ListItem Text="Test" Value="0"></asp:ListItem>--%>
<%--                    <asp:ListItem Text="Test" Value="2"></asp:ListItem>--%>
<%--                </Items>--%>
<%--            </asp:DropDownList>--%>
<%--            <br/>--%>
<%--            <telerik:RadButton runat="server" ID="btnRadButton" Text="RadButton" AutoPostBack="False"></telerik:RadButton>--%>
<%--            <br/>--%>
<%--            <asp:Button runat="server" ID="btnContentTemplate" Text="contentTemplate Button" OnClick="btnContentTemplate_OnClick"/>--%>
<%--            <asp:UpdatePanel runat="server" ID="pnlFail">--%>
<%--                <ContentTemplate>--%>
                    <asp:PlaceHolder runat="server" ID="plcHolder"></asp:PlaceHolder>
                       
<%--                </ContentTemplate>--%>
<%--            </asp:UpdatePanel>            --%>
        </ContentTemplate>
    </telerik:RadWindow>
  
<%--         <uc:ModalUserControl runat="server" ID="ucModalUserControl" />     --%>

    <telerik:RadAjaxManager ID="radAjaxManager" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="rwRadWindow">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rwRadWindow" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="brnOpenRadWindow">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="rwRadWindow" />
                    <telerik:AjaxUpdatedControl ControlID="litWindowText" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ucModalUserControl">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="litWindowText" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ddlMyList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ddlMyList"/>
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>

    </form>
</body>
</html>
