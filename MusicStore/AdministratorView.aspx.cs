using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MusicStore
{
	public partial class AdministratorView : System.Web.UI.Page
	{
		SqlConnection con2 = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security = True");

		protected void Page_Load(object sender, EventArgs e)
		{
			if (con2.State == ConnectionState.Open)
			{
				con2.Close();
			}
			con2.Open();
		}

		protected void createUserButton1_Click(object sender, EventArgs e)
		{
			SqlCommand cmd = con2.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "insert into Users values('" + userNameTextBox1.Text + "','" + passwordTextBox2.Text + "','" + roleTextBox3.Text + "')";
			cmd.ExecuteNonQuery();
			Response.Redirect("~/AdministratorView.aspx");
		}
	}
}