<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserEntryForAdmins.aspx.cs" Inherits="CompSciIA.UserEntryForAdmins" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
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
            height: 596px;
            background-color: #ffff99;
            float: left;
        }
        .auto-style2 {
            width: 690px;
            height: 591px;
            background-color: #0d7963;
            float: right;
            background-color: #f1f1f1;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">

    <header>

        <div class="wrap">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName1" Height="46px" Width="968px" />

    </div>
 
    <div class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" DataSourceID="SqlDataSource1" Height="405px" Width="691px">
          
            <Columns>
                    <asp:ImageField HeaderText="Image"   ItemStyle-Width="40px" DataImageUrlField="AnnouncmentImage" ControlStyle-Width="100" ControlStyle-Height = "100" >

<ItemStyle Width="50px"></ItemStyle>
                </asp:ImageField>
                <asp:BoundField DataField="AnnouncmentText" HeaderText="." SortExpression="AnnouncmentText" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AnnouncmentText], [AnnouncmentImage] FROM [AnnouncementsMain]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="OnLogout" />
        <br />
        <br />
    </div>
     
    <div class="auto-style1">
        <div class="vertical-menu">
  <a href="https://localhost:44343/UserEntryForAdmins.aspx" class="active">Home</a> 
  <a href="https://localhost:44343/ResetPasswordAdmin.aspx"> Reset Password</a>
   <a href="https://localhost:44343/StudentMarkPortal.aspx"> Manage admin access</a>
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