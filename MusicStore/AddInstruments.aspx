<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddInstruments.aspx.cs" Inherits="MusicStore.AddInstruments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 100%;
		}
		.auto-style2 {
			width: 151px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
				<tr>
					<td class="auto-style2">Name</td>
					<td>
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
            		</td>
				</tr>
				<tr>
					<td class="auto-style2">Type</td>
					<td>
            <asp:TextBox ID="typeTextBox2" runat="server"></asp:TextBox>
            		</td>
				</tr>
				<tr>
					<td class="auto-style2">Prize</td>
					<td>
            <asp:TextBox ID="prizeTextBox3" runat="server"></asp:TextBox>
            		</td>
				</tr>
				<tr>
					<td class="auto-style2">Quantity</td>
					<td>
            <asp:TextBox ID="quantityTextBox4" runat="server"></asp:TextBox>
            		</td>
				</tr>
				<tr>
					<td class="auto-style2">Description</td>
					<td>
            <asp:TextBox ID="descriptionTextBox5" runat="server"></asp:TextBox>
            		</td>
				</tr>
				<tr>
					<td class="auto-style2">Image</td>
					<td>
            <asp:FileUpload ID="imageUpload" runat="server" />
					</td>
				</tr>
			</table>
			<asp:Button ID="addToDBButton" runat="server" Text="Save" Height="34px" OnClick="Button1_Click" Width="78px" />
        	<asp:Button ID="backButton1" runat="server" Height="34px" OnClick="backButton1_Click" Text="Back" Width="78px" />
        </div>
    	
    	<p>
			&nbsp;</p>
    	
    </form>
</body>
</html>
