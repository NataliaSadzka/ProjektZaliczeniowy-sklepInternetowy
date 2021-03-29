using System;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;

//[assembly: OwinStartup(typeof(ProjektZaliczeniowy_sklepInternetowy.App_Code.Startup1))]

namespace ProjektZaliczeniowy_sklepInternetowy.App_Code
{
    public class Startup1
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Pages/Account/Login.aspx")
            });
           
        }
    }
}
