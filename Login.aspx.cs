using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CompSciIA
{
    public partial class WebForm1   : System.Web.UI.Page
    {
        static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shree\Desktop\CompSciIA\CompSciIA\App_Data\Database1.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

               
        }
       
        protected void btnLogin_Click (object sender, EventArgs e)

        {
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                string query1 = "SELECT * FROM TeacherGrade where Teacher='" + txtUserId.Text.Trim() + "'";
                SqlCommand sqlCmd1 = new SqlCommand(query1, con);

                using (SqlDataReader reader1 = sqlCmd1.ExecuteReader())
                {
                    if (reader1.Read())
                    {


                        Session["classteacher"] = reader1["Grade"];


                    }
                    
                }

                string query2 = "SELECT * FROM StudentGrade where Student='" + txtUserId.Text.Trim() + "'";
                SqlCommand sqlCmd2 = new SqlCommand(query2, con);

                using (SqlDataReader reader1 = sqlCmd1.ExecuteReader())
                {
                    if (reader1.Read())
                    {


                        Session["Grade"] = reader1["Grade"];


                    }

                }





                string query = "SELECT * FROM tblUsers WHERE UserId=@username AND Password=@password";
             
                SqlCommand sqlCmd = new SqlCommand(query, con);
               
                sqlCmd.Parameters.AddWithValue("@username", txtUserId.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                using (SqlDataReader reader = sqlCmd.ExecuteReader())
                {
                    if (reader.Read())
                    {


                        if (reader["Groups"].ToString() == "Student")
                        {
                            Session["username"] = txtUserId.Text.Trim();
                            Response.Redirect("UserEntryStudent.aspx");
                        }
                        else if (reader["Groups"].ToString() == "Teacher")
                        {

                            
                         Session["username"] = txtUserId.Text.Trim();
                          Response.Redirect("UserEntryTeacher.aspx");

                                
                            
                        }
                        else if (reader["Groups"].ToString() == "Admin")
                        {
                            Session["username"] = txtUserId.Text.Trim();
                            Response.Redirect("UserEntryForAdmins.aspx");
                        }
                    }
                    else { lblErrorMessage.Visible = true; }


                }
                con.Close();

            }

        }


    }
}