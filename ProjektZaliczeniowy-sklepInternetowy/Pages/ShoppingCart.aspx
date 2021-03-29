<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ProjektZaliczeniowy_sklepInternetowy.Pages.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlShoppingCart" runat="server">

        </asp:Panel>

    <table>
        <tr>
            <td><b>Kwota: </b></td>
            <td><asp:Literal ID="litTotal" runat="server" Text="" /></td>
        </tr>

        <tr>
            <td><b>Przesyłka: </b></td>
            <td>15zł</td>
        </tr>

        <tr>
            <td><b>Całkowita kwota: </b></td>
            <td><asp:Literal ID="litTotalAmount" runat="server" Text="" /></td>
        </tr>

        <tr>
            <td>
                <asp:LinkButton ID="lnkContinue" runat="server" PostBackUrl="~/Index.aspx" Text="Kontynuuj zakupy" />

                LUB

                <asp:Button ID="btnCheckOut" runat="server" PostBackUrl="~/Pages/Success.aspx" CssClass="button" Width="250px" Text="Przejdź do kasy" />
            </td>
        </tr>

    </table>
</asp:Content>
