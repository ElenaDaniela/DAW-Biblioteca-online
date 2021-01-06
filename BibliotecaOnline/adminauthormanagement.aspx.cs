using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaOnline
{
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e) // Adauga
        {
            if (check_if_author_exist())
            {
                Response.Write("<script language=javascript>alert('Autor deja existent!');</script>");
            }
            else
            {
                add_new_author();
                clear_textboxes();
            }
        }

        protected void Button2_Click(object sender, EventArgs e) // GO
        {
            get_auth_by_id();
        }

        protected void Button3_Click(object sender, EventArgs e) // Actualizeaza
        {
            if (!check_if_author_exist())
            {
                Response.Write("<script language=javascript>alert('Autorul cu acest ID nu exista!');</script>");
            }
            else
            {
                update_author();
                clear_textboxes();
            }
        }

        protected void Button4_Click(object sender, EventArgs e) // Sterge
        {
            if (!check_if_author_exist())
            {
                Response.Write("<script language=javascript>alert('Autorul cu acest ID nu exista!');</script>");
            }
            else
            {
                delete_author();
                clear_textboxes();
            }
        }
        void get_auth_by_id()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_table where author_id='" + TextBox3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script language=javascript>alert('ID invalid!');</script>");
                }

                con.Close();
            }
            catch (Exception ex)
            {
                string str = ex.Message;
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
        }
        void delete_author()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM author_master_table WHERE author_id='" + TextBox3.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();

                string str = "Sters cu succes!";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                string str = ex.Message;
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
        }

        void clear_textboxes()
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        void update_author()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE author_master_table SET author_name=@full_name WHERE author_id='"+TextBox3.Text.Trim()+"'", con);
 
                cmd.Parameters.AddWithValue("@full_name", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                string str = "Actualizat cu succes!";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                string str = ex.Message;
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
        }
        void add_new_author()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_table (author_id,author_name) values(@author_id,@full_name);", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                string str = "Adaugat cu succes!";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                string str = ex.Message;
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
        }

        bool check_if_author_exist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_table where author_id='" + TextBox3.Text.Trim() + "';", con);
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
            }
            catch (Exception ex)
            {
                string str = ex.Message;
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }

            return false;
        }
    }
}