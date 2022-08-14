using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering
{
    public partial class AddItem : System.Web.UI.Page
    {
        public static string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SafeCateringDB.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(constr);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            try
            {

                if (IsValid)
                {

                    SqlCommand cmd = new SqlCommand("insert into SC1 values('" + date.Text + "','" + foodname.Text + "','" + batchcode.Text + "','" + supplied.Text + "','" + useby.Text + "','" + tempt.Text + "','" + VStatus.SelectedValue + "','" + comments.Text + "','" + sign.Text + "')", con);
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

        protected void Unnamed_Click1(object sender, EventArgs e)
        {



            Response.Redirect("Items.aspx");
        }
    }
}