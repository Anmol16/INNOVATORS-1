using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using MySqlconnection;

public partial class donation : System.Web.UI.Page
{
    protected string UserId { get; set; }    //to set value of the field you have to add expression to the value of field
    protected string DonationId { get; set; }
    protected string Med_Id { get; set; }
    protected string Batch_no { get; set; }
    protected string Mfd_name { get; set; }
    protected string Usage { get; set; }

    protected void DisplayMed(object sender, EventArgs e) {

        String medicine_name = Request.Form["medicinename"];         //to get value
        Application["med"] = medicine_name;                          //to pass value to application
        Response.Redirect("sucess.aspx");                            //to goto another page
    }
    protected void Donate(object sender, EventArgs e)
    {
        if (NewMedicineCheckBox.Checked)
        {
            InsertionNewMedicine();

        }
        else {
            UpdateToMedicines();
        }


    }

    protected int generateDonationId() {                              //donation id generation from database
        int d_id=1001;
        //SQL Connection and query
        ConnectDB con = new ConnectDB();
        MySqlConnection connection = con.ConnectToMySql();
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = "select * from donations";
        cmd.Connection = connection;
        //connection.Open();
        //MySqlDataReader reader = cmd.ExecuteReader();
        //while (reader.Read())
        //{
          //  ++d_id;
        //}
        //connection.Close();
            return d_id;

    }
    protected int generateMedicineId()
    {                              //donation id generation from database
        int m_id = 1001;
        //SQL Connection and query
        ConnectDB con = new ConnectDB();
        MySqlConnection connection = con.ConnectToMySql();
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = "select * from medicines";
        cmd.Connection = connection;
        //connection.Open();
        //MySqlDataReader reader = cmd.ExecuteReader();
        //while (reader.Read())
        //{
        //    ++m_id;
        //}
        //connection.Close();
        return m_id;

    }
    protected void showMedicinesDropDown() {
        ConnectDB con = new ConnectDB();                           //to get medicine names in dropdown list
        MySqlConnection connection = con.ConnectToMySql();
        String command = "select medicine_name from medicines;";
        //connection.Open();
        //MySqlCommand cmd = new MySqlCommand();
        //cmd.CommandText = command;
        //cmd.Connection = connection;
        //MedicineDropDown.DataSource = cmd.ExecuteReader();
        //MedicineDropDown.DataTextField = "medicine_name";
        //MedicineDropDown.DataValueField = "medicine_name";
        //MedicineDropDown.DataBind();
        //connection.Close();
        
    }
    //protected void SelectedIndexChanged(object sender, EventArgs e) {
    //    NewMedicineField.Text = MedicineDropDown.SelectedItem.Text;


    //    if (MedicineDropDown.SelectedIndex != 0) //old medicine
    //    {

    //        NewMedicineField.Text = MedicineDropDown.SelectedItem.Text;
    //        generateMedicineDetails();


    //    }
    //    else {  //new medicine
    //        this.Med_Id = generateMedicineId().ToString();
    //    }

    //}

    //private void generateMedicineDetails()
    //{
    //    ConnectDB con = new ConnectDB();
    //    MySqlConnection connection = con.ConnectToMySql();
    //    String command ="Select * from medicines where medicine_name='"+MedicineDropDown.SelectedItem.Text+"';";
    //    MySqlCommand cmd = new MySqlCommand();
    //    cmd.CommandText = command;
    //    cmd.Connection = connection;
    //    try {
    //        connection.Open();
    //        MySqlDataReader reader = cmd.ExecuteReader();
    //        while (reader.Read())
    //        {
    //            this.Med_Id = reader["medicine_id"].ToString();
    //            NewMedicineField.Text = reader["medicine_name"].ToString();
    //            this.Batch_no = reader["batch_no"].ToString();
    //            this.Mfd_name = reader["manufacturer_name"].ToString();
    //            this.Usage = reader["application"].ToString();
    //        }
    //        connection.Close();
    //    }
    //    catch (MySqlException ex)
    //    {
    //        Response.Write("Error in sql : " + ex);
    //    }
    //}
    //  protected void InsertToDonation() {           //to do
    //    ConnectDB con = new ConnectDB();
    //    MySqlConnection connection = con.ConnectToMySql();
    //    String command = "insert into donations values(@donation_id,@user_id,@med_name,@date_of_donation,@quantity);";
    //    MySqlCommand cmd = new MySqlCommand();
    //    cmd.CommandText = command;
    //    cmd.Connection = connection;
    //    cmd.Parameters.AddWithValue("donation_id", );
    //    cmd.Parameters.AddWithValue("user_id", );
    //    cmd.Parameters.AddWithValue("med_name", );
    //    cmd.Parameters.AddWithValue("date_of_donation", );
    //    cmd.Parameters.AddWithValue("quantity", );
    //}
    protected void InsertionNewMedicine() {
        ConnectDB con = new ConnectDB();                          
        MySqlConnection connection = con.ConnectToMySql();
        String command = "insert into medicines values(@med_id,@med_name,@batch_no,@mfd_name,@exp_date,@usage,@stock); ";
       
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = command;
        cmd.Connection = connection;
        cmd.Parameters.AddWithValue("med_id",Request.Form["med_id"].ToString());
        cmd.Parameters.AddWithValue("med_name", NewMedicineField.Text);
        cmd.Parameters.AddWithValue("batch_no", Request.Form["batch_no"].ToString());
        cmd.Parameters.AddWithValue("mfd_name", Request.Form["mfd_name"].ToString());
        cmd.Parameters.AddWithValue("usage", Request.Form["usage"].ToString());
        cmd.Parameters.AddWithValue("exp_date", Request.Form["expirydate"].ToString());
        cmd.Parameters.AddWithValue("stock", Request.Form["quantity"].ToString());

        try
        {
            connection.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Inserted to medicines table')</script>");
            connection.Close();
        }
        catch (MySqlException ex)
        {
            Response.Write("Error in sql : " + ex);
        }

    }
    protected void UpdateToMedicines() {

        ConnectDB con = new ConnectDB();
        MySqlConnection connection = con.ConnectToMySql();
        MySqlCommand cmd = new MySqlCommand();
        String oldquant = Request.Form["quantityold"].ToString();
        String medname =MedicineDropDown.SelectedItem.Text.ToString();
        cmd.CommandText = "update medicines set quantity_stock=quantity_stock+"+oldquant+" where medicine_name='"+medname+"';";
        
        cmd.Connection = connection;
        try
        {
            connection.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Updated to medicines table')</script>");
            connection.Close();
        }
        catch (MySqlException ex)
        {
            Response.Write("Error in sql : " + ex);
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    { 
       


        String uid = "root"; //Application["uid"].ToString();     //to get passed value for uid in application
        this.UserId = uid;                                        //to set value
        String donation_Id=generateDonationId().ToString();
        this.DonationId = donation_Id;                             //autoset donation id
        showMedicinesDropDown();                                  //display list of available medicines
        this.Med_Id = generateMedicineId().ToString();           //new medicine by defalt or else dropdown selected index changed to get old medicine
        
    }
}