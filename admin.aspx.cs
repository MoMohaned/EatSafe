using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();

            }
            else
            {
                SiteMaster.username = "";
                Response.Redirect("Default.aspx");
            }
        }
    }
}