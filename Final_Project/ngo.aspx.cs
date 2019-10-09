using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class ngo : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //String constr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
            //MySqlConnection conn = new MySqlConnection(constr);
            //conn.Open();
            //MySqlDataReader dataReader;
            //string query = "update medicines set batch_no=00025 where medicine_id=00002";
            //Response.Write("connection established </br>");
            ////var cmd = new MySqlCommand(query, conn);
            ////var reader = cmd.ExecuteReader();
            //MySqlCommand myCommand = new MySqlCommand(query, conn);

            //dataReader = myCommand.ExecuteReader();


            //conn.Close();

        }
        catch (MySqlException a)
        {
            Response.Write("Problem : " + a);
        }

    }

    protected void PickUp_Click(object sender, EventArgs e)
    {
        //string query = "update medicines set batch_no=00025 where medicine_id=00002";
        Response.Write("<script langauge=\"javascript\">alert(\"Your data was inserted successfully\");</script>");
    }
}