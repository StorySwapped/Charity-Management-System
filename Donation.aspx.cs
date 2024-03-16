using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace db
{
    public partial class Donation : System.Web.UI.Page
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null) // Check if the user is not authenticated
            {
                Response.Redirect("login_page.aspx"); // Redirect to the login page
            }
        }
        protected void adddonation(object sender, EventArgs e)
        {
            string email = Session["Username"].ToString();
            
            string category = Request.Form["categories"];
            string amount = Request.Form["amount"];
           

            int total = int.Parse(amount);
            bool success = int.TryParse(amount, out total);
            if (success)
            {
                using (SqlConnection con = new SqlConnection(connString))
                {

                    using (SqlCommand cmd = new SqlCommand("IncreaseDonation", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@donationValue", total);
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@category", category);
                        con.Open();

                        // Execute the stored procedure
                        cmd.ExecuteNonQuery();

                        // Close the database connection
                        con.Close();
                    }
                }
            }
            else
            {
                Response.Redirect("login_page.aspx");
            }

        }
    }
}