using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class ProductCustomer : System.Web.UI.Page
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
    }
}