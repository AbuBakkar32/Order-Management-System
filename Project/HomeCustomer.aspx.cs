using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class HomeCustomer : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                customer();
            }
        }
        public void customer()
        {
            string query = @"select customer.CustomerID,customer.CustomerName,orders.OrderID
from customer,orders
where customer.CustomerID =orders.CustomerID and customer.CustomerName='"+ Session["id"] + "'";
            if (op.execute(query) == 1)
            {
                GridView1.DataSource = op.GetDataTable(query);
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = @"select *
                        from customer
                where CustomerID like '" + TextBox8.Text + "%'";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.customer();
        }

       
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label cid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label7");
            string query = @"delete from customer where CustomerID='" + cid.Text + "'";
            if (op.executeQuery(query) == 1)
            {

                this.customer();
            }
            else
            {
                //Response.Write("<script>alert('Opps!! Try Again')</script>");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Opps!! Try Again')", true);
            }
        }

        public void gridview()
        {
            string query = @"select *
                        from product";
            if (op.execute(query) == 1)
            {
                GridView2.DataSource = op.GetDataTable(query);
                GridView2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.gridview();
            Button1.Visible = false;
            Label8.Visible = true;
        }
    }
}