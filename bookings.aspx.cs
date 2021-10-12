using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace taxi
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				GetData();
			}
			//SqlDataReader reader = exread.ExecuteReader();
			//GridView1.DataSource = reader;
			//GridView1.DataBind();
		}
		
		private void GetData()
		{
			try
			{
				//string sqlread = "select * from trips where email={}";
				SqlDataReader dr;
				using (SqlConnection con1 = new SqlConnection(strcon))
				{
					con1.Open();
					var mail = Session["email"];
					using (SqlCommand cmd = new SqlCommand($"select * from trips where email='{mail}'", con1))
					{
						dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
						if (dr.Read())
						{
							date.Text = dr["date"].ToString();
							pick.Text = dr["pick_up"].ToString();
							carname.Text = dr["car_type"].ToString();
							drop.Text = dr["drop_off"].ToString();
							status.Text = dr["status"].ToString();
							fare.Text = dr["fare"].ToString();

						}
					}
				}
				dr.Close();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		protected void pay_Click(object sender, EventArgs e)
		{
			MailAddress addressFrom = new MailAddress("1my19mca06@gmail.com","Nikhil Umesh");
			MailAddress addressTo = new MailAddress(Session["email"].ToString());
			MailMessage message = new MailMessage(addressFrom, addressTo);
			//message.Date = DateTime.Now;
			message.Subject = "Sending Email with HTML Body";
			string htmlString = "Dear User this is an invoice ";
			
			message.Body= htmlString;
			SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
			NetworkCredential basicCredential1 = new
			NetworkCredential("1my19mca06@gmail.com", "Who@mca06");
			client.EnableSsl = true;
			client.UseDefaultCredentials = false;
			client.Credentials = basicCredential1;
			try
			{
				client.Send(message);
			}

			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}

			Response.Write("<script>alert('An email has been sent to your mail id');</script>");

		}
	}
}