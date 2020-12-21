<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MusicStore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		.auto-style1 {
			text-align: center;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Music-Store</h1>
        </div>
    	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="267px" Width="859px" AllowSorting="True">
			<AlternatingRowStyle BackColor="PaleGoldenrod" />
			<Columns>
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
		<asp:Button ID="addButton" runat="server" Height="33px" OnClick="addButton_Click" Text="Add" Width="82px" />
    </form>
</body>
</html>
