<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
        <asp:GridView ID="GridView2"  runat="server" DataKeyNames="Id" DataSourceID="dsMaster">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            
            <SelectedRowStyle BackColor="#4b6c9e" ForeColor="White" Font-Bold="true" />
        </asp:GridView>
        <asp:SqlDataSource ID="dsMaster" runat="server" ConnectionString="<%$ ConnectionStrings:connstrDrucker %>" ProviderName="<%$ ConnectionStrings:connstrDrucker.ProviderName %>" SelectCommand="SELECT * FROM [Drucker]">

        </asp:SqlDataSource>
    </h2>
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2" 
        Height="349px" Width="914px">
        <asp:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <ContentTemplate>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel2">
            <ContentTemplate>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>test</asp:ListItem>
                    <asp:ListItem>test</asp:ListItem>
                    <asp:ListItem Value="test"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:CheckBoxList>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="ds02" DataKeyNames="Id" AllowPaging="True">
                    
                </asp:GridView>
                <asp:SqlDataSource ID="ds02" runat="server" ConnectionString="<%$ ConnectionStrings:wawiConnectionString %>" SelectCommand="SELECT * FROM [Auftrag] where DruckerId = @Gret">

                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView2" DefaultValue="1" Name="Gret"  PropertyName="SelectedValue" />
                        
                    </SelectParameters>

                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
</asp:Content>
