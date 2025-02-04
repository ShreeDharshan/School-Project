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
    public partial class GradeBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnFinalise(object sender, EventArgs e)
        {




            foreach (GridViewRow gvr in GridView1.Rows)
            {



                string Name = gvr.Cells[0].Text;
                TextBox Ma= (TextBox)gvr.Cells[1].FindControl("Math");
                TextBox Hi = (TextBox)gvr.Cells[2].FindControl("History");
                TextBox En = (TextBox)gvr.Cells[3].FindControl("English");
                TextBox Sc = (TextBox)gvr.Cells[4].FindControl("Science");
                TextBox La = (TextBox)gvr.Cells[5].FindControl("Language");
                TextBox Co = (TextBox)gvr.Cells[6].FindControl("Comments");

                string Math = Ma.Text;
                string History = Hi.Text;
                string English = En.Text;
                string Science = Sc.Text;
                string Language = La.Text;
                string Comments = Co.Text;

                string Grade = Session["classteacher"].ToString();

                string query = "INSERT INTO StudentDetails VALUES( @Name,@Grade, @Math, @History, @English, @Science, @Language, @Comments)";
                string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@Name", Name);
                        cmd.Parameters.AddWithValue("@Grade", Grade);
                        cmd.Parameters.AddWithValue("@Math", Math);
                        cmd.Parameters.AddWithValue("@History", History);
                        cmd.Parameters.AddWithValue("@English", English);
                        cmd.Parameters.AddWithValue("@Science", Science);
                        cmd.Parameters.AddWithValue("@Language", Language);
                        cmd.Parameters.AddWithValue("@Comments", Comments);



                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}