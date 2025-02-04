<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarInput.aspx.cs" Inherits="CompSciIA.CalendarInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

       <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <style>

* {
  box-sizing: border-box;
}

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
            width: 276px;
            height: 508px;
            background-color: #ffff99;
            float: left;
        }
        .auto-style2 {
            width: 690px;
            height: 506px;
            background-color: #0d7963;
            float: right;
            background-color: #f1f1f1;
        }
    </style>




    <header>

        <div class="wrap">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName1" Height="46px" Width="968px" />

    </div>
 
    <div class="auto-style2">
  
    
      <asp:TextBox ID="Eventtxt" runat="server" Height="260px" OnTextChanged="Eventtxt_TextChanged1" Width="674px" ></asp:TextBox>

              <br />
        <br />
        <br />
        <br />

              <input type ="date" id="PostDate" name="PostDate" value="03-04-2022" min="03-04-2022" max="03-04-2024" runat="server" /><asp:Button ID="Button2" runat="server" Text="Publish" onclick="oneventmade"/>
  
        <br />
        <br />
        <br />
            <asp:Label ID="UploadMessage" runat="server" visible="false" Text="You have made a calendar event" ForeColor="Green"></asp:Label>
     
    </div>
     
    <div class="auto-style1">
        <div class="vertical-menu">
 
 
            <a href="https://localhost:44343/UserEntryForAdmins.aspx">Home</a> 
  <a href="https://localhost:44343/ResetPasswordAdmin.aspx"> Reset Password</a>
   <a href="https://localhost:44343/StudentMarkPortal.aspx"> Manage admin access</a>
  <a href="https://localhost:44343/AnnouncementMaker.aspx"> Make Announcement</a>
  <a href="https://localhost:44343/TeacherForm.aspx"> Manage Teachers</a>
              <a href="https://localhost:44343/EditTeachers.aspx"> Edit Teachers</a>
  <a href="https://localhost:44343/StudentForm.aspx"> Manage Students</a>
             <a href="https://localhost:44343/EditStudents.aspx"> Edit Students</a>
  <a href="https://localhost:44343/CalendarForAdmins.aspx"> Calendar </a>
  <a href="https://localhost:44343/CalendarInput.aspx" class="active"> Add Calendar Event</a>





 
</div>
    </div>
     
</div>
        </form>
    
     
    </body>

</html>
