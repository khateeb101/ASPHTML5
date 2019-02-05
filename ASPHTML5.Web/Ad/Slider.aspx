<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slider.aspx.cs" Inherits="ASPHTML5.Web.Ad.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    

    <link href="../Styles/screen.css" rel="stylesheet" type="text/css" media="screen" />
    


    <script src="../Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    
    <script type="text/javascript" src="../Scripts/easySlider1.7.js"></script>
    
    <title>Untitled Page</title>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#slider").easySlider({
                auto: true, continuous: true
            });
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="slider">
        <ul>
            <li>
                <a href="http://www.sodeco-gestion.com/" target=_blank><img border="0" width="250px" src="/images/BEIRUTING-1.jpg" /></a>
            </li>
            <li>
                <a href="http://www.sodeco-gestion.com/" target=_blank><img border="0"  width="250px" src="/images/BEIRUTING-2.jpg" /></a>
            </li>
            <li>
                <a href="http://www.sodeco-gestion.com/" target=_blank><img border="0"  width="250px" src="/images/BEIRUTING-3.jpg" /></a>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
