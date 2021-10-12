using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taxi.Driver
{
	public partial class Site1 : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if ((string)Session["d_email"] == "")
			{

				//Response.Write("<script language=javascript>alert('logged" + Session["adminlog"] + "');</script>");
				Response.Redirect("login.aspx");
			}
		}
	}
}