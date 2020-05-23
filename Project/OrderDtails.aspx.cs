using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class OrderDtails : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.gridview();

        }

        public void allinfo()
        {
            string query = @" select customer.CustomerName,customer.Address,customer.Phone,product.ProductName,product.UnitCost,orderDtails.Quantity,product.UnitCost*orderDtails.Quantity AS TotalCost
from customer,product,orders,orderDtails
where customer.CustomerID=orders.CustomerID and product.ProductID=orderDtails.ProductID
union
select customer.CustomerName,customer.Address,customer.Phone,product.ProductName,product.UnitCost,orderDtails.Quantity,product.UnitCost*orderDtails.Quantity AS TotalCost
from customer,product,orders,orderDtails
where customer.CustomerID=orders.CustomerID and product.ProductID=orderDtails.ProductID";
            GridView2.DataSource = op.GetDataTable(query);
            GridView2.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = @"select *
                        from orderDtails
                where OrderID like '" + TextBox11.Text + "%'";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }
        public void gridview()
        {
            string query = @"select * from orderDtails";
            if (op.executeQuery(query) == 1)
            {
                GridView1.DataSource = op.GetDataTable(query);
                GridView1.DataBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.gridview();
        }

        protected void Unnamed11_Click(object sender, EventArgs e)
        {
            string query = @"insert into orderDtails
                          values('" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "')";
            if (op.executeQuery(query) == 1)
            {
                this.gridview();
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox4.Text = "";              
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Opps!!! Something Wrong')</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Label oId = gr.FindControl("Label1") as Label;
            Label pid = gr.FindControl("Label2") as Label;
            Label quantity = gr.FindControl("Label3") as Label;

            TextBox6.Text = oId.Text;
            TextBox7.Text = pid.Text;
            TextBox4.Text = quantity.Text;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label oid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"delete from orderDtails where OrderID='" + oid.Text + "'";
            if (op.executeQuery(query) == 1)
            {
                          
                this.gridview();
            }
            else
            {     
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Opps!! Try Again')", true);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string query = @"update orderDtails
                           set ProductID ='" + TextBox7.Text + "',Quantity='"+ TextBox4.Text + "' where OrderID='" + TextBox6.Text + "'";
            if (op.executeQuery(query) == 1)
            {
                
                this.gridview();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Opps!! Try Again')", true);
            }
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            this.allinfo();
            Label9.Visible = true;
        }
    }
}