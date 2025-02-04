<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarForTeachers.aspx.cs" Inherits="CompSciIA.CalendarForTeachers" %>

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
</style>

    <title></title>
</head>
    <body>  
    <form id="form1" runat="server">  
    <div>  
        <p style="text-align: center">  
            &nbsp;</p>
    </div>
        

    <header>

        <div class="wrap">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName2" Height="53px" Width="984px" />

    </div>
 
    <div class="content">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999"  
            BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"  
            ForeColor="Black" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"  
            OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" CellPadding="4" Height="409px" Width="684px">  
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />  
            <SelectorStyle BackColor="#CCCCCC" />  
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />  
            <OtherMonthDayStyle ForeColor="#808080" />  
            <NextPrevStyle VerticalAlign="Bottom" />  
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Height="7px" />  
            <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>  
        <br />
        <asp:Label ID="LabelAction" runat="server"></asp:Label>
    </div>
     
    <div class="sidebar">
        <div class="vertical-menu">
  
     <a href="https://localhost:44343/UserEntryTeacher.aspx">Home</a>
  <a href="https://localhost:44343/ResetPasswordTeachers.aspx"> Reset Password</a>
<a href="https://localhost:44343/GradeBook.aspx"> Gradebook</a>
  <a href="https://localhost:44343/TeacherAnnouncementMaker.aspx"> Make Announcement</a>
   <a href="https://localhost:44343/EditMark.aspx"> Update Student Grades</a>
   <a href="https://localhost:44343/CalendarForTeachers.aspx" class="active"> Calendar</a>            



  

 
</div>
    </div>
     
</div>
        </form>
    
     
    </body>
</html>
