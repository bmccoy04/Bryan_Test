<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rolls.aspx.cs" Inherits="Bryan_Test.Rolls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:500px; float:left">
        Number of Rolls: <asp:Literal runat="server" ID="litNumOfRolls"></asp:Literal><br />
        Number of 7's: <asp:Literal runat="server" ID="litNumOf7s"></asp:Literal><br />
        Number of 6's: <asp:Literal runat="server" ID="litNumOf6s"></asp:Literal><br />
        Number of 8's: <asp:Literal runat="server" ID="litNumOf8s"></asp:Literal><br />
        Number of combined 6's and 8's: <asp:Literal runat="server" ID="litNum6s8s"></asp:Literal><br />
        Number of 1's, 2's, 3's, 11's, 12's: <asp:Literal runat="server" ID="litNumOfMulti"></asp:Literal><br />
        Number of other's: <asp:Literal runat="server" ID="litNumOfOthers"></asp:Literal>
    </div>
    <div style="margin-left:500px;">
        <asp:Repeater ID="rptNumbers" runat="server">
            <ItemTemplate>
                <%# Container.DataItem %> <br />
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
