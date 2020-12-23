<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeView.aspx.cs" Inherits="MusicStore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		.auto-style1 {
			text-align: center;
		}
		.auto-style2 {
			width: 99%;
		}
		.auto-style3 {
			width: 48px;
		}
		.auto-style4 {
			width: 151px;
		}
		.auto-style5 {
			width: 53px;
		}
		.auto-style6 {
			width: 209px;
		}
		.auto-style7 {
			width: 247px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Music-Store</h1>
        </div>
		<div>
				<asp:Button ID="addButton" runat="server" Height="33px" OnClick="addButton_Click" Text="Add" Width="82px" />
				<asp:Button ID="deleteButton" runat="server" Height="33px" OnClick="deleteButton_Click" Text="Delete" Width="82px" />
				<asp:Button ID="updateButton" runat="server" Height="33px" OnClick="updateButton_Click" Text="Update" Width="82px" />
				<br />
		</div>
		<div>

			<table class="auto-style2">
				<tr>
					<td class="auto-style3">Name</td>
					<td class="auto-style4">
						<asp:TextBox ID="nameUpdateTextBox" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style5">Prize</td>
					<td class="auto-style6">
						<asp:TextBox ID="prizeUpdateTextBox" runat="server"></asp:TextBox>
						</td>
					<td class="auto-style6">
						Description</td>
					<td class="auto-style7">
						<asp:TextBox ID="descriptionUpdateTextBox" runat="server"></asp:TextBox>
					</td>
					<td rowspan="2">
						<asp:Button ID="saveButton" runat="server" Height="49px" Text="Save" Width="75px" OnClick="saveButton_Click" />
					</td>
				</tr>
				<tr>
					<td class="auto-style3">Type</td>
					<td class="auto-style4">
						<asp:TextBox ID="typeUpdateTextBox" runat="server"></asp:TextBox>
					</td>
					<td class="auto-style5">Quantity</td>
					<td class="auto-style6">
						<asp:TextBox ID="quantityUpdateTextBox" runat="server"></asp:TextBox>
						</td>
					<td class="auto-style6">
						&nbsp;</td>
					<td class="auto-style7">
						&nbsp;</td>
				</tr>
			</table>

		</div>
    	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="129px" Width="856px" AllowSorting="True" AllowPaging="True">
			<AlternatingRowStyle BackColor="PaleGoldenrod" />
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
				<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
				<asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
				<asp:BoundField DataField="Prize" HeaderText="Prize" SortExpression="Prize" />
				<asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
				<asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
			</Columns>
			<FooterStyle BackColor="Tan" />
			<HeaderStyle BackColor="Tan" Font-Bold="True" />
			<PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
			<SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
			<SortedAscendingCellStyle BackColor="#FAFAE7" />
			<SortedAscendingHeaderStyle BackColor="#DAC09E" />
			<SortedDescendingCellStyle BackColor="#E1DB9C" />
			<SortedDescendingHeaderStyle BackColor="#C2A47B" />
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Instruments]"></asp:SqlDataSource>
    </form>
</body>
</html>
