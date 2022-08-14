using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC4
{
    public partial class AddItem : System.Web.UI.Page
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

                    SqlCommand cmd = new SqlCommand("insert into SC4 values( '" + date.Text + "','" + food.Text + "','"+hhtime.Text+"','" + chours2.Text + "','" + chours4.Text + "','" + chours6.Text + "','" + sign.Text + "','" + comments.Text + "')", con);
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