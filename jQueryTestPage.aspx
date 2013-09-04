<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jQueryTestPage.aspx.cs" Inherits="Bryan_Test.jQueryTestPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style type="text/css">
		#navlist li
		{
			display: inline;
			list-style-type: none;
			padding: 10px 10px 10px 10px;
		}

		#navlist
		{
			padding: 0 0 0 0;
			margin: 0 0 10px 0;
			border: none;
		}

		.blueBackgroundColor,
		.redBackgroundColor
		{
			height:20px;
		}

		.blueBackgroundColor
		{
			background-color: Blue;
		}
		
		.redBackgroundColor
		{
			background-color: Red;
		}
		
		.redBackgroundColor:hover,
		.blueBackgroundColor:hover
		{
			background-color: Yellow;
		}
		
		div.One
		{
			width:1024px;
			background-color: Blue;
			height:250px;
		}
		div.Two
		{
			width:1024px;
			background-color: Red;
			height:250px;
		}
		div.Three
		{
			width:1024px;
			background-color: Blue;
			height:250px;
		}
		
		.hidden
		{
			display: none;
		}
		
		ul
		{
			position: relative;
		}
		 
		 .menuItem
		 {
			 position:absolute;             
			 left:0px;
			 top:28px;
		 }   

		 .scrollDiv
		 {
			 width: 500px;
			 height: 150px;
			 background-color: red;
			 overflow: auto;
		 }
	</style>
</head>
<body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
    <script src="Scripts/jquery.dotdotdot-1.5.9.min.js"></script>
	<link href="Styles/jquery.jscrollpane.css" rel="stylesheet" type="text/css" media="all" />    
	<script type="text/javascript" src="scripts/jquery.jscrollpane.min.js"></script>

	<script type="text/javascript">
		$(function () {
			$('.scrollDiv').jScrollPane({ showArrows: true });
		});

		$(document).ready(function () {
			$("li").hover(function () {
				$(this).children('div').each(function () {
					$(this).slideToggle('hidden');
				});
			});
		});
		$(document).ready(function () {
		    $("#DotDotDot2").dotdotdot({
		        //	configuration goes here
		    });
		});
	</script>
	<form id="form1" runat="server">
		<div  style="width:1024px; margin-left:auto; margin-right:auto; margin-top:25px">
			<ul id="navlist">
				<li class="blueBackgroundColor">One
					<div class="One menuItem hidden">One</div>
				</li><li class="redBackgroundColor">
				Two
				<div class="Two menuItem hidden">two</div>    
				</li><li class="blueBackgroundColor">
				Three
					<div class="Three menuItem hidden">three</div>
				</li>
			</ul>
			
			<a>test</a>

			<div id="ScrollPane" class="scrollDiv" >
			TEst <br />
			TEst <br />
			TEst <br />
			TEst <br />
			TEst <br />
			TEst <br />
			TEst <br />
			TEst <br />
			Test <br />
			TEst <br />
			TEst <br />
			TEst <br />
			TEst <br />
			TEst <br />
			</div>
                <div id="DotDotDot2" style="width: 25px; height: 25px;">
        <p>
            testtesttesttest
            testtest
            test
            testtesttest
            testtest
            testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest
        </p>
    </div>
		</div>
	</form>
</body>
</html>
