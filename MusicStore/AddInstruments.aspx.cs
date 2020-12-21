using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MusicStore
{
	public partial class AddInstruments : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security = True");
		protected void Page_Load(object sender, EventArgs e)
		{
			if(con.State == ConnectionState.Open)
			{
				con.Close();
			}
			con.Open();
			
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlCommand cmd = con.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "insert into Instruments values('"+ nameTextBox.Text + "','"+ typeTextBox2.Text + "','"+ prizeTextBox3.Text + "','"+ quantityTextBox4.Text + "','"+ descriptionTextBox5.Text+ "','"+ imageUpload+ "')";
			cmd.ExecuteNonQuery();
		}
	}
}