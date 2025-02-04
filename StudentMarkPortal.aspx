<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentMarkPortal.aspx.cs" Inherits="CompSciIA.StudentMarkPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            width: 277px;
            height: 509px;
            background-color: #ffff99;
            float: left;
        }
        .auto-style2 {
            width: 690px;
            height: 1272px;
            background-color: #0d7963;
            float: right;
            background-color: #f1f1f1;
        }
        .auto-style3 {
            width: 712px;
            height: 128px;
            background-color: #0d7963;
            
            background-color: #f1f1f1;
        }
        .auto-style4 {
            height: 128px;
        }
        .auto-style5 {
            height: 55px;
        }
        .auto-style6 {
            width: 980px;
            margin: 0 auto;
            height: 1353px;
        }
        .auto-style7 {
            width: 696px;
            height: 128px;
            background-color: #0d7963;
            
            background-color: #f1f1f1;
        }
    </style>

    <title> </title>
</head>
<body>

    <form id="form1" runat="server">

        <br />
     




    <header>

        <div class="auto-style6">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName1" Height="46px" Width="968px" />


    </div>
 
    <div class="auto-style2">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" Height="413px" Width="689px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Groups" HeaderText="Groups" SortExpression="Groups" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />

            </Columns>
                        
        </asp:GridView>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
              <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" class="auto-style5">
            <tr>
                <td class="auto-style7" colspan="1">
                   
                    <asp:TextBox ID="txtId" runat="server" Width="88px"  />
                </td>
                <td class="auto-style3">
                    
                    <asp:TextBox ID="txtUserId" runat="server" Width="95px" />
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" Width="95px" />
                </td>
                 <td class="auto-style4">
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>Student</asp:ListItem>
                         <asp:ListItem>Teacher</asp:ListItem>
                         <asp:ListItem>Admin</asp:ListItem>
                     </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" Width="95px" />
                </td>
            </tr>
        </table>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
     
    <div class="auto-style1">
        <div class="vertical-menu">
        


            <a href="https://localhost:44343/UserEntryForAdmins.aspx">Home</a> 
  <a href="https://localhost:44343/ResetPasswordAdmin.aspx"> Reset Password</a>
   <a href="https://localhost:44343/StudentMarkPortal.aspx" class="active"> Manage admin access</a>
  <a href="https://localhost:44343/AnnouncementMaker.aspx"> Make Announcement</a>
  <a href="https://localhost:44343/TeacherForm.aspx"> Manage Teachers</a>
              <a href="https://localhost:44343/EditTeachers.aspx"> Edit Teachers</a>
  <a href="https://localhost:44343/StudentForm.aspx"> Manage Students</a>
             <a href="https://localhost:44343/EditStudents.aspx"> Edit Students</a>
  <a href="https://localhost:44343/CalendarForAdmins.aspx"> Calendar </a>
  <a href="https://localhost:44343/CalendarInput.aspx"> Edit Calendar</a>


 
</div>
    </div>
            
     
</div>
     </form>  
        </body>
    </html>
    

