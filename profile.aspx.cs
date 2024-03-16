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
    public partial class profile : System.Web.UI.Page
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string D = "DONOR";
            string V = "VOLUNTEER";
            string M = "MEMBER";
            if (Session["Username"] == null) // Check if the user is not authenticated
            {
                Response.Redirect("login_page.aspx"); // Redirect to the login page
            }
            else if (Session["log_type"].ToString() == D)
            {
                string email = Session["Username"].ToString();
                string query = "SELECT first_name, last_name,phone,gender,nationality,address FROM DONORS WHERE email = @email";

                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@email", email);
                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            string fname = reader.GetString(0);
                            string lname = reader.GetString(1);
                            string phone = reader.GetString(2);
                            string gender = reader.GetString(3);
                            string nationality = reader.GetString(4);
                            string address = reader.GetString(5);
                            string fullname = fname + ' ' + lname;
                            Session["fullname"] = fullname;
                            Session["phone"] = phone;
                            string temp = "M";
                            if (gender == temp)
                            {
                                Session["gender"] = "MALE";
                            }
                            else
                            {
                                Session["gender"] = "FEMALE";
                            }

                            Session["nationality"] = nationality;
                            Session["address"] = address;

                        }

                        reader.Close();
                        con.Close();
                    }
                }

                string query1 = "SELECT amount from Donations WHERE donor_email = @email and category='Education'";
                string query2 = "SELECT amount from Donations WHERE donor_email = @email and category='Food'";
                string query3 = "SELECT amount from Donations WHERE donor_email = @email and category='Health'";
                string query4 = "SELECT amount from Donations WHERE donor_email = @email and category='Shelter'";

                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(query1, con))
                    {
                        cmd.Parameters.AddWithValue("@email", email);
                        con.Open();

                        object scalarResult = cmd.ExecuteScalar();

                        if (scalarResult != null && scalarResult != DBNull.Value)
                        {
                            int result = Convert.ToInt32(scalarResult);
                            string edu = result.ToString();
                            Session["Edu"] = edu;
                        }


                        con.Close();
                    }
                }
                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(query2, con))
                    {
                        cmd.Parameters.AddWithValue("@email", email);
                        con.Open();

                        object scalarResult = cmd.ExecuteScalar();

                        if (scalarResult != null && scalarResult != DBNull.Value)
                        {
                            int result = Convert.ToInt32(scalarResult);
                            string food = result.ToString();
                            Session["food"] = food;
                        }


                        con.Close();
                    }
                }
                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(query3, con))
                    {
                        cmd.Parameters.AddWithValue("@email", email);
                        con.Open();

                        object scalarResult = cmd.ExecuteScalar();

                        if (scalarResult != null && scalarResult != DBNull.Value)
                        {
                            int result = Convert.ToInt32(scalarResult);
                            string heal = result.ToString();
                            Session["health"] = heal;
                        }


                        con.Close();
                    }
                }
                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(query4, con))
                    {
                        cmd.Parameters.AddWithValue("@email", email);
                        con.Open();

                        object scalarResult = cmd.ExecuteScalar();

                        if (scalarResult != null && scalarResult != DBNull.Value)
                        {
                            int result = Convert.ToInt32(scalarResult);
                            string shelter = result.ToString();
                            Session["shelter"] = shelter;
                        }


                        con.Close();
                    }
                }

            }
            else if (Session["log_type"].ToString() == V)
            {
                string email = Session["Username"].ToString();
                string query = "SELECT first_name, last_name,phone,gender,nationality,address FROM volunteers WHERE email = @email";

                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@email", email);
                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            string fname = reader.GetString(0);
                            string lname = reader.GetString(1);
                            string phone = reader.GetString(2);
                            string gender = reader.GetString(3);
                            string nationality = reader.GetString(4);
                            string address = reader.GetString(5);
                            string fullname = fname + ' ' + lname;
                            Session["fullname"] = fullname;
                            Session["phone"] = phone;
                            string temp = "M";
                            if (gender == temp)
                            {
                                Session["gender"] = "MALE";
                            }
                            else
                            {
                                Session["gender"] = "FEMALE";
                            }

                            Session["nationality"] = nationality;
                            Session["address"] = address;

                        }

                        reader.Close();
                        con.Close();
                    }
                }


            }
        }





            protected void btnSignOut_Click(object sender, EventArgs e)
        {
            // Clear the session and redirect to the login page or any other desired page
            Session["username"] = null;
            Response.Redirect("login_page.aspx");
        }

    }
}
