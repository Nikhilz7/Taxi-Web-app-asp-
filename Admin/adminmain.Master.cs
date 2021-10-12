using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taxi.Admin
{
	public partial class adminmain : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["adminlog"] is false)
			{

				//Response.Write("<script language=javascript>alert('logged" + Session["adminlog"] + "');</script>");
				Response.Redirect("login.aspx");
			}
		}
	}
}