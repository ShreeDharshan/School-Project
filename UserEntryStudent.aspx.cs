using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CompSciIA
{
    public partial class UserEntryStudent : System.Web.UI.Page
{


        protected void Page_Load(object sender, EventArgs e)
       
    {
        try
        {
               
                txtUserName2.Text = "Welcome Student " + Session["username"].ToString();
        }
        catch (Exception ex) 
        {

        }

    }
        protected void OnLogout(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}