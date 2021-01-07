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
    public partial class adminusermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e) // go
        {
            get_member_by_id();
        }

        protected void LinkButton1_Click(object sender, EventArgs e) // activ
        {
                updateById("activ");
                GridView1.DataBind();
        }

        protected void LinkButton2_Click(object sender, EventArgs e) // pending
        {
                updateById( "asteptare");
                GridView1.DataBind();
        }

        protected void LinkButton3_Click(object sender, EventArgs e) // inactiv
        {
                updateById("inactiv");
                GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e) // sterge
        {
            if (!check_if_user_exist())
            {
                Response.Write("<script language=javascript>alert('Membrul cu acest ID nu exista!');</script>");
            }
            else
            {
                delete_user();
                clear_textboxes();
                GridView1.DataBind();
            }
        }


        bool check_if_user_exist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_table where member_id='" + TextBox3.Text.Trim() + "';", con);
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
        void get_member_by_id()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_table where member_id='" + TextBox3.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                    while (dr.Read())
                    {
                    TextBox4.Text = dr.GetValue(0).ToString();   
                    TextBox7.Text = dr.GetValue(10).ToString();   
                    TextBox8.Text = dr.GetValue(1).ToString();   
                    TextBox1.Text = dr.GetValue(2).ToString();   
                    TextBox2.Text = dr.GetValue(3).ToString();   
                    TextBox9.Text = dr.GetValue(4).ToString();   
                    TextBox10.Text = dr.GetValue(5).ToString();   
                    TextBox11.Text = dr.GetValue(6).ToString();   
                    TextBox12.Text = dr.GetValue(7).ToString();   
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

        void delete_user()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM member_master_table WHERE member_id='" + TextBox3.Text.Trim() + "'", con);


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
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
        }

        void updateById(string status)
        {
            if (check_if_user_exist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE member_master_table SET account_status='" + status + "' WHERE member_id='" + TextBox3.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                string str = "ID invalid";
                clear_textboxes();
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
        }
    }
}