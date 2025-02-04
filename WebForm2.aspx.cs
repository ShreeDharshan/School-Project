using System;  
using System.Configuration;  
using System.Data;  
using System.Linq;  
using System.Web;  
using System.Web.Security;  
using System.Web.UI;  
using System.Web.UI.HtmlControls;  
using System.Web.UI.WebControls;  
using System.Web.UI.WebControls.WebParts;  
using System.Xml.Linq;  
using System.Collections;
using System.Data.SqlClient;

namespace CompSciIA
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        
            Hashtable schooleventsList;
        static string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shree\Desktop\CompSciIA\CompSciIA\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
            {

                schooleventsList = Getschoolevents();
                Calendar1.Caption = "Events Calendar 2022";
                Calendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
                Calendar1.NextPrevFormat = NextPrevFormat.ShortMonth;
                Calendar1.TitleFormat = TitleFormat.Month;
                Calendar1.ShowGridLines = true;
                Calendar1.DayStyle.Height = new Unit(50);
                Calendar1.DayStyle.Width = new Unit(150);
                Calendar1.DayStyle.HorizontalAlign = HorizontalAlign.Center;
                Calendar1.DayStyle.VerticalAlign = VerticalAlign.Middle;
            Calendar1.DayStyle.BackColor= System.Drawing.Color.AliceBlue; 
            Calendar1.OtherMonthDayStyle.BackColor = System.Drawing.Color.AliceBlue;
            }

            private Hashtable Getschoolevents()
            {
                Hashtable schoolevents = new Hashtable();

                string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();



                string query = "SELECT * FROM CalendarTable";
                SqlCommand sqlCmd = new SqlCommand(query, con);
               
                using (SqlDataReader reader = sqlCmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        DateTime _date;
                        string day = "";

                       

                        string x = reader["EventDate"].ToString();
                        _date = DateTime.Parse(x);
                        day = _date.ToString("dd-MM-yyyy");
                        schoolevents[day] = reader["CalendarText"].ToString(); ;
                        





                    }
                }
            }
            return schoolevents;
        }

            protected void Calendar1_SelectionChanged(object sender, EventArgs e)
            {
                LabelAction.Text = "Date changed to :" + Calendar1.SelectedDate.ToShortDateString();
            }

            protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
            {
                LabelAction.Text = "Month changed to :" + e.NewDate.ToShortDateString();
            }

            protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
            {

                if (schooleventsList[e.Day.Date.ToShortDateString()] != null)
                {
                    Literal literal1 = new Literal();
                    literal1.Text = "<br/>";
                    e.Cell.Controls.Add(literal1);
                    Label label1 = new Label();
                    label1.Text = (string)schooleventsList[e.Day.Date.ToShortDateString()];
                    label1.Font.Size = new FontUnit(FontSize.Small);
                    e.Cell.Controls.Add(label1);

                }
            }

        }
    }