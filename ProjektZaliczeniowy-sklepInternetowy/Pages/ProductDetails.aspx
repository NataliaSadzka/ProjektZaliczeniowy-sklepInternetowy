<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="ProjektZaliczeniowy_sklepInternetowy.Pages.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Styles/Style.css" rel="stylesheet" />
   <table style="height: 452px; width: 950px">

      <tr>
         <td rowspan="7">
            <asp:Image ID="imgProduct" runat="server" CssClass="detailsImage"/>
         </td>
         <td>
            <h2>
               <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
            </h2>
            <hr/>
         </td>
      </tr>

      <tr>
         <td>
            <asp:Label ID="lblDescription" runat="server" CssClass="detailsDescription"></asp:Label>
         </td>
      </tr>

      <tr>
          <td>
             <asp:Label ID="lblPrice" runat="server" CssClass="detailsPrice"></asp:Label>
          </td>
      </tr>

      <tr>
         <td>
            Wybierz ilość : 
            <asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList>
         </td>
         <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
      </tr>

      <tr>
         <td>
            <asp:Button ID="btnAdd" runat="server" CssClass="button" OnClick="btnAdd_Click" Text="Dodaj produkt" />
         </td>
      </tr>

      <tr>
         <td>
            Numer Produktu: 
            <asp:Label ID="lblItemNr" runat="server" Text="Label"></asp:Label>
         </td>
      </tr>

      <tr>
         <td>
            <asp:Label ID="Label1" runat="server" Text="Dostępny"></asp:Label>
         </td>
      </tr>

   </table>
</asp:Content>