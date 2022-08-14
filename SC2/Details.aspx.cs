using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC2
{
    public partial class Details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();

                itid.Text = Session["sc2id"].ToString();

                if (!Page.IsPostBack)
                {

                    con.Open();

                    SqlCommand Comm1 = new SqlCommand("select * from SC2 where Id =" + Convert.ToInt32(Session["sc2id"]) + "", con);

                    SqlDataReader DR1 = Comm1.ExecuteReader();
                    if (DR1.Read())
                    {
                        unitname.Text = DR1.GetValue(1).ToString();
                        date.Text = DR1.GetValue(2).ToString();
                        am.Text = DR1.GetValue(3).ToString();
                        pm.Text = DR1.GetValue(4).ToString();
                        comments.Text = DR1.GetValue(5).ToString();
                        sign.Text = DR1.GetValue(6).ToString();
                        
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

        protected void edit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("update SC2 set  Unit = '"+unitname.Text+"' ,Date = '" + date.Text + "', AM = '" + am.Text + "', PM = '" + pm.Text + "', Comments = '" + comments.Text + "', Signed = '" + sign.Text + "' where id =" + itid.Text + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("/SC2/Items.aspx");

            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SC2/Items.aspx");


        }
    }
}