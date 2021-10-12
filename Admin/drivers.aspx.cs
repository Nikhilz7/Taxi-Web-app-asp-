using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taxi.Admin
{
	public partial class WebForm5 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void LinkButtonlo_Click1(object sender, EventArgs e)
		{
			Session["adminlog"] = false;
			Response.Redirect("login.aspx");
		}
	}
}