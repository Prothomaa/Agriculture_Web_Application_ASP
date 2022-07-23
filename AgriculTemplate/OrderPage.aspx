<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="AgriculTemplate.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" Width="481px">
                <Columns>
                    <asp:BoundField DataField="Product Id" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="Product Id" />
                    <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="ProductName" />
                    <asp:BoundField DataField="Product Type" HeaderText="Product Type" SortExpression="Productype" />
                    <asp:ButtonField Text="Add to cart" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
   
</body>
</html>
