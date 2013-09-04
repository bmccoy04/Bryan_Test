<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalUserControl.ascx.cs" Inherits="Bryan_Test.Controls.ModalUserControl" %>

This is a test user control <br />
for a modal window.<br />
<asp:TextBox ID="txtTest" runat="server"></asp:TextBox><br />
<asp:Literal ID="litTest" runat="server"></asp:Literal><br />
<asp:Button ID="btnClose" Text="close" runat="server" OnClick="btnClose_Click" AutoPostBack="False" />
<asp:Button ID="btnChangeLit" Text="change lit" runat="server" OnClick="btnChangeLit_Click" />

<%--<telerik:RadAjaxManagerProxy ID="test" runat="server">--%>
<%--    <AjaxSettings>--%>
<%--        <telerik:AjaxSetting AjaxControlID="btnChangeLit">--%>
<%--            <UpdatedControls>--%>
<%--                <telerik:AjaxUpdatedControl ControlID="litTest" />--%>
<%--                <telerik:AjaxUpdatedControl ControlID="txtTest" />--%>
<%--            </UpdatedControls>--%>
<%--        </telerik:AjaxSetting>--%>
<%--    </AjaxSettings>--%>
<%--</telerik:RadAjaxManagerProxy>--%>