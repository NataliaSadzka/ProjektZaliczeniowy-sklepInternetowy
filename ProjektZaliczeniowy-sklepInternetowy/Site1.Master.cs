using Microsoft.AspNet.Identity;
using ProjektZaliczeniowy_sklepInternetowy.App_Code.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjektZaliczeniowy_sklepInternetowy
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Context.User.Identity;

            if(user.IsAuthenticated)
            {
                litStatus.Text = Context.User.Identity.Name;

                lnkLogin.Visible = false;
                lnkRegister.Visible = false;

                lnkLogout.Visible = true;
                litStatus.Visible = true;

                CartModel model = new CartModel();
                string userId = HttpContext.Current.User.Identity.GetUserId();
                litStatus.Text = string.Format("{0} ({1})", Context.User.Identity.Name, model.GetAmountOfOrders(userId));
            }
            else
            {
                lnkLogin.Visible = true;
                lnkRegister.Visible = true;

                lnkLogout.Visible = false;
                litStatus.Visible = false;
            }


            if (user.IsAuthenticated && user.Name == "admin")
            {
                litStatus.Text = Context.User.Identity.Name;

                lnkLogin.Visible = false;
                lnkRegister.Visible = false;

                lnkLogout.Visible = true;
                litStatus.Visible = true;

                HyperLink3.Visible = true;
                


                CartModel model = new CartModel();
                string userId = HttpContext.Current.User.Identity.GetUserId();
                litStatus.Text = string.Format("{0} ({1})", Context.User.Identity.Name, model.GetAmountOfOrders(userId));
            }
            else
            {
                

                HyperLink3.Visible = false;
            }

        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();

            Response.Redirect("~/Index.aspx");
        }
    }
}