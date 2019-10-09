using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
namespace MySqlconnection
{
    /// <summary>
    /// Summary description for Connection
    /// </summary>
    public class ConnectDB
    {
        public MySqlConnection ConnectToMySql()
        {
            MySqlConnection con = null;
            try
            {
                //string constr = ConfigurationManager.ConnectionStrings["WebAppConnString"].ConnectionString;
                // con = new MySqlConnection(constr);
                return con;
            }
            catch (MySqlException a)
            {
               Console.WriteLine("Not Established : " + a);
            }
            return con;
        }
    }
}