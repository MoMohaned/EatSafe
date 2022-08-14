using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC4
{
    public partial class Details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();

                
                if (!Page.IsPostBack)
                {

                    con.Open();

                    SqlCommand Comm1 = new SqlCommand("select * from SC4 where Id =" + Convert.ToInt32(Session["sc4id"]) + "", con);

                    SqlDataReader DR1 = Comm1.ExecuteReader();
                    if (DR1.Read())
                    {
                        date.Text = DR1.GetValue(1).ToString();
                        food.Text = DR1.GetValue(2).ToString();
                        hhtime.Text = DR1.GetValue(3).ToString();
                        chours2.Text = DR1.GetValue(4).ToString();
                        chours4.Text = DR1.GetValue(5).ToString();
                        chours6.Text = DR1.GetValue(6).ToString();
                        comments.Text = DR1.GetValue(7).ToString();
                        sign.Text = DR1.GetValue(8).ToString();

                    }
                    con.Close();


                }

            }
            else
            {
                SiteMaster.username = "";
                Response.Redirect("~/Default.aspx");
            }


        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("items.aspx");
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("update SC4 set Date = '" + date.Text + "' ,Food = '" + food.Text + "',HHTime = '" + hhtime.Text + "', CoreTemp2 = '" + chours2.Text + "', CoreTemp4 = '" + chours4.Text + "', CoreTemp6 = '" + chours6.Text + "' ,Comments = '" + comments.Text + "', Sign = '"+sign.Text+"' where Id =" + Convert.ToInt32(Session["sc4id"]) + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("items.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}