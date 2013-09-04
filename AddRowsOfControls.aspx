<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRowsOfControls.aspx.cs" Inherits="Bryan_Test.AddRowsOfControls" %>
<%@ Register Src="~/Controls/ucFormControls.ascx" TagName="ucAddEditRegister" TagPrefix="uc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div style="width:100%; margin: 0 auto;">
    <div style="height:10px; width:100%; background-color:Blue">
    
    </div>
    <div style="width:950px; margin: 0 auto;">
        <br />
        <br />
        This page is used to dynamicly add a user control over and over on a page.
        <br />
        <br />
        <asp:Repeater ID="rptUCRepeater" runat="server">
            <ItemTemplate>
                <uc:ucAddEditRegister ID="ucAddEditRegister" runat="server" MoneyOut='<%# Eval("MoneyOut") %>' MoneyIn='<%# Eval("MoneyIn") %>' Memo='<%# Eval("Memo") %>' />
                <br />
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <asp:Button ID="btnAgain" Text="Bitch!!!" OnClick="btnAgain_Click" runat="server" />
        <br />
        <br />
        <br />
            <div>
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <asp:Label ID="LabelRowNumber" Text='<%# DataBinder.Eval(Container.DataItem, "RowNumber") %>' runat="server" />
            <asp:TextBox ID="TXTName" runat="server" Width="100px"></asp:TextBox><br />
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TXTComments" TextMode="MultiLine" Height="50px" Width="200px" runat="server"></asp:TextBox><br />     
        </ItemTemplate>
        </asp:Repeater>
         &nbsp;&nbsp;&nbsp;<asp:Button ID="BTNPost" runat="server" Text="Post" OnClick="BTNPost_Click" /><br />
         </div>
         </div>
    </div>
    </form>
</body>
</html>
