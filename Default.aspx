<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bryan_Test.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var i = 0;
        
        function IncreaseI() {
            i++;
            alert(i);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        
        
    <div>
        <br />
        <a href="jQueryTestPage.aspx">JQuery Test Page</a>
        <br/><br />
        <a href="TelerikModalTest.aspx">Telerik Modal Test</a>
        <br /><br />
        <a href="Rolls.aspx">Roll</a>
        <br/><br/>
        <a href="TelerikDataListExperiment.aspx">My Data List Experiment</a>
        <br/><br/>
        <a href="RadValidation.aspx">Rad Validation</a>
        <br /><br />
        <a href="FlexPaperDemo.aspx">Flex Paper</a>
        <br /><br />
        <a href="WebSignature.aspx">Web Signature</a>
        <br /><br />
        <a href="SignaturePad.aspx">Signature Pad</a>
        <br /><br />
        <a href="http://keith-wood.name/signature.html">Signature Pad</a>
        <br/>git hup test
        <br/>
        <br/>
        <a href="javascript:IncreaseI();">Test JS</a>
    </div>
    </form>
</body>
</html>
