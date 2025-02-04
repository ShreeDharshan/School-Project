<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportCard.aspx.cs" Inherits="CompSciIA.ReportCard" %>

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
           margin-top: 22px;
       }
   </style>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <header>

            <div class="wrap">
 
                <div class="header">
          <asp:Textbox runat="server" ID="txtUserName2" Height="53px" Width="984px" />

    </div>
 
    <div class="content">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style1" Height="200px" Width="673px">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                    <asp:BoundField DataField="Math" HeaderText="Math" SortExpression="Math" />
                    <asp:BoundField DataField="History" HeaderText="History" SortExpression="History" />
                    <asp:BoundField DataField="English" HeaderText="English" SortExpression="English" />
                    <asp:BoundField DataField="Science" HeaderText="Science" SortExpression="Science" />
                    <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Grade], [Math], [History], [English], [Language], [Science], [Comments] FROM [StudentDetails] WHERE ([Name] = @Name)">
                <SelectParameters>
                    <asp:SessionParameter Name="Name" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
        </div>
        <br />
        <br />
        <br />
    </div>
     
    <div class="sidebar">
        <div class="vertical-menu">
 <a href="https://localhost:44343/ReportCard.aspx"> Home</a>
  <a href="https://localhost:44343/ReportCard.aspx" class="active">Grades For Term</a>
   <a href="https://localhost:44343/ResetPassword.aspx"> Reset Password</a>
  <a href="https://localhost:44343/WebForm2.aspx">School Calendar</a>



  

 
</div>
    </div>
     
</div>
        </form>
    
     
    </body>
    
</html>
