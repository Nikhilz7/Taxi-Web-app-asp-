using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taxi
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (Session["email"].Equals(""))
			{
				Response.Write("<script>alert('Please Login to make reservarion');</script>");
			}
			else
			{
				try
				{
					var email = Session["email"].ToString();
					//var time = TextBox5.Text.Trim().ToString("hh\\:mm");
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == ConnectionState.Closed)
						con.Open();
					SqlCommand insqry = new SqlCommand("INSERT INTO trips(date,time,email,pick_up,car_type,drop_off,status) VALUES (@date,@time,@email,@pick_up,@car_type,@drop_off,@status)", con);
					insqry.Parameters.AddWithValue("@date", TextBox4.Text.Trim());
					insqry.Parameters.AddWithValue("@time", TextBox5.Text.Trim());
					insqry.Parameters.AddWithValue("@email",email );
					insqry.Parameters.AddWithValue("@pick_up", DropDownList1.SelectedValue);
					insqry.Parameters.AddWithValue("@car_type", DropDownList3.SelectedValue);
					insqry.Parameters.AddWithValue("@drop_off", DropDownList2.SelectedValue);
					insqry.Parameters.AddWithValue("@status", "Pending");

					insqry.ExecuteNonQuery();
					con.Close();
					Response.Redirect("bookings.aspx");
				}
				catch (Exception ex)
				{
					Response.Write("<script>alert('" + ex.Message + "');</script>");
				}
			}
		}
	}
}