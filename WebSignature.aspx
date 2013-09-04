<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebSignature.aspx.cs" Inherits="Bryan_Test.WebSignature" %>

<%@ Register Assembly="WebSignature" Namespace="RealSignature" TagPrefix="ASP" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style></style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 25px; width: 500px;">
            <asp:WebSignature ID="WebSignature1" runat="server" Height="200px" Width="500px" bShowSignHereSticker="False" bShowPenTools="False"  ></asp:WebSignature>
        </div>
    </form>
</body>
</html>
