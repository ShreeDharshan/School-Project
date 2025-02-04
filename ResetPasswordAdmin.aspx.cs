using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CompSciIA
{
    public partial class ResetPasswordAdmin : System.Web.UI.Page
    {
        //static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shree\Desktop\CompSciIA\CompSciIA\App_Data\Database1.mdf;Integrated Security=True";
        static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shree\Desktop\CompSciIA\CompSciIA\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnchangepass_Click(object sender, EventArgs e)
        {
            Boolean datafound = false;
            lblmsg.Text = "";
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                string query1 = "select * from tblUsers where Password = '" + txtcurrentpass.Text + "' and UserId='" + Session["username"].ToString() + "'";
                SqlCommand sqlCmd1 = new SqlCommand(query1, con);

                using (SqlDataReader reader1 = sqlCmd1.ExecuteReader())
                {

                    if (reader1.Read())
                    {

                        datafound = true;

                    }

                    else
                    {

                        lblmsg.Text = "Invalid current password";
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                    }
                    reader1.Close();
                }

                con.Close();
            }

            if (datafound)
            {


                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE tblUsers SET Password='" + txtnewpass.Text + "' WHERE UserId='" + Session["username"].ToString() + "'"))
                    {

                        cmd.Parameters.AddWithValue("@Password", txtnewpass.Text);

                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

                // SQLAdapter = new SqlDataAdapter("update tblUsers set Password='" + txtnewpass.Text + "' where Username='" + Session["username"].ToString() + "'", SQLConn);

                lblmsg.Text = "Password changed successfully";
                lblmsg.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}