<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminShow.aspx.cs" Inherits="AgriculTemplate.AdminShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
     <link rel="stylesheet" href="cssAdmin/styleAdmin.css"/>
    <style type="text/css">
        table{
            margin-left:auto;
            margin-right:auto;   
            text-align:center;
            width:800px;            
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
          <a href="AdminShow.aspx" class="active" >
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
          <a href="Order.aspx">
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
    <form id="form1" runat="server">
        <div>
            <table >
                <tr class="font">
                    <td>Admin</td>
                </tr>
                <tr>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </tr>
                </table>
        </div>
    </form>
</body>
</html>
