<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="ProjektZaliczeniowy_sklepInternetowy.Pages.Management.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="addProduct">
    <p>
        Nazwa:</p>
    <p>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </p>
    <p>
        Typ:</p>
    <p>
        <asp:DropDownList ID="ddlType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopDBConnectionString %>" SelectCommand="SELECT * FROM [ProductTypes] ORDER BY [Name]"></asp:SqlDataSource>
    </p>
    <p>
        Cena:</p>
    <p>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    </p>
    <p>
        Zdjęcie:</p>
    <p>
        <asp:DropDownList ID="ddlImage" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        Opis:</p>
    <p>
        <asp:TextBox ID="txtDescription" runat="server" Height="113px" TextMode="MultiLine" Width="305px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Dodaj" />
    </p>
    <p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </p>
        </div>
</asp:Content>
