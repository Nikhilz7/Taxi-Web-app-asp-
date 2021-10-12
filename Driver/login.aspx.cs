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
	public partial class login : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			if (checkuserexists())
			{
				Session["driverlog"] = true;
				Session["d_email"] = username.Text.Trim();
				//Response.Write("<script>alert('logged as " + Session["d_name"]+ "');</script>");
				Response.Redirect("dashboard.aspx");

			}
			else
			{
				Session["driverlog"] = false;
				Response.Write("<script language=javascript>alert('Invalid Credentials')</script>");
			}
		}
		bool checkuserexists()
		{
			SqlConnection con = new SqlConnection(strcon);
			try
			{

				if (con.State == ConnectionState.Closed)
					con.Open();
				SqlCommand usr = new SqlCommand("SELECT * FROM drivers WHERE d_email='" + username.Text.Trim() + "'AND d_password='" + password.Text.Trim() + "';", con);
				SqlDataReader dr = usr.ExecuteReader();
				

				if (dr.HasRows)
				{
					while (dr.Read())
					{
						Session["d_name"] = (string)dr["d_name"];
						return true;
					}
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
			finally
			{
				con.Close();
			}
			return false;
		}
	}
}