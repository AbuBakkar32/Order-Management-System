using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class LoginCustomer : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string query = @"select CustomerName,Password  from customer where CustomerName='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
            if (op.execute(query) == 1)
            {
                Session["id"] = TextBox1.Text;
                Response.Redirect("HomeCustomer.aspx");
            }
            else
            {
                Label1.Text = "You're username Or Password is incorrect";
            }
        }
    }
}