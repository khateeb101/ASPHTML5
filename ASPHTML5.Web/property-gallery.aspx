<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="property-gallery.aspx.cs" Inherits="ASPHTML5.Web.property_gallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="includes/galleryview.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="includes/jquery-1.4.1.min.js"></script>
    <script type="text/javascript" src="includes/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="includes/jquery.galleryview-2.0.js"></script>
    <script type="text/javascript" src="includes/jquery.timers-1.1.2.js"></script>
    <style type="text/css">
    .panel
    {
        margin-top:20px;
    }
    .strip_wrapper, .pointer
    {
         margin-top:35px;
    }
    #filmstrip.gallery
    {
        height:580px !important;
    }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#filmstrip').galleryView({
                panel_width: 1000,
                panel_height: 450,
                frame_width: 70,
                frame_height: 70
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="gallery_wrap" runat="server" style="padding: 0 auto; margin: 0 auto; width: 900px;">
        <div id="photos" class="galleryview" runat="server" style="width: 900px;">
            <ul class="filmstrip" id="filmstrip">
                <asp:Repeater runat="server" ID="rptImage">
                    <ItemTemplate>
                        <li>
                            <asp:Image ID="Image1"  ImageUrl='<%# "~/ImageViewer.aspx?slide=show&ID=" + DataBinder.Eval(Container.DataItem, "Id")%>' ToolTip="Sodeco Gestion" runat="server" />
                        </li>
                    </ItemTemplate>
                </asp:Repeater>                
            </ul>
        </div>
    </div>
    </form>
</body>
</html>
