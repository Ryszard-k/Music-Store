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
			<asp:Button ID="deleteUserButton1" runat="server" CssClass="auto-style4" OnClick="deleteUserButton1_Click" Text="Delete User" />
			<asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="Button" />
		</p>
	<div>

		<asp:GridView ID="administratorGridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="150px" Width="589px">
			<AlternatingRowStyle BackColor="#CCCCCC" />
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
				<asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
				<asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
				<asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
			</Columns>
			<FooterStyle BackColor="#CCCCCC" />
			<HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
			<SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
			<SortedAscendingCellStyle BackColor="#F1F1F1" />
			<SortedAscendingHeaderStyle BackColor="#808080" />
			<SortedDescendingCellStyle BackColor="#CAC9C9" />
			<SortedDescendingHeaderStyle BackColor="#383838" />
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

	</div>
    </form>
	</body>
</html>
