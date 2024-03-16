using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace db
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

        protected void btnMyButton_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                // user is logged in, perform desired action
            }
            else
            {
                Response.Redirect("login_page.aspx"); // Redirect to the login page
            }
        }
    }
}