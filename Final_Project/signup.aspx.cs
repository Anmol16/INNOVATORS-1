using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Data;

public partial class signup : System.Web.UI.Page
{


    private SqlConnection connection;

    private SqlConnection commandConnection;
    private string query;
    private object txtphone_number;
    protected void click(object sender, EventArgs e)
    {
        try
        {
            string constr = ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();



            Response.Write("Connection Established");
            // Create and prepare an SQL statement.

            String query = "INSERT INTO users (user_id , password,name,type_of_user,address,phone_number,govt_id_number,email) Values(@user_id,@password,@name,@type_of_user,@address,@phone_number,@govt_id_number,@email )";

            using (MySqlCommand command = new MySqlCommand(query, con))
            {
                command.Parameters.AddWithValue("user_id", Request.Form["txtuser_id"].ToString());
                command.Parameters.AddWithValue("password", Request.Form["txtpassword"].ToString());
                command.Parameters.AddWithValue("name", Request.Form["txtname"].ToString());
                command.Parameters.AddWithValue("type_of_user", Request.Form["txttype_of_user"].ToString());
                command.Parameters.AddWithValue("address", Request.Form["txtaddress"].ToString());
                command.Parameters.AddWithValue("phone_number", Request.Form["txtphone_number"].ToString());

                command.Parameters.AddWithValue("govt_id_number", Request.Form["txtgovt_id"].ToString());

                command.Parameters.AddWithValue("email", Request.Form["txtemail"].ToString());






                int result = command.ExecuteNonQuery();

                // Check Error
                if (result < 0)
                    Console.WriteLine("Error inserting data into Database!");
            }
            con.Close();

        }



        catch (MySqlException a)
        {
            Response.Write("Not Established : " + a);
        }




    }
    protected void Page_Load(object sender, EventArgs e)
    {


    }
}



