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

		private bool AuthenticateUser(string username, string password, string role)
		{
			string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
			using (SqlConnection con = new SqlConnection(CS))
			{
				SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
				cmd.CommandType = CommandType.StoredProcedure;

				string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5");

				SqlParameter paramUsername = new SqlParameter("@UserName", username);
				SqlParameter paramPassword = new SqlParameter("@Password", EncryptedPassword);
				SqlParameter paramRole = new SqlParameter("@Role", role);

				cmd.Parameters.Add(paramUsername);
				cmd.Parameters.Add(paramPassword);
				cmd.Parameters.Add(paramRole);

				con.Open();
				int ReturnCode = (int)cmd.ExecuteScalar();
				return ReturnCode == 1;
			}
		}


		protected void Button1_Click(object sender, EventArgs e)
		{
			if (AuthenticateUser(userNameTextBox1.Text, passwordTextBox2.Text, roleTextBox1.Text))
			{
				switch (roleTextBox1.Text)
				{
					case "administrator":
						FormsAuthentication.SetAuthCookie(userNameTextBox1.Text, true);
						Response.Redirect("~/AdministratorView.aspx");
						break;

					case "employee":
						FormsAuthentication.SetAuthCookie(userNameTextBox1.Text, true);
						Response.Redirect("~/EmployeeView.aspx");
						break;

					default:
						Response.Redirect("~/LoginView.aspx");
						break;
				}
			}
			else
			{
				validLabel1.Visible = true;
			}
		}
	}
}