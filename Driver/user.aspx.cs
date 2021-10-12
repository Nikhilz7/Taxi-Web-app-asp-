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
	public partial class WebForm2 : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
					con.Open();
				SqlCommand insqry = new SqlCommand("UPDATE drivers SET d_name=@name,d_email=@email,password=@password,phone=@phone,address=@address,license=@license,d_date_of_birth=@dob) WHERE d_name= '" + TextBox1.Text.Trim() + "';", con); //add session['drivername']
				insqry.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
				insqry.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
				insqry.Parameters.AddWithValue("@phone", TextBox3.Text.Trim());
				insqry.Parameters.AddWithValue("@password", TextBox4.Text.Trim());
				insqry.Parameters.AddWithValue("@address", TextBox7.Text.Trim());
				insqry.Parameters.AddWithValue("@date_of_birth", TextBox8.Text.Trim());

				insqry.ExecuteNonQuery();
				con.Close();
				Response.Redirect("login.aspx");
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