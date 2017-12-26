using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WY-FADBConnectionString"].ConnectionString);
        //SqlDataAdapter objda = new SqlDataAdapter("select * from users where uid='" + TextBox1.Text + "'", conn);
        //SqlDataSource2.ConnectionString = "Data Source=williamsphere-z;Initial Catalog=FADB;Integrated Security=True";
        //SqlDataSource2.SelectCommand = "select * from users where uid='" + TextBox1.Text + "'";
        //DetailsView1.DataSourceID = "SqlDataSource12";

        //DetailsView1.DataBind();
        SqlDataSource2.DataBind();
        GridView1.DataBind();

    }
}
