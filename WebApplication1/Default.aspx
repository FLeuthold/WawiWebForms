<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        About
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </h2>
    <p>
        Put content<asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Button ID="Button1" runat="server" Text="Button1" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Button ID="Button2" runat="server" Text="Button2" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Button ID="Button3" runat="server" Text="Button3" />
            </asp:View>
        </asp:MultiView>
        tent here.
    </p>
</asp:Content>
