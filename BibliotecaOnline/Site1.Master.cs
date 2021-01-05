using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaOnline
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // logare
                    LinkButton2.Visible = true; // inregistrare
                    LinkButton3.Visible = false; // deconectare
                    LinkButton7.Visible = false; // Hi!

                    LinkButton6.Visible = true; // Logare admin
                    LinkButton8.Visible = false; // Carti detinute
                    LinkButton9.Visible = false; // Imprumutare carti
                    LinkButton10.Visible = false; // Editare membrii
                    LinkButton11.Visible = false; // Editare autori
                    LinkButton12.Visible = false; // Editare edituri
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // logare
                    LinkButton2.Visible = false; // inregistrare
                    LinkButton3.Visible = true; // deconectare
                    LinkButton7.Visible = true; // Hi!
                    LinkButton7.Text = "Buna, " + Session["username"].ToString() + "!";

                    LinkButton6.Visible = true; // Logare admin
                    LinkButton8.Visible = false; // Carti detinute
                    LinkButton9.Visible = false; // Imprumutare carti
                    LinkButton10.Visible = false; // Editare membrii
                    LinkButton11.Visible = false; // Editare autori
                    LinkButton12.Visible = false; // Editare edituri
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // logare
                    LinkButton2.Visible = false; // inregistrare
                    LinkButton3.Visible = true; // deconectare
                    LinkButton7.Visible = true; // Hi!
                    LinkButton7.Text = "Buna admin, " + Session["username"].ToString() + "!";

                    LinkButton6.Visible = false; // Logare admin
                    LinkButton8.Visible = true; // Carti detinute
                    LinkButton9.Visible = true; // Imprumutare carti
                    LinkButton10.Visible = true; // Editare membrii
                    LinkButton11.Visible = true; // Editare autori
                    LinkButton12.Visible = true; // Editare edituri
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminusermanagement.aspx"); 
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["full_name"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // logare
            LinkButton2.Visible = true; // inregistrare
            LinkButton3.Visible = false; // deconectare
            LinkButton7.Visible = false; // Hi!

            LinkButton6.Visible = true; // Logare admin
            LinkButton8.Visible = false; // Carti detinute
            LinkButton9.Visible = false; // Imprumutare carti
            LinkButton10.Visible = false; // Editare membrii
            LinkButton11.Visible = false; // Editare autori
            LinkButton12.Visible = false; // Editare edituri
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            if(Session["role"].Equals("user"))
                Response.Redirect("userprofile.aspx");
        }
    }
}