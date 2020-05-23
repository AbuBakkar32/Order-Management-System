using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Product : System.Web.UI.Page
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
            string query = @"select *
                        from product";
            if (op.execute(query) == 1)
            {
                GridView1.DataSource = op.GetDataTable(query);
                GridView1.DataBind();
            }
        }
        protected void Unnamed11_Click(object sender, EventArgs e)
        {
            string query = @"insert into product
                          values('" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
            if (op.executeQuery(query) == 1)
            {
                this.gridview();
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                this.gridview();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Opps!!! Something Wrong')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = @"select *
                        from product
                where ProductID like '" + TextBox11.Text + "%'";
            GridView1.DataSource = op.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.gridview();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label pid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label5");
            string query = @"delete from product where ProductID='"+ pid .Text+ "'";
            if(op.executeQuery(query) == 1)
            {
                //Response.Write("<script>alert('Successful Deleted')</script>");
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
            Label pId = gr.FindControl("Label5") as Label;
            Label pname=gr.FindControl("Label4") as Label;
            Label pbrand=gr.FindControl("Label3") as Label;
            Label pquality=gr.FindControl("Label2") as Label;
            Label pprice=gr.FindControl("Label1") as Label;

            TextBox6.Text= pId.Text;
            TextBox7.Text= pname.Text;
            TextBox8.Text= pbrand.Text;
            TextBox9.Text= pquality.Text;
            TextBox10.Text= pprice.Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string query = @"update product
                           set ProductName='" + TextBox7.Text + "', BrandName ='" + TextBox8.Text + "', Quality='" + TextBox9.Text + "',UnitCost='" + TextBox10.Text + "' where ProductID='" + TextBox6.Text + "' ";
            if (op.executeQuery(query) == 1)
            {
              
                this.gridview();
            }
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Opps!! Try Again')", true);
            }
        }
    }
}
