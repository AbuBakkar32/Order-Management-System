using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Order : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.gridview();
            }
        }

        public void gridview()
        {
            string query = @"select * from orders";
            if (op.executeQuery(query) == 1) 
            {
                GridView1.DataSource = op.GetDataTable(query);
                GridView1.DataBind();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = @"select *
                        from orders
                where OrderID like '" + TextBox11.Text + "%'";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.gridview();
        }

        protected void Unnamed11_Click(object sender, EventArgs e)
        {
            string query = @"insert into orders
                          values('" + TextBox6.Text + "','" + TextBox7.Text + "')";
            if (op.executeQuery(query) == 1)
            {
                this.gridview();
                TextBox6.Text = "";
                TextBox7.Text = "";
                this.gridview();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Opps!!! Something Wrong')</script>");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            string query = @"update orders
                           set CustomerID ='"+TextBox7.Text+"' where OrderID='"+TextBox6.Text+"'";
            if (op.executeQuery(query) == 1) 
            {
                
                this.gridview();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Opps!! Try Again')", true);
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label oid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"delete from orders 
                              where OrderID='" + oid.Text + "'";
            if (op.executeQuery(query) == 1)
            {
                             
                this.gridview();
            }
            else
            {
                //Response.Write("<script>alert('Opps!! Try Again')</script>");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Opps!! Try Again')", true);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Label oId = gr.FindControl("Label1") as Label;
            Label cid = gr.FindControl("Label2") as Label;

            TextBox6.Text = oId.Text;
            TextBox7.Text = cid.Text;
            
        }
    }
}
