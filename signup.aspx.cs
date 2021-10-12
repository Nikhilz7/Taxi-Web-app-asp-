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
	public partial class signup : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void hv_Click(object sender, EventArgs e)				//signup
		{
			if (checkuserexists())

				Response.Write("<script>alert('Email already Exists');</script>");
			else
				signupnewuser();
		}

		bool checkuserexists()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
					con.Open();
				SqlCommand usr = new SqlCommand("SELECT * FROM customers WHERE email='" + TextBox2.Text.Trim() + "';", con);
				SqlDataAdapter da = new SqlDataAdapter(usr);
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

				con.Close();
				Response.Write("login.aspx");
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
			return false;
		}
			

		void signupnewuser()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
					con.Open();
				SqlCommand insqry = new SqlCommand("INSERT INTO customers(email,phone,name,password,address,date_of_birth) VALUES(@email,@phone,@name,@password,@address,@date_of_birth)", con);
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
	}
}