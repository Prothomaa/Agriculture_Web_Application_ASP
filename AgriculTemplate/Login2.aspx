<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="AgriculTemplate.Login2" %>


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
        .auto-style2{
            text-align:center;
            font-size:30px;
        }
        table{
            margin-left:auto;
            margin-right:auto;
            margin-top:20px;
            width:300px;
            
        }
        .innerBox{
           max-width:650px;
           position:absolute;
           display:block;
           top:50%;
           left:50%;
           transform:translate(-50%,-50%);
           background:rgba(255,255,255,.6);
           box-shadow:0 15px 20px rgba(0,0,0,.8);
           padding:30px;
           text-align:center;
           border-radius:25px;
        }
        .link{
            text-align:center;
        }

    </style>
</head>
<body>
<form id="form1" runat="server">
<div class="innerBox">
<table cellpadding="4" cellspacing="4">
    <tr>
        <td class="auto-style2" colspan="2">
            LOGIN
        </td>
    </tr>
<tr>
<td>
Username:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
    </td>
    <td>
<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" runat="server" />
</td>

</tr>
<tr>
<td>
Password:
</td>
<td>
<asp:TextBox ID="txtPWD" runat="server" TextMode="Password"/>
    </td>
    <td>
<asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ErrorMessage="Please enter Password"/>
</td>
</tr>
    <tr>
        <td>Remember Me :</td>
        <td><asp:CheckBox ID="ChkMe" runat="server" /></td>
    </tr>
<tr>
<td class="auto-style2">
    &nbsp;
</td>
<td>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="120px" Height="30px" onclick="btnSubmit_Click" />
</td>
</tr>
     <tr>
        <td class="link" colspan="2">
            <a href="AdminLogin.aspx">Are you Admin? Click Here</a>
        </td>
    </tr>
    <tr>
        <td class="link" colspan="2">
            <a href="Register.aspx">Not Registered yet? Click Here</a>
        </td>
    </tr>
</table>
</div>
</form>
</body>
</html>