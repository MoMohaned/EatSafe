using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC3
{
    public partial class items : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);
        public int itemid;
        public int forid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();
                string strSQL = "Select Id,Date from SC3";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                showdata.DataSource = ds;
                showdata.DataBind();

            }
            else
            {
                SiteMaster.username = "";
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ADD.aspx");
        }

        protected void showdata_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "date_dt")
            {
                //details.Visible = true;
                Session["sc3id"] = e.CommandArgument;
                itemid = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("Details.aspx");

            }
        }
    }
}