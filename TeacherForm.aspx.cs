using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CompSciIA
{
    public partial class TeacherForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnUpdate(object sender, EventArgs e)
        {




            foreach (GridViewRow gvr in GridView1.Rows)
            {
                


                string Name = gvr.Cells[0].Text;
                TextBox tb = (TextBox)gvr.Cells[1].FindControl("grade");
                
                string Grade = tb.Text;

                
                string query = "Insert INTO TeacherGrade VALUES( @Teacher, @Grade)";
                string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@Teacher", Name);
                        cmd.Parameters.AddWithValue("@Grade", Grade);



                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            UploadMessage.Visible = true;
        }
       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}