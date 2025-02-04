using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CompSciIA
{
    public partial class CalendarInput : System.Web.UI.Page
    {
        static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shree\Desktop\CompSciIA\CompSciIA\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void oneventmade(object sender, EventArgs e)

        {
            string EventDate = PostDate.Value;
            string EventText = Eventtxt.Text;
            string query = "INSERT INTO CalendarTable VALUES(@CalendarText, @EventDate)";

            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@EventDate", EventDate);
                    cmd.Parameters.AddWithValue("@CalendarText", EventText);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
            UploadMessage.Visible = true;

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Eventtxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Eventtxt_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}