<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="AgriculTemplate.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"  
        AutoGenerateColumns="False" Width="48%">  
        <Columns>  
            <asp:BoundField DataField="name"  
                HeaderText="name" />  
            <asp:BoundField DataField="qty"  
                HeaderText="Quantity" />  
        </Columns>  
    </asp:GridView>
        </div>
    </form>
</body>
</html>
