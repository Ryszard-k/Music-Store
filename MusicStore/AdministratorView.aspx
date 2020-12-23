<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministratorView.aspx.cs" Inherits="MusicStore.AdministratorView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		.auto-style1 {
			margin-left: 23px;
		}
		.auto-style2 {
			margin-left: 29px;
		}
		.auto-style3 {
			margin-left: 59px;
		}
		.auto-style4 {
			margin-left: 30px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	UserName<asp:TextBox ID="userNameTextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
			<br />
			Password<asp:TextBox ID="passwordTextBox2" runat="server" CssClass="auto-style2"></asp:TextBox>
			<br />
			Role<asp:TextBox ID="roleTextBox3" runat="server" CssClass="auto-style3"></asp:TextBox>
			<br />
        </div>
    	<p>
			<asp:Button ID="createUserButton1" runat="server" OnClick="createUserButton1_Click" Text="Create user" />
			<asp:Button ID="deleteUserButton1" runat="server" CssClass="auto-style4" Text="Delete user" />
			<asp:Button ID="updateUserButton1" runat="server" CssClass="auto-style4" Text="Update user" />
		</p>
	<div>

		<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="150px" Width="589px">
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
				<asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
				<asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
				<asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

	</div>
    </form>
	</body>
</html>
