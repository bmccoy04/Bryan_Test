<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iPARReportTest.aspx.cs" Inherits="Bryan_Test.iPARReportTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            background-color:Black;
            color:White;
            font-family:helvetica;
        }
        .green
        {
            color:#00FF00;
        }
        .yellow
        {
            color:#FFFC17;
        }
        .main > div
        {
            margin:15px 0 15px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <div>
            test <span class='green'>test 2</span> <span class='yellow'>test 3</span>
        </div>
        <div>
            test <span class='green'>test 2</span> <span class='yellow'>test 3</span>
        </div>
    </div>
    </form>
</body>
</html>
