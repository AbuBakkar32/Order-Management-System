using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Registration1 : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        { 
            

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string query = @"insert into customer
                              values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" +RadioButtonList1.SelectedValue + "','"+ DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "')";

            if (TextBox5.Text == null || TextBox1.Text == null || TextBox2.Text == null || TextBox4.Text == null || TextBox3.Text == null || TextBox6.Text == null)
            {
                Response.Redirect("Registration.aspx");
            }
            else
            {
                if (op.executeQuery(query) == 1)
                {
                    Response.Redirect("LoginCustomer.aspx");
                }
            }
           
        }

    }
}