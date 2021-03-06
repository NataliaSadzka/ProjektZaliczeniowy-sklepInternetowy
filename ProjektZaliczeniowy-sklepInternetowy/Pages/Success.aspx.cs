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
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Cart> carts = (List<Cart>)Session[User.Identity.GetUserId()];

            CartModel model = new CartModel();
            model.MarkOrdersAsPaid(carts);

            Session[User.Identity.GetUserId()] = null;
        }
    }
}