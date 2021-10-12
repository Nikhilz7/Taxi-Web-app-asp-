using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taxi
{
	public partial class Site1 : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			try
			{
				if (Session["email"].Equals(""))
				{
					//logout
					bookingslink.Visible = false;
					LinkButton1.Visible = false;
					loginlink.Visible = true;
					signuplink.Visible = true;
				}
				else
				{
					//logged in
					bookingslink.Visible = true;
					LinkButton1.Visible = true;
					loginlink.Visible = false;
					signuplink.Visible = false;
				}
			}
			catch (Exception ex)
			{

			}
		}
		protected void logout(object sender, EventArgs e)
		{
			Session["email"] = "";
			Response.Redirect("index.aspx");
		}
	}
}