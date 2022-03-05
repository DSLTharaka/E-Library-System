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
    public partial class adminAuthorManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {
                Response.Write("<script>alert('Auther already exist');</script>");
            }
            else
            {
                addNewAuthor();
            }

        }
        //update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {

                updateAuthor();
                
            }
            else
            {
                Response.Write("<script>alert('Auther does not exist');</script>");
            }

        }
        //delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExist())
            {

                deleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('Auther does not exist');</script>");
            }


        }
        //go button click
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        //user define function

        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from author_master_tbl where author_id = '" + TextBox3.Text.Trim() + "';", con);

                
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther DELETED successfully ');</script>");
                clearform();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }





        void updateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE  author_master_tbl SET author_name =@author_name WHERE author_id='"+TextBox3.Text.Trim()+"'", con);
                
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther Updated successfully successfull');</script>");
                clearform();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
         void clearform()
        {
            TextBox3.Text = "";
            TextBox2.Text = "";

        }





        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT  author_master_tbl(author_id,author_name) values(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther added successfullyl');</script>");
                clearform();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkIfAuthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id = '" + TextBox3.Text.Trim() + "';", con);
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}