using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjektZaliczeniowy_sklepInternetowy.App_Code.Models
{
    public class UserInfoModel
    {
        public UserInformation GetUserInformation(string guId)
        {
            ShopDBEntities db = new ShopDBEntities();
            UserInformation info = (from x in db.UserInformations where x.GUID == guId select x).FirstOrDefault();

            return info;
        }

        public void InsertUserInformation(UserInformation info)
        {
            ShopDBEntities db = new ShopDBEntities();
            db.UserInformations.Add(info);
            db.SaveChanges();
        }
    }
}