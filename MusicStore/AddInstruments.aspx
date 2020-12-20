<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddInstruments.aspx.cs" Inherits="MusicStore.AddInstruments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
            <asp:TextBox ID="prizeTextBox3" runat="server"></asp:TextBox>
            <asp:TextBox ID="quantityTextBox4" runat="server"></asp:TextBox>
            <asp:TextBox ID="descriptionTextBox5" runat="server"></asp:TextBox>
            <asp:TextBox ID="typeTextBox2" runat="server"></asp:TextBox>
            <asp:FileUpload ID="FileUpload1" runat="server" />
			<asp:Button ID="Button1" runat="server" Text="Button" />
			<asp:Button ID="Button2" runat="server" Text="Button" />
        </div>
    	
    </form>
</body>
</html>
