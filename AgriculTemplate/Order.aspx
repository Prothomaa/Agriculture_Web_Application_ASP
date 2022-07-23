<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="AgriculTemplate.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="stylesheet" href="cssAdmin/styleAdmin.css"/>
    <style type="text/css">
       /* .table{
            margin-top:auto; 
            text-align:center;
            width:800px;            
        }*/
          .d1{
              margin-left:500px;
          }

        .font{
            font-size:30px;
            text-align:center;
        }
        .auto-style2{
            margin-left:50%;
             width: 100%;
        }
    </style>
</head>
<body>
    <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Admin Panel</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="AdminShow.aspx" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="AdminPanel.aspx" >
            <i class='bx bx-box' ></i>
            <span class="links_name">Product</span>
          </a>
        </li>
        <li>
          <a href="Order.aspx" class="active">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Order list</span>
          </a>
        </li>
        <li>
          <a href="UserShow.aspx">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">User</span>
          </a>
        </li>
       
        <li class="log_out">
          <a href="Login2.aspx">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
    <br />
    
    <p class="font">Order List</p>
        
    <form id="form1" runat="server">
        <div class="d1">
            
            <asp:GridView ID="GridView1" runat="server"  
        AutoGenerateColumns="False" Width="48%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">  
                <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>  
            <asp:BoundField DataField="name"  
                HeaderText="name" />  
            <asp:BoundField DataField="qty"  
                HeaderText="Quantity" />  
        </Columns>  
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
                
        </div>
    </form>
</body>
</html>
