<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserEntryTeacher.aspx.cs" Inherits="CompSciIA.UserEntryTeacher" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User dashbord</title>
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
</style>

</head>
<body>

    <form id="form1" runat="server">

    <header>

        <div class="wrap">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName3" Height="53px" Width="984px" />

    </div>
 
    <div class="content">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="312px" Width="689px">
            <Columns>
                    <asp:ImageField HeaderText="Image"   ItemStyle-Width="40px" DataImageUrlField="AnnouncmentImage" ControlStyle-Width="100" ControlStyle-Height = "100" >

<ItemStyle Width="50px"></ItemStyle>
                </asp:ImageField>
                <asp:BoundField DataField="AnnouncmentText" HeaderText="." SortExpression="AnnouncmentText" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AnnouncmentText], [AnnouncmentImage] FROM [AnnouncementsMain]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="OnLogout" />
    </div>
     
    <div class="sidebar">
        <div class="vertical-menu">

            <a href="https://localhost:44343/UserEntryTeacher.aspx" class="active">Home</a>
  <a href="https://localhost:44343/ResetPasswordTeachers.aspx"> Reset Password</a>
<a href="https://localhost:44343/GradeBook.aspx"> Gradebook</a>
  <a href="https://localhost:44343/TeacherAnnouncementMaker.aspx"> Make Announcement</a>
   <a href="https://localhost:44343/EditMark.aspx"> Update Student Grades</a>
            <a href="https://localhost:44343/CalendarForTeachers.aspx"> Calendar</a>            




</div>
    </div>
     
</div>
        </form>
    
     
    </body>
</html>