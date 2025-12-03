<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WebApplication1.Account.ForgotPassword" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Passwort vergessen</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblEmail" runat="server" Text="E-Mail-Adresse:" />
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:Button ID="btnReset" runat="server" Text="Passwort zurücksetzen" OnClick="btnReset_Click" />
        <asp:Label ID="lblMessage" runat="server" />
    </form>
</body>
</html>