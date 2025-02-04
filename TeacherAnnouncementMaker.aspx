<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherAnnouncementMaker.aspx.cs" Inherits="CompSciIA.TeacherAnnouncementMaker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
            height: 506px;
            background-color: #0d7963;
            float: right;
            background-color: #f1f1f1;
        }
       .auto-style3 {
           
           float: left;
       }
    </style>

    <header>

        <div class="wrap">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName1" Height="46px" Width="968px" />

    </div>
 
            <div class="auto-style2">
  
  
                <br />
  
  
      <asp:TextBox ID="Announcementtxt" runat="server" CssClass="auto-style3" Height="201px" Width="671px"></asp:TextBox>
          
      
                <br />
                <br />
                <input type ="number" id="Sort" name="Sortorder"  runat="server" />

                Order of announcements<br />
                <br />

              <input type ="date" id="PostDate" name="PostDate" value="2022-04-03" min="2022-04-03" max="2024-04-03" runat="server" /> Enter date of announcement
                <br />
                <br />
      <asp:FileUpload ID="FileUpload1" runat="server"   />
  
    
                <br />
                <br />

          <asp:Button ID="Button2" runat="server" Text="Publish" onclick="onfileupload"/>
          
                  <br />
                <br />
          
                  <asp:Label ID="UploadMessage" runat="server" visible="false" Text="You have made an announcement" ForeColor="Green"></asp:Label>
      
    </div>
     
    <div class="auto-style1">
        <div class="vertical-menu">
 
       <a href="https://localhost:44343/UserEntryTeacher.aspx">Home</a>
  <a href="https://localhost:44343/ResetPasswordTeachers.aspx"> Reset Password</a>
<a href="https://localhost:44343/GradeBook.aspx"> Gradebook</a>
  <a href="https://localhost:44343/TeacherAnnouncementMaker.aspx" class="active"> Make Announcement</a>
   <a href="https://localhost:44343/EditMark.aspx"> Update Student Grades</a>
            <a href="https://localhost:44343/CalendarForTeachers.aspx"> Calendar</a>            






 
</div>
    </div>
     
</div>
        
    
     
     </header>
     </form>
     <p>
         &nbsp;</p>
    
     
    </body>
</html>