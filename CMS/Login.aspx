<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_2010Fun.CMS_Yeah.Login"   ValidateRequest="false" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>
        <div id="divLogin" runat="server">
            <table>
                <tr>
                    <td>
                        Username:
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    
                    </td>
                    <td>
                        <asp:Button id="btnSubmit" runat="server" Text="Submit" 
                            onclick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
    
        </div>
        <div id="divContentGrid" runat="server">
            <telerik:RadGrid ID="grdContent" runat="server" AutoGenerateColumns="false" 
                onitemcommand="grdContent_ItemCommand" Width="600px" >
                <MasterTableView>
                    <Columns>
                        <telerik:GridTemplateColumn HeaderText="Key">
                            <ItemStyle  width="100px" />
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkEdit" runat="server" Text='<%# Eval("Key") %>' CommandName="EditContent" CommandArgument='<%# Eval("Key") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn HeaderText="Description">
                            <ItemStyle  width="500px" />
                            <ItemTemplate>
                                <%# Eval("Description") %>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </div>
        <div id="divEditContent" runat="server">
            <table>
                <tr>
                    <td>
                        Key:
                    </td>
                    <td>
                        <asp:Literal ID="litKey" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>
                        Description:
                    </td>
                    <td>
                        <asp:Literal ID="litDescription" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>
                        Text:
                    </td>
                    <td>
                        <asp:TextBox ID="txtText" runat="server" TextMode="MultiLine" Width="600" Height="250"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    
                    </td>
                    <td>
                        <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" onclick="btnSaveChanges_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
