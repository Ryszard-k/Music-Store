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
	public partial class Default : System.Web.UI.Page
	{
		String deleteId = "pusto";
		SqlConnection con2 = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security = True");
		protected void Page_Load(object sender, EventArgs e)
		{
			if (con2.State == ConnectionState.Open)
			{
				con2.Close();
			}
			con2.Open();
		}

		protected void addButton_Click(object sender, EventArgs e)
		{
			Response.Redirect("~/AddInstruments.aspx");
		}

		protected void deleteButton_Click(object sender, EventArgs e)
		{
			SqlCommand cmd = con2.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "delete from Instruments where Id='" +GridView1.SelectedRow.Cells[1].Text + "'";
			cmd.ExecuteNonQuery();
			Response.Redirect("~/Default.aspx");

		}
	}
}