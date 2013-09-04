<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestInterface.aspx.cs" Inherits="Bryan_Test.TestInterface" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        The person's name: <asp:Literal ID="litpersonsName" runat="server"></asp:Literal>
        <br />
        The second person's name: <asp:Literal ID="litpersons2ndName" runat="server"></asp:Literal>
        <br />
        The third person's name: <asp:Literal ID="lit3" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
