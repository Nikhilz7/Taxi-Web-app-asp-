using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taxi.Driver
{
	public partial class WebForm3 : System.Web.UI.Page
	{
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void LinkButton1_Click1(object sender, EventArgs e)
		{
			Session["d_email"] = "";
			Response.Redirect("login.aspx");
		}
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            // two tables 1=trips and 2=drivers selecting
            var selected_cutomer_email = GridView1.SelectedRow.Cells[2].Text;
            //Label4.Text = "Selected " + selected_cutomer_email + " as next Passenger ";
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();
                var dname = (string)Session["d_name"];
                SqlCommand insqry = new SqlCommand("UPDATE trips SET status=@status,fare=@fare WHERE d_name= @dname", con); 
                //adding selected customer select
                //SqlCommand insqry = new SqlCommand("UPDATE trips SET d_name=@name,d_phone=@phone,fare=@fare,status=@status) WHERE email= '" + selected_cutomer_email + "';", con); //adding selected customer select
                insqry.Parameters.AddWithValue("@status", "TripCompleted");
                insqry.Parameters.AddWithValue("@dname", dname);
                insqry.Parameters.AddWithValue("@fare", 350);

                insqry.ExecuteNonQuery();

                SqlCommand dupqry = new SqlCommand("UPDATE drivers SET status=@status WHERE d_name= @dname", con);
                dupqry.Parameters.AddWithValue("@status", "Available");
                dupqry.Parameters.AddWithValue("@dname", dname);

                dupqry.ExecuteNonQuery();

                con.Close();
                Response.Redirect("trips.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}