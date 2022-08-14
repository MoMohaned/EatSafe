using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                con.Open();

                SqlCommand cmd = new SqlCommand("insert into Users values('" + username.Text + "','" + password.Text + "')", con);

                cmd.ExecuteNonQuery();
                Response.Redirect("Default.aspx");

                con.Close();
            }
        }
    }
}