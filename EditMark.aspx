<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditMark.aspx.cs" Inherits="CompSciIA.EditMark" %>

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
</style>


    <header>

        <div class="wrap">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName3" Height="53px" Width="984px" />

    </div>
 
    <div class="content">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Height="181px" Width="690px">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Math" HeaderText="Math" SortExpression="Math" />
                    <asp:BoundField DataField="History" HeaderText="History" SortExpression="History" />
                    <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                    <asp:BoundField DataField="Science" HeaderText="Science" SortExpression="Science" />
                    <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                     <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            
    </div>
     
    <div class="sidebar">
        <div class="vertical-menu">

            
       <a href="https://localhost:44343/UserEntryTeacher.aspx">Home</a>
  <a href="https://localhost:44343/ResetPasswordTeachers.aspx"> Reset Password</a>
<a href="https://localhost:44343/GradeBook.aspx"> Gradebook</a>
  <a href="https://localhost:44343/TeacherAnnouncementMaker.aspx"> Make Announcement</a>
   <a href="https://localhost:44343/EditMark.aspx" class="active"> Update Student Grades</a>
            <a href="https://localhost:44343/CalendarForTeachers.aspx"> Calendar</a>            

</div>
    </div>
     
</div>
        
     
    </body>
    </form>
</html>
