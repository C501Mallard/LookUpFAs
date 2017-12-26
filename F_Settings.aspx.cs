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
        //SqlDataSource1.ConnectionString = "Data Source=C501A05;Initial Catalog=FADB;Integrated Security=True";
        //SqlDataSource1.SelectCommand = "select * from users where uid='" + TextBox1.Text + "'";
        //DetailsView1.DataSourceID = "SqlDataSource1";

        //DetailsView1.DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WY-FADBConnectionString"].ConnectionString);
        //SqlDataAdapter objda = new SqlDataAdapter("select * from users where uid='" + TextBox1.Text + "'", conn);
        SqlDataSource1.ConnectionString = "Data Source=C501A05;Initial Catalog=FADB;Integrated Security=True";
        SqlDataSource1.SelectCommand = "select * from users where uid='" + TextBox1.Text + "'";
        SqlDataSource1.UpdateCommand = "update [users] set Gender=@Gender, Weight=@Weight, Birthday=@Birthday where uid='"+ TextBox1.Text + "'";


        DetailsView1.DataSourceID = "SqlDataSource1";

        DetailsView1.DataBind();

    }

}