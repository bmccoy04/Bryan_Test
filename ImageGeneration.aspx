<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageGeneration.aspx.cs" Inherits="Bryan_Test.ImageGeneration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:Gray">
    <form id="form1" runat="server">
        <div  style="width:1224px; margin-left:auto; margin-right:auto; margin-top:25px; background-color:Gray;">
            <img src="Images/14133.png" />
            <asp:Literal ID="litMyimage" Text="<img src='Images/newImage.jpg' />" Visible="false" runat="server" />
            <br /><br />
            <img src="Images/Letterhead_Large.png" /> 
            <img src="Images/Letterhead_Small.png" /><br />
            
        </div>
    </form>
</body>
</html>
