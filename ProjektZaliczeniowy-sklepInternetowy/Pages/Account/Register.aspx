<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjektZaliczeniowy_sklepInternetowy.Pages.Account.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Literal ID="litStatus" runat="server"></asp:Literal>
</p>

    <div id ="register-form">
<p>
    <asp:TextBox ID="txtUserName" runat="server" CssClass="inputs" placeholder="Login"></asp:TextBox>
</p>

<p>

    <asp:TextBox ID="txtPassword" runat="server" CssClass="inputs" placeholder="Hasło" TextMode="Password"></asp:TextBox>
</p>

<p>
    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="inputs" placeholder="Powierdź hasło" TextMode="Password"></asp:TextBox>
</p>
   
    <p>
    <asp:TextBox ID="txtFirstName" runat="server" CssClass="inputs" placeholder="Imię"></asp:TextBox>
</p>
    <p>
    <asp:TextBox ID="txtLastName" runat="server" CssClass="inputs" placeholder="Nazwisko"></asp:TextBox>
</p>
    <p>
    <asp:TextBox ID="txtAddress" runat="server" CssClass="inputs" placeholder="Adres"></asp:TextBox>
</p>
    <p>
    <asp:TextBox ID="txtPostalCode" runat="server" CssClass="inputs" placeholder="Kod pocztowy"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Zarejestruj" />
</p>
        </div>
</asp:Content>
