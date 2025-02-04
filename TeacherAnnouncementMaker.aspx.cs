using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;


namespace CompSciIA
{

    public partial class TeacherAnnouncementMaker : System.Web.UI.Page
    {
        String filename = "";
        static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shree\Desktop\CompSciIA\CompSciIA\App_Data\Database1.mdf;Integrated Security=True";



        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void onfileupload(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                filename = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(FileUpload1.FileName));


                //  Label1.Text = "Image Uploaded";
                //Label1.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                filename = "";
                // Label1.Text = "Please Select your file";
                // Label1.ForeColor = System.Drawing.Color.Red;
            }


            string AnnouncmentText = Announcementtxt.Text;
            string AnnouncmentImage = filename;
            string AnnouncementDate = PostDate.Value;
            int sortorderval = Int32.Parse(Sort.Value);
            string query = "INSERT INTO AnnouncementsMain VALUES (@AnnouncmentText,@AnnouncmentImage, @AnnouncementDate, @SortOrder)";
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@AnnouncmentText", AnnouncmentText);
                    cmd.Parameters.AddWithValue("@AnnouncmentImage", AnnouncmentImage);
                    cmd.Parameters.AddWithValue("@AnnouncementDate", AnnouncementDate);
                    cmd.Parameters.AddWithValue("@SortOrder", sortorderval);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Announcementtxt.Text = "";
            filename = "";
            PostDate.Value = "";
            Sort.Value = "";

            UploadMessage.Visible = true;


        }

        protected void Announcementtxt_TextChanged(object sender, EventArgs e)
        {

        }


        // AnnouncmentText
        // AnnouncmentImage
        // AnnouncementDate

    }



}