<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AgriculTemplate.Register" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agriculture</title>
    <style type="text/css">
        body {
    font-family: 'Amiri', serif;
    font-size: 100%;
    background: url(../imagesLogin/banner2.jpg)no-repeat center;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    -ms-background-size: cover;
    background-attachment: fixed;
    text-align: center;
    position: relative;
         }

        .auto-style2 {
          
            text-align:center;
            font-size:30px;
        }

        .innerBox{
           max-width:650px;
           position:absolute;
           display:block;
           top:50%;
           left:50%;
           transform:translate(-50%,-50%);
           background:rgba(255,255,255,.6);
           box-shadow:50px 15px 20px rgba(0,0,0,.8);
           padding:30px;
           text-align:center;
           border-radius:25px;

        }
        table{
            margin:auto;
            width:300px;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="innerBox">
            <table cellpadding="4" cellspacing="4">
                <tr>
                    <td class="auto-style2" colspan="2">Registration Form</td>
                    
                </tr>
                <tr>
                    <td>User name</td>
                    <td>
                        <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" ControlToValidate="UsernameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email ID</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email ID" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EmailTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PasswordTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
               <!-- <tr>
                    <td>Registration As</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="18px" Width="205px">
                            <asp:ListItem>Farmer</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Select One" ForeColor="Red" SetFocusOnError="True" ControlToValidate="RadioButtonList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>-->
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="30px" Text="Register" Width="120px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

        

        </div>
    </form>
</body>
</html>
