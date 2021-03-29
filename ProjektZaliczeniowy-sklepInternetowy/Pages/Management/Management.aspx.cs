using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjektZaliczeniowy_sklepInternetowy.Pages.Management
{
    public partial class Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void shopProducts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void shopProducts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Get selected row
            GridViewRow row = shopProducts.Rows[e.NewEditIndex];

            //Get Id of selected product
            int rowId = Convert.ToInt32(row.Cells[1].Text);

            //Redirect user to ManageProduct along with the selected rowId
            Response.Redirect("~/Pages/Management/ManageProducts.aspx?id=" + rowId);
        }
    }
}