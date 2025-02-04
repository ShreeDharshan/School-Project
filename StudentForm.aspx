<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="CompSciIA.StudentForm" %>

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
            height: 506px;
            background-color: #0d7963;
            float: right;
            background-color: #f1f1f1;
        }
        .auto-style3 {
            margin-top: 18px;
        }
        .auto-style4 {
            height: 55px;
            margin-bottom: 15px;
            background-color: #ffff99;
            width: 977px;
        }
    </style>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    



    <header>

        <div class="wrap">
 
    <div class="auto-style4">
          <asp:Textbox runat="server" ID="txtUserName1" Height="46px" Width="968px" />

    </div>
            <div class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="221px" Width="688px" CssClass="auto-style3">
                <Columns>
                    <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                </Columns>
                       <Columns>
        <asp:TemplateField HeaderText="Grade" ItemStyle-Width="2%">
            <ItemTemplate>
                <asp:TextBox ID="grade" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
            </asp:GridView>
                <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserId] FROM [tblUsers] WHERE ([Groups] = @Groups2)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Student" Name="Groups2" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

                <br />
          
                  <asp:Label ID="UploadMessage" runat="server" visible="false" Text="You have added the students" ForeColor="Green"></asp:Label>
      
                <br />
                <br />
                <br />
                <br />
                <br />
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="OnUpdate1" />

    </div>
     
    <div class="auto-style1">
        <div class="vertical-menu">
  
            <a href="https://localhost:44343/UserEntryForAdmins.aspx">Home</a> 
  <a href="https://localhost:44343/ResetPasswordAdmin.aspx"> Reset Password</a>
   <a href="https://localhost:44343/StudentMarkPortal.aspx"> Manage admin access</a>
  <a href="https://localhost:44343/AnnouncementMaker.aspx"> Make Announcement</a>
  <a href="https://localhost:44343/TeacherForm.aspx"> Manage Teachers</a>
              <a href="https://localhost:44343/EditTeachers.aspx"> Edit Teachers</a>
  <a href="https://localhost:44343/StudentForm.aspx" class="active"> Manage Students</a>
             <a href="https://localhost:44343/EditStudents.aspx"> Edit Students</a>
  <a href="https://localhost:44343/CalendarForAdmins.aspx"> Calendar </a>
  <a href="https://localhost:44343/CalendarInput.aspx"> Edit Calendar</a>




 
</div>
    </div>
     
</div>
    
     </form>
    </body>
</html>
