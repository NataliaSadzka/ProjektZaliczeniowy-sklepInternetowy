using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjektZaliczeniowy_sklepInternetowy.App_Code.Models;

namespace ProjektZaliczeniowy_sklepInternetowy
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            //Pobieramy produkty z bazy danych
            ProductModel productModel = new ProductModel();
            //List<Product> products = productModel.GetAllProducts();
            List<Product> products = productModel.GetProductsOrderedByPrice();

            //Sprawdzenie czy istnieją produkty
            if (products != null)
            {
                //Stworzenie panelu z button i 2 label z produktami
                foreach(Product product in products)
                {
                    Panel productPanel = new Panel();
                    ImageButton imageButton = new ImageButton();
                    Label lblName = new Label();
                    Label lblPrice = new Label();

                    //Ustawieni właściowości childControl
                    imageButton.ImageUrl = "~/Images/Products/" + product.Image;
                    imageButton.CssClass = "productImage";
                    imageButton.PostBackUrl = "~/Pages/ProductDetails.aspx?id=" + product.Id;

                    lblName.Text = product.Name;
                    lblName.CssClass = "productName";

                    lblPrice.Text = product.Price + " zł";
                    lblPrice.CssClass = "productPrice";

                    //Dodanie childControl do panelu
                    productPanel.Controls.Add(imageButton);
                    productPanel.Controls.Add(new Literal { Text = "<br />" });
                    productPanel.Controls.Add(lblName);
                    productPanel.Controls.Add(new Literal { Text = "<br />" });
                    productPanel.Controls.Add(lblPrice);

                    pnlProducts.Controls.Add(productPanel);

                }
            }
            else
            {
                //Nie znaleziono produktu
                pnlProducts.Controls.Add(new Literal { Text = "No products found!" });
            }
        }
    }
}