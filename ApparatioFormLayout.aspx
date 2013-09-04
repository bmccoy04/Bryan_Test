<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApparatioFormLayout.aspx.cs" Inherits="Bryan_Test.ApparatioFormLayout" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajtc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .watermarked
        {
            color:Gray;
        }
        h3
        {
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <ajtc:TextBoxWatermarkExtender ID="tbwe" runat="server" TargetControlID="txtMemberID" WatermarkText="Member ID" WatermarkCssClass="watermarked" />    
    <ajtc:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtPrefix" WatermarkText="Prefix" WatermarkCssClass="watermarked" />    
    <ajtc:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txtFirstName" WatermarkText="First Name" WatermarkCssClass="watermarked" />    
    <ajtc:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" TargetControlID="txtMiddleName" WatermarkText="Middle Name" WatermarkCssClass="watermarked" />    
    <ajtc:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" TargetControlID="txtLastName" WatermarkText="Last Name" WatermarkCssClass="watermarked" />    
    <ajtc:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" TargetControlID="txtSuffix" WatermarkText="Suffix" WatermarkCssClass="watermarked" />    
    <div style="width:1024px; margin-left:auto; margin-right:auto"> 
        <div >
            <h3>Member Info</h3>
            <asp:TextBox ID="txtMemberID" runat="server"></asp:TextBox> <br />
            <asp:TextBox ID="txtPrefix" runat="server" Width="50"></asp:TextBox>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtSuffix" runat="server" Width="50"></asp:TextBox>
        </div>
        <a>test</a>
    </div>
    </form>
</body>
</html>
