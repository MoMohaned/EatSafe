using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC2
{
    public partial class Items : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);
        public int itemid;
        public int forid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();


                show();
            }
            else
            {
                SiteMaster.username = "";
                Response.Redirect("Default.aspx");
            }
            }
        private void show()
        {
            {

                string strSQL = "Select * from SC2";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                showdata.DataSource = ds;
                showdata.DataBind();
            }
        }

        protected void showdata_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "date_dt")
            {
                //details.Visible = true;
                Session["sc2id"] = e.CommandArgument;
                itemid = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("Details.aspx");

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SC2/ADDITEM_SC2.aspx");

        }
    }
}