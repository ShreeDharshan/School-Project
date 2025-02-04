<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GradeBook.aspx.cs" Inherits="CompSciIA.GradeBook" %>

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
            width: 1393px;
            margin: 0 auto;
            height: 743px;
        }
        .auto-style2 {
            width: 1091px;
            height: 450px;
            background-color: #0d7963;
            float: right;
            background-color: #f1f1f1;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 270px;
            height: 443px;
            background-color: #ffff99;
            float: left;
        }
    </style>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Student] FROM [StudentGrade] WHERE ([Grade] = @Grade)">
                <SelectParameters>
                    <asp:SessionParameter Name="Grade" SessionField="classteacher" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />

        </div>




    <header>

        <div class="auto-style1">
 
    <div class="header">
          <asp:Textbox runat="server" ID="txtUserName3" Height="53px" Width="984px" />

    </div>
 
    <div class="auto-style2">
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="272px" Width="175px">
                <Columns>
                    <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
                </Columns>
    
                 <Columns>
        <asp:TemplateField HeaderText="Math" ItemStyle-Width="2%">
            <ItemTemplate>
                <asp:TextBox ID="Math" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                 <Columns>
        <asp:TemplateField HeaderText="History" ItemStyle-Width="2%">
            <ItemTemplate>
                <asp:TextBox ID="History" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                 <Columns>
        <asp:TemplateField HeaderText="English" ItemStyle-Width="2%">
            <ItemTemplate>
                <asp:TextBox ID="English" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                 <Columns>
        <asp:TemplateField HeaderText="Science" ItemStyle-Width="2%">
            <ItemTemplate>
                <asp:TextBox ID="Science" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                 <Columns>
        <asp:TemplateField HeaderText="Language" ItemStyle-Width="2%">
            <ItemTemplate>
                <asp:TextBox ID="Language" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                 <Columns>
        <asp:TemplateField HeaderText="Comments" ItemStyle-Width="2%">
            <ItemTemplate>
                <asp:TextBox ID="Comments" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Upload for term" OnClick="OnFinalise" />
    </div>
     
    <div class="auto-style3">
        <div class="vertical-menu">

  <a href="https://localhost:44343/UserEntryTeacher.aspx">Home</a>
  <a href="https://localhost:44343/ResetPasswordTeachers.aspx"> Reset Password</a>
<a href="https://localhost:44343/GradeBook.aspx" class="active"> Gradebook</a>
  <a href="https://localhost:44343/TeacherAnnouncementMaker.aspx"> Make Announcement</a>
   <a href="https://localhost:44343/EditMark.aspx"> Update Student Grades</a>
            <a href="https://localhost:44343/CalendarForTeachers.aspx"> Calendar</a>            




</div>
    </div>
     
</div>
        </form>
    
     
    </body>
    
</html>
