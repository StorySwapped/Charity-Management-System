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
    public partial class signup_aspx : System.Web.UI.Page
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
        protected void sign_up_store(object sender, EventArgs e)
        {
            string first = Request.Form["firstname"];
            string last = Request.Form["lastname"];
            string nationality = Request.Form["nationality"];
            string address = Request.Form["address"];
            string email = Request.Form["email"];
            string phone = Request.Form["phone"];
            string password = Request.Form["pass"];
            string cpass = Request.Form["cpass"];
            if (password != cpass)
            {
                // strings are not equal, display a message
                ResultLabel.Text = "The password do not match!";
                ResultLabel.Visible = true;
                return;
            }
      
            string typee = Request.Form["type"];
            string gender = Request.Form["gender"];
            Session["usertype"] = typee;
            using (SqlConnection con = new SqlConnection(connString))
            {
                if (typee == "DONOR")
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT_DONOR", con))
                    {
                        int donations_made = 0;
                        cmd.CommandType = CommandType.StoredProcedure;

                        // Add parameters to the stored procedure
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@first_name", first);
                        cmd.Parameters.AddWithValue("@last_name", last);
                        cmd.Parameters.AddWithValue("@nationality", nationality);
                        cmd.Parameters.AddWithValue("@address", address);
                        cmd.Parameters.AddWithValue("@phone", phone);
                        cmd.Parameters.AddWithValue("@password", password);
                        cmd.Parameters.AddWithValue("@gender", gender);
                        cmd.Parameters.AddWithValue("@donations_made", donations_made);

                        // Open the database connection
                        con.Open();

                        // Execute the stored procedure
                        cmd.ExecuteNonQuery();

                        // Close the database connection
                        con.Close();
                    }

                    using (SqlConnection con2 = new SqlConnection(connString))
                    using (SqlCommand cmd = new SqlCommand("InsertDonation", con2))
                    {
                        int donations_made = 0;
                        string[] category = new string[4];
                        category[0] = "Education";
                        category[1] = "Food";
                        category[2] = "Health";
                        category[3] = "Shelter";

                        cmd.CommandType = CommandType.StoredProcedure;
                        con2.Open();
                        for (int i = 0; i < 4; i++)
                        {
                            // Add parameters to the stored procedure
                            cmd.Parameters.Clear(); // Clear previous parameters
                            cmd.Parameters.AddWithValue("@donorEmail", email);
                            cmd.Parameters.AddWithValue("@amount", donations_made);
                            cmd.Parameters.AddWithValue("@category", category[i]);

                            // Execute the stored procedure
                            cmd.ExecuteNonQuery();
                        }
                        con2.Close();
                    }
                }

                else if (typee == "VOLUNTEER")
                {
                    int total_contribution = 0;
                    using (SqlCommand cmd = new SqlCommand("INSERT_VOLUNTEER", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        // Add parameters to the stored procedure
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@first_name", first);
                        cmd.Parameters.AddWithValue("@last_name", last);
                        cmd.Parameters.AddWithValue("@nationality", nationality);
                        cmd.Parameters.AddWithValue("@address", address);

                        cmd.Parameters.AddWithValue("@phone", phone);
                        cmd.Parameters.AddWithValue("@password", password);
                        cmd.Parameters.AddWithValue("@gender", gender);
                        cmd.Parameters.AddWithValue("@total_contribution", total_contribution);


                        // Open the database connection
                        con.Open();

                        // Execute the stored procedure
                        cmd.ExecuteNonQuery();

                        // Close the database connection
                        con.Close();
                    }
                }
                else
                {
                    int work_hours = 0;
                    using (SqlCommand cmd = new SqlCommand("INSERT_MEMBER", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        // Add parameters to the stored procedure
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@first_name", first);
                        cmd.Parameters.AddWithValue("@last_name", last);
                        cmd.Parameters.AddWithValue("@nationality", nationality);
                        cmd.Parameters.AddWithValue("@address", address);

                        cmd.Parameters.AddWithValue("@phone", phone);
                        cmd.Parameters.AddWithValue("@password", password);
                        cmd.Parameters.AddWithValue("@gender", gender);
                        cmd.Parameters.AddWithValue("@work_hours", work_hours);


                        // Open the database connection
                        con.Open();

                        // Execute the stored procedure
                        cmd.ExecuteNonQuery();

                        // Close the database connection
                        con.Close();
                    }
                }

            }
        }
    }
}