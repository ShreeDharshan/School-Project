<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherForm.aspx.cs" Inherits="CompSciIA.TeacherForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />

        </div>
</body>
</html>
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
          width: 272px;
          height: 504px;
          background-color: #ffff99;
          float: left;
      }
      .auto-style2 {
          width: 690px;
          height: 501px;
          background-color: #0d7963;
          float: right;
          background-color: #f1f1f1;
      }
  </style>

</head>
<body>

    <header>

        <div class="wrap">
 
    <div class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="310px" Width="687px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserId] FROM [tblUsers] WHERE ([Groups] = @Groups)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Teacher" Name="Groups" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="OnUpdate" />
            <br />
            <br />
          
                  <asp:Label ID="UploadMessage" runat="server" visible="false" Text="You have added the teachers" ForeColor="Green"></asp:Label>
      
    </div>
     
    <div class="auto-style1">
        <div class="vertical-menu">
  
 
  <a href="https://localhost:44343/UserEntryForAdmins.aspx">Home</a> 
  <a href="#">About our school</a>
  <a href="https://localhost:44343/ResetPassword.aspx"> Reset Password</a>
   <a href="https://localhost:44343/StudentMarkPortal.aspx"> Manage admin access</a>
  <a href="https://localhost:44343/AnnouncementMaker.aspx"> Make Announcement</a>
  <a href="https://localhost:44343/TeacherForm.aspx" class="active"> Manage Teachers</a>
              <a href="https://localhost:44343/EditTeachers.aspx"> Edit Teachers</a>
  <a href="https://localhost:44343/StudentForm.aspx"> Manage Students</a>
             <a href="https://localhost:44343/EditStudents.aspx"> Edit Students</a>
  <a href="https://localhost:44343/CalendarForAdmins.aspx"> Calendar </a>
  <a href="https://localhost:44343/CalendarInput.aspx"> Edit Calendar</a>
  

 
</div>
    </div>
     
</div>
        
  
    </body>
    </form>
    </form>
</html>
