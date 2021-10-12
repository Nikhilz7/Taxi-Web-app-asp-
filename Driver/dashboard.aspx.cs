using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace taxi.Driver
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
			try 
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand usr = new SqlCommand("SELECT * FROM drivers WHERE d_name='" + Session["d_name"] + "';", con);
                SqlDataReader dr = usr.ExecuteReader();
                var stats = "";

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        stats = (string)dr["status"];
                    }
                }
                dr.Close();
                con.Close();
				if (stats== "OnTrip")
				{
                    GridView1.Visible = false;
                    Label4.Text = "None";
                }
            }
			catch (Exception ax)
			{
                Response.Write("<script>alert('" + ax.Message + "');</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            // two tables 1=trips and 2=drivers selecting
            var selected_cutomer_email = GridView1.SelectedRow.Cells[2].Text;
            Label4.Text = "Selected " + selected_cutomer_email + " as next Passenger ";
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand usr = new SqlCommand("SELECT * FROM drivers WHERE d_name='" + Session["d_name"] + "';", con);
                SqlDataReader dr = usr.ExecuteReader();
                var dname = Session["d_name"];
                string dphone = "";
                int ifare = 250;

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        dphone = (string)dr["phone"];
                    }
                }
                dr.Close();
                SqlCommand insqry = new SqlCommand("UPDATE trips SET d_name=@name,d_phone=@phone,fare=@fare,status=@status WHERE email= @email", con); //adding selected customer select
                //SqlCommand insqry = new SqlCommand("UPDATE trips SET d_name=@name,d_phone=@phone,fare=@fare,status=@status) WHERE email= '" + selected_cutomer_email + "';", con); //adding selected customer select
                insqry.Parameters.AddWithValue("@name", dname);
                insqry.Parameters.AddWithValue("@email", selected_cutomer_email);
                insqry.Parameters.AddWithValue("@phone", dphone);
                insqry.Parameters.AddWithValue("@fare", ifare);
                insqry.Parameters.AddWithValue("@status", "Driver Assigned");

                insqry.ExecuteNonQuery();

                SqlCommand dupqry = new SqlCommand("UPDATE drivers SET status=@status WHERE d_name= @dname", con);
                dupqry.Parameters.AddWithValue("@status", "OnTrip");
                dupqry.Parameters.AddWithValue("@dname", Session["d_name"]);

                dupqry.ExecuteNonQuery();

                con.Close();
                Response.Redirect("trips.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Session["d_email"] = "";
            Response.Redirect("login.aspx");
        }


    }
}