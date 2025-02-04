

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CompSciIA.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
      <style>

        .wrapper1
        {
            height:100vh !important;
            display:flex;
            align-items:center;
            flex-direction:column;
            justify-content:center;
            width:100% !important;

            padding:20px;
            background-color:#f5f5f5 !important;
        }

        .logincontainer
        {
            border-radius:0px;
            background-color:#fff;
            width:90%; 
            max-width:450px;
            position:relative;
            padding:20px;
            border:1px white solid ;
            
        }
            .button {
            padding: 6px 40px;
            font-size: 24px;
            text-align: center;
            cursor: pointer;
            outline: none;
            color: #fff;
            width:100%;
            background-color: #ffd800;
            border: none;
            border-radius: 15px;
            box-shadow: 0 9px #999;
            align-content:center;
            }

         .button:hover 
          {background-color: #d89f2d}

       .button:active {
                  background-color: #3e8e41;
                  box-shadow: 0 5px #666;
              }

       .align-content-center 
       {
      display: block;
  margin-left: auto;
  margin-right: auto;
       }
  
          .form-control {}
  
          .auto-style1 {
              display: block;
              font-size: 1rem;
              font-weight: 400;
              line-height: 1.5;
              color: #495057;
              background-clip: padding-box;
              border-radius: .25rem;
              transition: none;
              border: 1px solid #ced4da;
              background-color: #fff;
          }
  
    </style>
</head>
<body>

 <form id="form1" runat="server">
        <div class="wrapper1">

            <div class="logincontainer">

                <h3>
                    
                    <img src="Pictures/download%20(1).png" class="align-content-center"/>
                </h3>

                <hr />

                <asp:TextBox runat="server" ID="txtUserId" placeholder="Enter Username" CssClass="auto-style1" Height="43px" Width="411px"/>
                <br />

                <asp:TextBox runat="server" ID="txtPassword" placeholder="Enter Password"  TextMode="Password" 
                    CssClass="auto-style1" Height="38px" Width="411px"/>
                <br />
                <asp:Label ID="lblErrorMessage" runat="server" visible="false" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
                 <asp:Button runat="server" ID="btnLogin" class="button" Text="Login" 
                     onclick="btnLogin_Click"/>
                <br />

            
                

                  </div>
                
                </div>
            

    </form>
</body>
</html>
