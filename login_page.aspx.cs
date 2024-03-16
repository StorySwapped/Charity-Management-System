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
    public partial class login_page : System.Web.UI.Page
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;


        protected void login(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            string type = Request.Form["type"];
            Session["log_type"] = type;
            string don = "DONOR";
            string vol = "VOLUNTEER";
            string mem = "MEMBER";
            if (type == don)
            {
                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM DONORS WHERE email = @username AND password = @password", con))
                    {
                        cmd.CommandType = CommandType.Text;

                        // Add parameters to the stored procedure
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);

                        // Open the database connection
                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        // Check if the SqlDataReader object has any rows (i.e., if the login was successful)
                        if (reader.HasRows)
                        {
                            // Redirect the user to the welcome_page.aspx page if the login was successful
                            Session["Username"] = username;
                            Response.Redirect("profile.aspx");
                        }
                        else
                        {
                            // Display an error message if the login was unsuccessful
                            ResultLabel.Text = "Invalid email or password";
                            ResultLabel.Visible = true;
                        }

                        // Close the SqlDataReader object and the database connection
                        reader.Close();


                        // Close the database connection
                        con.Close();
                    }
                }
            }
            else if(type==vol)
            {
                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM Volunteers WHERE email = @username AND password = @password", con))
                    {
                        cmd.CommandType = CommandType.Text;

                        // Add parameters to the stored procedure
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);

                        // Open the database connection
                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        // Check if the SqlDataReader object has any rows (i.e., if the login was successful)
                        if (reader.HasRows)
                        {
                            // Redirect the user to the welcome_page.aspx page if the login was successful
                            Session["Username"] = username;
                            Response.Redirect("profile.aspx");
                        }
                        else
                        {
                            // Display an error message if the login was unsuccessful
                            ResultLabel.Text = "Invalid email or password";
                            ResultLabel.Visible = true;
                        }

                        // Close the SqlDataReader object and the database connection
                        reader.Close();


                        // Close the database connection
                        con.Close();
                    }
                }
            }
            else if(type==mem)
            {
                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM Member WHERE email = @username AND password = @password", con))
                    {
                        cmd.CommandType = CommandType.Text;

                        // Add parameters to the stored procedure
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);

                        // Open the database connection
                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        // Check if the SqlDataReader object has any rows (i.e., if the login was successful)
                        if (reader.HasRows)
                        {
                            // Redirect the user to the welcome_page.aspx page if the login was successful
                            Session["Username"] = username;
                            Response.Redirect("profile.aspx");
                        }
                        else
                        {
                            // Display an error message if the login was unsuccessful
                            ResultLabel.Text = "Invalid email or password";
                            ResultLabel.Visible = true;
                        }

                        // Close the SqlDataReader object and the database connection
                        reader.Close();


                        // Close the database connection
                        con.Close();
                    }
                }
            }

        }
    }
}