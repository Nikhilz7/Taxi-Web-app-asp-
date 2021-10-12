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
	public partial class signup : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (checkuserexists())
			{
				Response.Write("<script>alert('Email already Exists');</script>");
			}
			else
			{
				signupnewuser();
			}
		}
		bool checkuserexists()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * from drivers where member_id='" + email.Text.Trim() + "';", con);
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);
				if (dt.Rows.Count >= 1)
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
				return false;

			}
		}


		void signupnewuser()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
					con.Open();
				SqlCommand insqry = new SqlCommand("INSERT INTO drivers(d_email,d_name,d_password,phone,address,license,d_date_of_birth) VALUES(@email,@name,@password,@phone,@address,@license,@date_of_birth)", con);
				insqry.Parameters.AddWithValue("@name", name.Text.Trim());
				insqry.Parameters.AddWithValue("@email", email.Text.Trim());
				insqry.Parameters.AddWithValue("@phone", phone.Text.Trim());
				insqry.Parameters.AddWithValue("@license", TextBox4.Text);
				insqry.Parameters.AddWithValue("@password", TextBox1.Text.Trim());
				insqry.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
				insqry.Parameters.AddWithValue("@date_of_birth", TextBox2.Text.Trim());
				insqry.ExecuteNonQuery();
				con.Close();
				Response.Redirect("login.aspx");
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

	}
}