<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginView.aspx.cs" Inherits="MusicStore.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		.auto-style1 {
			margin-left: 34px;
		}
		.auto-style2 {
			margin-left: 44px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:Label ID="userNameLabel1" runat="server" Text="User Name"></asp:Label>
			<asp:TextBox ID="userNameTextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
        </div>
    	<asp:Label ID="passwordLabel2" runat="server" Text="Password"></asp:Label>
		<asp:TextBox ID="passwordTextBox2" runat="server" CssClass="auto-style2" TextMode="Password"></asp:TextBox>
		<br />
		<asp:Label ID="validLabel1" runat="server" ForeColor="Red" Text="Your username or password is invalid. Please try again." Visible="False"></asp:Label>
		<br />
		<p>
			<asp:Button ID="loginButton1" runat="server" OnClick="Button1_Click" Text="Login" />
		</p>
    </form>
</body>
</html>
