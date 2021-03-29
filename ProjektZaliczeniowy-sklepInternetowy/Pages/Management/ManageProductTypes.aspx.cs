using System;
using ProjektZaliczeniowy_sklepInternetowy.App_Code.Models;

namespace ProjektZaliczeniowy_sklepInternetowy.Pages.Management
{
    public partial class ManageProductTypes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ProductTypeModel model = new ProductTypeModel();
            ProductType pt = CreateProductType();

            lblResult.Text = model.InsertProductType(pt);
        }

        private ProductType CreateProductType()
        {
            ProductType p = new ProductType();
            p.Name = txtName.Text;

            return p;
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}