<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageProductTypes.aspx.cs" Inherits="ProjektZaliczeniowy_sklepInternetowy.Pages.Management.ManageProductTypes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="addProductType">
        <p>
            Nazwa:</p>
        <p>
            <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Dodaj" />
        </p>
        <p>
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </p>
    </div>
</asp:Content>
