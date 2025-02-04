using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CompSciIA
{
    public partial class UserEntryTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                txtUserName3.Text = "Welcome Teacher " + Session["username"].ToString();
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