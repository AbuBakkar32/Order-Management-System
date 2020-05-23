using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class CustomerProfile : System.Web.UI.Page
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
            string query = @"select *
                        from customer
                        where CustomerName='" + Session["id"] + "'";
            if (op.execute(query) == 1)
            {
                GridView1.DataSource = op.GetDataTable(query);
                GridView1.DataBind();
            }
            else
            {
                //Response.Write("Try Agin");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;

            Label cId = gr.FindControl("Label7") as Label;
            Label cname = gr.FindControl("Label6") as Label;
            Label cgender = gr.FindControl("Label5") as Label;
            Label ccity = gr.FindControl("Label4") as Label;
            Label caddress = gr.FindControl("Label3") as Label;
            Label cphone = gr.FindControl("Label2") as Label;
            Label cmail = gr.FindControl("Label1") as Label;

            CID.Text = cId.Text;
            Cname.Text = cname.Text;
            cgender.Text = cgender.Text;
            country.Text = ccity.Text;
            caddress.Text = caddress.Text;
            Cphone.Text = cphone.Text;
            Cmail.Text = cmail.Text;
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

        protected void Button4_Click1(object sender, EventArgs e)
        {
            string query = @"update customer
                           set CustomerName='" + Cname.Text + "', Gender ='" + cgender.Text + "',Country='" + country.Text + "',Address='" + caddress.Text + "',Phone='" + Cphone.Text + "',Email='" + Cmail.Text + "' where CustomerID='" + CID.Text + "' ";
            if (op.executeQuery(query) == 1)
            {

                this.customer();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Opps!! Try Again')", true);
            }
        }
    }
}