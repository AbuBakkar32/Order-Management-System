using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Home : System.Web.UI.Page
    {
        DataOperation op = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
               
        }

        public void customer()
        {
            string query = @"select *
                        from customer";
            if (op.execute(query) == 1)
            {
                GridView1.DataSource = op.GetDataTable(query);
                GridView1.DataBind(); 
            }          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.customer();
            Label9.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {       
            string query = @"select *
                        from customer
                where CustomerID like '"+ TextBox8.Text+ "%'";        
                GridView1.DataSource = op.GetDataTable(query);
                GridView1.DataBind();
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.customer();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homex.aspx");
           
        }

    }
}