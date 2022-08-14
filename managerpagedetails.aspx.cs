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
    public partial class managerpagedetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);

        protected void Page_Load(object sender, EventArgs e)
        {
            show();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                
                SqlCommand cmd = new SqlCommand("delete from SC5_6_7 where Id =" + Convert.ToInt32(e.CommandArgument.ToString()) +"", con);
                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
                show();
               
            }
        }

        public void show()
        {
            string strSQL = "Select * from SC5_6_7";
            SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
            DataSet ds = new DataSet();
            dt.Fill(ds);
            con.Close();
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageralPage.aspx");
        }
    }
}