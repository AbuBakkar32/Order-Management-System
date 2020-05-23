using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class MasterCustomer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("MailLogin.aspx");
            }
            else
            {
                session();
            }
        }
        public void session()
        {
            Label2.Text = Session["id"].ToString();
        }
    }
}