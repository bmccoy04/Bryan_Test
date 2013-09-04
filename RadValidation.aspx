<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadValidation.aspx.cs" Inherits="Bryan_Test.RadValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <script type="text/javascript">
            function showNotification() {
                var notification = $find("<%=RadNotification1.ClientID %>");
              setTimeout(function () {
                  notification.show();
              }, 0);
          }

          function CheckIfShow(sender, args) {
              var summaryElem = document.getElementById("<%= ValidationSummary1.ClientID%>");
              //check if summary is visible - if not, there are not errors, do not notify and continue with postback
              var noErrors = summaryElem.style.display == "none";
              args.set_cancel(noErrors);
          }
     </script>


        <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
        <asp:TextBox runat="server" ID="txtTest"></asp:TextBox>
        <asp:CustomValidator runat="server" ID="cvTest" Text="*" ErrorMessage="This failed" EnableClientScript="False" OnServerValidate="cvTest_Validation" />
        <asp:RequiredFieldValidator runat="server" ID="rfValidator" Text="Required" ErrorMessage="Required" ControlToValidate="txtTest"></asp:RequiredFieldValidator>
        <br/>
        
        <asp:Button runat="server" ID="btnSubmit" Text="test" CausesValidation="True" OnClick="btnSubmit_Validate" OnClientClick="showNotification();"/>
        
        <telerik:RadNotification ID="RadNotification1" runat="server" Width="300" Animation="Fade"
          OnClientShowing="CheckIfShow" EnableRoundedCorners="true" EnableShadow="true"
          LoadContentOn="PageLoad" Title="Validation errors" OffsetX="-20" OffsetY="-20"
          TitleIcon="warning" EnableAriaSupport="true" AutoCloseDelay="7000">
          <ContentTemplate>
               <asp:ValidationSummary ID="ValidationSummary1" runat="server"></asp:ValidationSummary>
          </ContentTemplate>
     </telerik:RadNotification>

        <telerik:RadAjaxManager runat="server" ID="radAjaxManager">
            
        </telerik:RadAjaxManager>
    </div>
    </form>
</body>
</html>
