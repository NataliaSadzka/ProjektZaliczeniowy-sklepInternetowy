using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace ProjektZaliczeniowy_sklepInternetowy.App_Code.Models
{
    public class ProductTypeModel
    {
        public string InsertProductType(ProductType productType)
        {
            try
            {
                ShopDBEntities db = new ShopDBEntities();
                db.ProductTypes.Add(productType);
                db.SaveChanges();

                return productType.Name + " został pomyślnie dodany";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProductType(int id, ProductType productType)
        {
            try
            {
                ShopDBEntities db = new ShopDBEntities();

                ProductType p = db.ProductTypes.Find(id);

                p.Name = productType.Name;

                db.SaveChanges();

                return productType.Name + " został pomyślnie zaktualizowany";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteProductType(int id)
        {
            try
            {
                ShopDBEntities db = new ShopDBEntities();
                ProductType productType = db.ProductTypes.Find(id);

                db.ProductTypes.Attach(productType);
                db.ProductTypes.Remove(productType);
                db.SaveChanges();

                return productType.Name + " został pomyślnie zaktualizowany";

            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}