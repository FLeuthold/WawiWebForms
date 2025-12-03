<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WebApplication1.Account.ForgotPassword" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <p>Passwort vergessen</p>


    <p>
        <asp:Label ID="lblEmail" runat="server" Text="E-Mail-Adresse:" />
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:Button ID="btnReset" runat="server" Text="Passwort zurücksetzen" OnClick="btnReset_Click" />
        <asp:Label ID="lblMessage" runat="server" />
    </p>


    </asp:Content>