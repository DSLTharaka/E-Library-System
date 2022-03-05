using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class signup : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //signup button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExist())
            {
                Response.Write("<script>alert('Member Id already exist. Please try an another Id');</script>");
            }
            else
            {
                SignUpNewUser();

            }





            
        }

        bool checkMemberExist()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id = '"+TextBox8.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else 
                {
                    return false;
                }
                 
                con.Close();
                Response.Write("<script>alert('Signup successfull');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
            
  
        }
        void SignUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT  member_master_tbl(full_name,dob,contact_no,email,pincode,city,state,full_address,member_id,password,account_status) values(@Fname,@dob,@contact,@email,@state,@city,@pincode,@Faddress,@memberId,@password,@accStatus)", con);
                cmd.Parameters.AddWithValue("@Fname", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Faddress", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@memberId", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@accStatus", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Signup successfull');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}