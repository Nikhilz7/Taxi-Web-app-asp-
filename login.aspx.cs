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
	public partial class login : System.Web.UI.Page
	{
		
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		string email;
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (checkuserexists())
			{

				//Response.Write("<script language=javascript>alert('Logged as ')</script>");
				Session["email"] = email;
				//Response.Write("<script language=javascript>alert('" + email + "');</script>");
				Response.Redirect("index.aspx");
			}
			else
			{
				Session["email"] = "";
				Response.Write("<script language=javascript>alert('Invalid Credentials')</script>");
			}
				
		}
		bool checkuserexists()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
					con.Open();
				SqlCommand usr = new SqlCommand("SELECT * FROM customers WHERE email='" + TextBox1.Text.Trim() + "'AND password='"+TextBox2.Text.Trim()+"';", con);
				SqlDataReader dr = usr.ExecuteReader();
				if (dr.HasRows)
				{
					while (dr.Read())
					{
						email = dr.GetValue(0).ToString();
						return true;
					}
				}
				else
				{
					return false;
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
			finally
			{
				//con.Close();
			}
			return false;
		}
	}
}