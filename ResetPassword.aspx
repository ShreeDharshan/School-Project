<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="CompSciIA.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
 
 <style>
*
body { margin:0; padding:0; }
 
.wrap {
    width:980px;
    margin:0 auto;
}
.header { 
    height:61px;
    margin-bottom:15px;
    background-color: #ffff99;
            width: 977px;
        }
.content {
    width:690px;
    height:450px;
    background-color:#0d7963;
    float:right;
    background-color: #f1f1f1;
}
.sidebar {
    width:275px;
    height:450px;
 background-color: #ffff99;
    float:left;
}
.footer {
    height:70px;
    margin-top:15px;
 background-color: #ffff99;
}
.clear {
    clear:both;
}
.vertical-menu {
  width: 273px;
  height: 219px;
  background-color: #ffff99;      }

.vertical-menu a {

  color: black;
  display: block;
  padding: 12px; 
  text-decoration: none; 
  background-color: #f1f1f1;
}

.vertical-menu a:hover { 
  background-color: #f1f1f1;
}

.vertical-menu a.active {
  background-color: #ffff99;
  color: black;
}
}
     .auto-style1 {
         height: 33px;
     }
     .auto-style2 {
         height: 26px;
     }
     .auto-style3 {
         width: 274px;
     }
     .auto-style4 {
         height: 33px;
         width: 274px;
     }
     .auto-style5 {
         width: 685px;
         height: 283px;
     }
 </style>

    <header>

        <div class="wrap">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName2" Height="53px" Width="984px" />

    </div>
 
            <div class="content">
        <br />
            <table align="center" class="auto-style5" style="border: thin solid #FAF884">
            <tr>
                <td colspan="3" 
                    style="border-bottom: thin solid #FAF884; font-weight: 700; text-align: center;">
                    Change Password Form</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    Enter Current Password :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtcurrentpass" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtcurrentpass" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Enter New Password :</td>
                <td class="style4">
                    <asp:TextBox ID="txtnewpass" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtnewpass" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Confirm Password : </td>
                <td class="style4">
                    <asp:TextBox ID="txtconfirmpass" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtconfirmpass" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtnewpass" ControlToValidate="txtconfirmpass" 
                        ErrorMessage="password not same !!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    </td>
                <td class="auto-style1">
                    <asp:Button ID="btnchangepass" runat="server" Text="Change Password" 
                        onclick="btnchangepass_Click" />
                </td>
                <td class="auto-style4">
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style2">
                    </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    </div>
     
    <div class="sidebar">
        <div class="vertical-menu">
 
 
   <a href="https://localhost:44343/UserEntryStudent.aspx">Home</a>
  <a href="https://localhost:44343/ReportCard.aspx">Grades For Term</a>
  <a href="https://localhost:44343/ResetPassword.aspx" class="active">Reset Password</a>
  <a href="https://localhost:44343/WebForm2.aspx">School Calendar</a>


  

 
</div>
    </div>
     
</div>
        </form>
    
     
    </body>
</html>