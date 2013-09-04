<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignaturePad.aspx.cs" Inherits="Bryan_Test.SignaturePad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
    <script src="Scripts/jquery.signaturepad.min.js"></script>
    <script src="Scripts/json2.min.js"></script>
    <script src="Scripts/flashcanvas.js"></script>
    <link href="Styles/jquery.signaturepad.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.sigPad').signaturePad();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server" class="sigPad">
      <label for="name">Print your name</label>
      <input type="text" name="name" id="name" class="name">
      <p class="typeItDesc">Review your signature</p>
      <p class="drawItDesc">Draw your signature</p>
      <ul class="sigNav">
        <li class="typeIt"><a href="#type-it" class="current">Type It</a></li>
        <li class="drawIt"><a href="#draw-it">Draw It</a></li>
        <li class="clearButton"><a href="#clear">Clear</a></li>
      </ul>
      <div class="sig sigWrapper">
        <div class="typed"></div>
        <canvas class="pad" width="198" height="55"></canvas>
        <input type="hidden" name="output" class="output">
      </div>
    </form>
</body>
</html>
