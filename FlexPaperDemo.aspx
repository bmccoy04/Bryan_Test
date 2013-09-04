<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlexPaperDemo.aspx.cs" Inherits="Bryan_Test.FlexPaperDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/FlexPaper/flexpaper.css" rel="stylesheet" />
    <script src="Scripts/FlexPaper/jquery.min.js"></script>
    <script src="Scripts/FlexPaper/jquery.extensions.min.js"></script>
    <script src="Scripts/FlexPaper/flexpaper.js"></script>
    <script src="Scripts/FlexPaper/FlexPaperViewer.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="/PDF/InfiniLeague-CBSSports.pdf" target="_blank">tset</a>
            <div id="documentViewer" class="flexpaper_viewer" style="position:absolute;left:10px;top:10px;width:970px;height:800px"></div>
        </div>

        <script type="text/javascript">
            function getDocumentUrl() {
                //                return "services/view.ashx?doc={doc}&format={format}&page={page}".replace("{doc}", document);;
                return "services/view.ashx";
            }
            
//            $('#documentViewer').FlexPaperViewer(
//                {
//                    config: {
//                        PDFFile: "../PDF/InfiniLeague-CBSSports.pdf",
//                        Scale: 0.6,
//                        ZoomTransition: 'easeOut',
//                        ZoomTime: 0.5,
//                        ZoomInterval: 0.1,
//                        FitPageOnLoad: true,
//                        FitWidthOnLoad: false,
//                        FullScreenAsMaxWindow: false,
//                        ProgressiveLoading: false,
//                        MinZoomSize: 0.2,
//                        MaxZoomSize: 5,
//                        SearchMatchAll: false,
//                        InitViewMode: 'Portrait',
//                        RenderingOrder: 'flash',
//
//                        ViewModeToolsVisible: true,
//                        ZoomToolsVisible: true,
//                        NavToolsVisible: true,
//                        CursorToolsVisible: true,
//                        SearchToolsVisible: true,
//
//                        jsDirectory: '../Scripts/FlexPaper/',
//
//                        JSONDataType: 'jsonp',
//                        key: '<%=Licensekey %>'
//
//
//                    }
//                }
//            );

            $(document).ready(function() {
                $.ajax({
                    url: getDocumentUrl(),
                    contentType: "application/json; charset=utf-8",
                    success: OnComplete,
                    error: OnFail
                                });
            });
            

            function OnComplete() {
                alert("YEAH");
            }

            function OnFail(result) {
                alert(result.message);
            }
        </script>


    </form>
</body>
</html>
