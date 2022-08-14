using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering
{
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Session.Abandon();
                Session.Remove("Email");

                
            }
            SiteMaster.username = "";



        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
               
                con.Open();
 
                SqlCommand cmd = new SqlCommand("select * from Users where username='" + username.Text + "'and password='" + password.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    Session["Email"] = username.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("Invalid Login please check username and password");
                
                }
                con.Close();
            }
           
        }
    }
}