<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjektZaliczeniowy_sklepInternetowy.Pages.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Literal ID="litStatus" runat="server"></asp:Literal>
</p>
    <div id ="login-form">
<p>
    <asp:TextBox ID="txtUserName" runat="server" CssClass="inputs" placeholder="Login"></asp:TextBox>
</p>

<p>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="inputs" placeholder="Hasło" TextMode="Password"></asp:TextBox>
</p>
<p>
    <br />
    <asp:Button ID="btnLogin" runat="server" CssClass="button" OnClick="btnLogin_Click" Text="Zaloguj" />
</p>
        </div>
</asp:Content>
