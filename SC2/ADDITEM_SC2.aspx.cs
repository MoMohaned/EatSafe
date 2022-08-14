using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC2
{
    public partial class ADDITEM_SC2 : System.Web.UI.Page
    {
        public static string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SafeCateringDB.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {

                if (IsValid)
                {

                    SqlCommand cmd = new SqlCommand("insert into SC2 values( '"+unitname.Text+"','" + date.Text + "','" + am.Text + "','" + pm.Text + "','" + comments.Text + "','" + sign.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    panel1.Visible = false;
                    panel2.Visible = true;

                }
                else
                {
                    panel2.Visible = false;

                }
            }
            catch (Exception)
            {

                throw;
            }


        }
    }
}