<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserEntryAdmin.aspx.cs" Inherits="CompSciIA.UserEntryAdmin" %>

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

        <div>
            Session["username"] = txtUserId.Text.Trim();
        </div>

    <header>

        <div class="wrap">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName1" Height="53px" Width="984px" />

    </div>
 
    <div class="content">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="322px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="688px">
            <Columns>
                <asp:DynamicField DataField="AnnouncmentImage" HeaderText="." />
                <asp:DynamicField DataField="AnnouncmentText" HeaderText="." />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AnnouncmentText], [AnnouncmentImage] FROM [Announcements1]"></asp:SqlDataSource>
    </div>
     
    <div class="sidebar">
        <div class="vertical-menu">
  <a href="#" class="active">Home</a>
 
  <a href="#">Homework manager</a>
  <a href="#">About our school</a>
  <a href="#"> Add User</a>
  <a href="#"> Make Announcement</a>
  <a href="#"> Manage admin access</a>

 
</div>
    </div>
     
</div>
        </form>
    
     
    </body>
</html>