using Microsoft.AspNet.Identity;
using ProjektZaliczeniowy_sklepInternetowy.App_Code.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjektZaliczeniowy_sklepInternetowy.Pages
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //pobierz identyfikator aktualnie zalogowanego użytkownika i wyświetl pozycje w koszyku
            string userId = User.Identity.GetUserId();
            GetPurchasesInCart(userId);
        }

        private void GetPurchasesInCart(string userId)
        {
            CartModel model = new CartModel();
            int subTotal = 0;

            List<Cart> purchaseList = model.GetOrdersInCart(userId);
            CreateShopTable(purchaseList, out subTotal);

            //dodać sumy do strony internetowej
            //double vat = subTotal * 0.21;
            double totalAmount = subTotal + 15;

            //wyświetl wartości na stronie
            litTotal.Text = subTotal + "zł";
            //litVat.Text = vat + "zł";
            litTotalAmount.Text = totalAmount + "zł";

        }

        private void CreateShopTable(List<Cart> purchaseList, out int subTotal)
        {
            subTotal = new int();

            ProductModel model = new ProductModel();

            foreach(Cart cart in purchaseList)
            {
                Product product = model.GetProduct(cart.ProductID);

                //utworz przycisk obrazu
                ImageButton btnImage = new ImageButton
                {
                    ImageUrl = string.Format("~/Images/Products/{0}", product.Image),
                    PostBackUrl = string.Format("~/Pages/Product.aspx?id={0}", product.Id)
                };

                //utworz link do usuwania
                LinkButton lnkDelete = new LinkButton
                {
                    PostBackUrl = string.Format("~/Pages/ShoppingCart.aspx?productId={0}", cart.ID),
                    Text = "Usuń produkt",
                    ID = "del" + cart.ID
                };

                //zdarzenie po kliknięciu
                lnkDelete.Click += Delete_Item;

                //utworz liste rozwijana ilosci
                //wygeneruj pd 1 do 20
                int[] amount = Enumerable.Range(1, 20).ToArray();
                DropDownList ddlAmount = new DropDownList
                {
                    DataSource = amount,
                    AppendDataBoundItems = true,
                    AutoPostBack = true,
                    ID = cart.ID.ToString()
                };

                ddlAmount.DataBind();
                ddlAmount.SelectedValue = cart.Amount.ToString();
                ddlAmount.SelectedIndexChanged += ddlAmount_SelectedIndexChanged;

                //utworz tabele html z 2 wierszami
                Table table = new Table { CssClass = "cartTable" };
                TableRow a = new TableRow();
                TableRow b = new TableRow();

                //utworz 6 komorek A
                TableCell a1 = new TableCell { RowSpan = 2, Width = 50 };
                TableCell a2 = new TableCell { Text = string.Format("<h4>{0}</h4><br/>{1}<br/>W magazynie", 
                    product.Name, "Produkt numer: " + product.Id ), 
                    HorizontalAlign = HorizontalAlign.Left, Width=350};
                TableCell a3 = new TableCell { Text = "Cena za jedną sztukę<hr/>" };
                TableCell a4 = new TableCell { Text = "Ilość<hr/>" };
                TableCell a5 = new TableCell { Text = "Łącznie<hr/>" };
                TableCell a6 = new TableCell { };

                //utworz 6 komorek B
                TableCell b1 = new TableCell { };
                TableCell b2 = new TableCell { Text = product.Price + "zł" };
                TableCell b3 = new TableCell { };
                TableCell b4 = new TableCell { Text = cart.Amount * product.Price + "zł" };
                TableCell b5 = new TableCell { };
                TableCell b6 = new TableCell { };

                //ustaw specjalne sterowanie
                a1.Controls.Add(btnImage);
                a6.Controls.Add(lnkDelete);
                b3.Controls.Add(ddlAmount);

                //dodanie komórek do wierszy
                a.Cells.Add(a1);
                a.Cells.Add(a2);
                a.Cells.Add(a3);
                a.Cells.Add(a4);
                a.Cells.Add(a5);
                a.Cells.Add(a6);

                b.Cells.Add(b1);
                b.Cells.Add(b2);
                b.Cells.Add(b3);
                b.Cells.Add(b4);
                b.Cells.Add(b5);
                b.Cells.Add(b6);

                //dodanie wierszy do tabeli
                table.Rows.Add(a);
                table.Rows.Add(b);

                //dodaj tabele do panelu pnlShoppingCart
                pnlShoppingCart.Controls.Add(table);

                //dodaj całkowitą ilosc pozycji w koszyku do subtotal
                subTotal += cart.Amount * Convert.ToInt32(product.Price);

            }

            //dodaj koszyk aktualnego użytkownika do wartości sesji użytkownika
            Session[User.Identity.GetUserId()] = purchaseList;
        }

        private void ddlAmount_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList selectedList = (DropDownList)sender;
            int quantity = Convert.ToInt32(selectedList.SelectedValue);
            int cartId = Convert.ToInt32(selectedList.ID);

            CartModel model = new CartModel();
            model.UpdateQuantity(cartId, quantity);

            Response.Redirect("~/Pages/ShoppingCart.aspx");
        }

        private void Delete_Item(object sender, EventArgs e)
        {
            LinkButton selectedLink = (LinkButton)sender;
            string link = selectedLink.ID.Replace("del", "");
            int cartId = Convert.ToInt32(link);

            CartModel model = new CartModel();
            model.DeleteCart(cartId);

            Response.Redirect("~/Pages/ShoppingCart.aspx");
        }
    }
}