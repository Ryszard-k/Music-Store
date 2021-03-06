﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

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

			string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(passwordTextBox2.Text, "MD5");

			cmd.CommandText = "insert into Users values('" + userNameTextBox1.Text + "','" + hashedPassword + "','" + roleTextBox3.Text + "')";
			cmd.ExecuteNonQuery();
			Response.Redirect("~/AdministratorView.aspx");
		}

		protected void deleteUserButton1_Click(object sender, EventArgs e)
		{
			SqlCommand cmd = con2.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "delete from Users where Id='" + administratorGridView1.SelectedRow.Cells[1].Text + "'";
			cmd.ExecuteNonQuery();
			Response.Redirect("~/AdministratorView.aspx");
		}

		protected void updateUserButton1_Click(object sender, EventArgs e)
		{
			userNameTextBox1.Text = administratorGridView1.SelectedRow.Cells[2].Text;
			passwordTextBox2.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(administratorGridView1.SelectedRow.Cells[3].Text, "MD5");;
			roleTextBox3.Text = administratorGridView1.SelectedRow.Cells[4].Text;
		}

		protected void saveChangesButton1_Click(object sender, EventArgs e)
		{
			SqlCommand cmd = con2.CreateCommand();
			cmd.CommandType = CommandType.Text;
			cmd.CommandText = "update Users set UserName='" + userNameTextBox1.Text + "', Password='" +
				FormsAuthentication.HashPasswordForStoringInConfigFile(passwordTextBox2.Text, "MD5") + "', Role='" + roleTextBox3.Text + "'where Id='" + administratorGridView1.SelectedRow.Cells[1].Text + "'";
			cmd.ExecuteNonQuery();
			Response.Redirect("~/AdministratorView.aspx");
		}
	}
}