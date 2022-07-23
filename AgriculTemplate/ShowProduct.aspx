<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="AgriculTemplate.ShowProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
        function addBookmark() {
            bookmarkurl = document.URL;
            bookmarktitle = document.title;
            if (document.all)  //Check the condition for IE
                window.external.AddFavorite(bookmarkurl, bookmarktitle)
            else if (window.sidebar) // Check the condition for Mozilla
            {
                window.sidebar.addPanel(bookmarktitle, bookmarkurl, "");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"  
        AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  
        Width="48%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  
        PageSize="5">  
        <Columns>  
            <asp:BoundField DataField="name"  
                HeaderText="name"  
                SortExpression="name" />  
            <asp:BoundField DataField="type"  
                HeaderText="type"  
                SortExpression="type" />  
            <asp:CommandField SelectText="Add to cart"  
                ShowSelectButton="True" />  
        </Columns>  
    </asp:GridView>  
    <asp:HyperLink ID="HyperLink1" runat="server"  
        NavigateUrl="~/Cart.aspx" Font-Bold="True"  
        Font-Size="Large">I'm Done, show products</asp:HyperLink>  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  
        SelectCommand="SELECT [name],  
            [type] FROM [Product]  
            ORDER BY [name]"></asp:SqlDataSource> 
<a href="javascript:addBookmark();">Bookmark this page!</a>
        </div>
    </form>
    <!--
     <script language="JavaScript">
function bookmark(url, description)
{
if (navigator.appName=='Microsoft Internet Explorer')
{
window.external.AddFavorite(url, description);
}
else
{
alert('This option works with IE only as of now.');
}
}
         function addToBookMarks() {

             if (document.all)
                 window.external.AddFavorite(location.href, document.title);

             else if (window.sidebar) window.sidebar.addPanel(document.title, location.href, '');
         }

     </script>
<input type="book" id="btnBookMark" onClick="bookmark('http://ShowProduct.aspx','MyWebsite')" value="Bookmark" />-->
</body>
</html>
