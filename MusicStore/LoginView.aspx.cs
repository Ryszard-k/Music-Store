using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace MusicStore
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		private bool AuthenticateUser(string username, string password)
		{
			string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
			using (SqlConnection con = new SqlConnection(CS))
			{
				SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
				cmd.CommandType = CommandType.StoredProcedure;

				string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5");

				SqlParameter paramUsername = new SqlParameter("@UserName", username);
				SqlParameter paramPassword = new SqlParameter("@Password", EncryptedPassword);

				cmd.Parameters.Add(paramUsername);
				cmd.Parameters.Add(paramPassword);

				con.Open();
				int ReturnCode = (int)cmd.ExecuteScalar();
				return ReturnCode == 1;
			}
		}


		protected void Button1_Click(object sender, EventArgs e)
		{
			if (AuthenticateUser(userNameTextBox1.Text, passwordTextBox2.Text))
			{
				string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
				using (SqlConnection con = new SqlConnection(CS))
					//if ()
				Response.Redirect("~/AdministratorView.aspx");
			}
			else
			{
				validLabel1.Visible = true;
			}
		}
	}
}