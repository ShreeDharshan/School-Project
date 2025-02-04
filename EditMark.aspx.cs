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
    public partial class EditMark : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }
        private void BindGrid()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
              
             string query="SELECT Name, Math, History, English, Science, Language, Comments FROM StudentDetails WHERE Grade ='"+ (string)Session["Grade"] +"'";

                using (SqlCommand cmd = new SqlCommand(query))
                {
                    // SELECT[Student] FROM[StudentGrade] WHERE([Grade] = @Grade)
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {

                       
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                      
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                         //   GridView1.DataSource = (DataTable)Session["Grade"];
                            GridView1.DataBind();
                        }
                    }
                }
            }

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();

        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];


             //   int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string Name = (row.Cells[0].Controls[0] as TextBox).Text;
                string Math = (row.Cells[1].Controls[0] as TextBox).Text;
                string History = (row.Cells[2].Controls[0] as TextBox).Text;
                string English = (row.Cells[3].Controls[0] as TextBox).Text;
                string Science = (row.Cells[4].Controls[0] as TextBox).Text;
                string Language = (row.Cells[5].Controls[0] as TextBox).Text;
                string Comments = (row.Cells[6].Controls[0] as TextBox).Text;



                string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE StudentDetails SET  Math = @Math, History = @History, English = @English, Science = @Science, Language = @Language WHERE Name = @Name"))
                    {

                       
                       
                        cmd.Parameters.AddWithValue("@Math", Math);
                        cmd.Parameters.AddWithValue("@History", History);
                        cmd.Parameters.AddWithValue("@English", English);
                        cmd.Parameters.AddWithValue("@Science", Science);
                        cmd.Parameters.AddWithValue("@Language", Language);
                        cmd.Parameters.AddWithValue("@Comments", Comments);
                        cmd.Parameters.AddWithValue("@Name", Name);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                GridView1.EditIndex = -1;
                this.BindGrid();

            }
            
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }
    }
}