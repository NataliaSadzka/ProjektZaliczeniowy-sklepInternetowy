using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using Owin;
using ProjektZaliczeniowy_sklepInternetowy.App_Code.Models;

namespace ProjektZaliczeniowy_sklepInternetowy.Pages.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

            userStore.Context.Database.Connection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ShopDBConnectionString"].ConnectionString;

            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            //Tworzenie nowego usera
            IdentityUser user = new IdentityUser();
            user.UserName = txtUserName.Text;

            if(txtPassword.Text == txtConfirmPassword.Text)
            {
                try
                {
                    //utworz obiekt użytkownika
                    //baza danych zostanie utworzona automatycznie
                    IdentityResult result = manager.Create(user, txtPassword.Text);

                    if(result.Succeeded)
                    {
                        UserInformation info = new UserInformation
                        {
                            Address = txtAddress.Text,
                            FirstName = txtFirstName.Text,
                            LastName = txtLastName.Text,
                            PostalCode = Convert.ToInt32(txtPostalCode.Text),
                            GUID = user.Id

                        };

                        UserInfoModel model = new UserInfoModel();
                        model.InsertUserInformation(info);
                        //Przechowywanie użytkownika w bazie danych
                        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                        //nowy użytkownik, ciasteczka
                        var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                        //zaloguj sie jako nowy użytkownik i przekieruj na stronę główną
                        authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                        Response.Redirect("~/Index.aspx");

                    }
                    else
                    {
                        litStatus.Text = result.Errors.FirstOrDefault();
                    }
                }
                catch(Exception ex)
                {
                    litStatus.Text = ex.ToString();
                }
            }
            else
            {
                litStatus.Text = "Hasło musi być takie samo";
            }
        }
    }
}