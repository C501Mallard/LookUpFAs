using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchEn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected string checkEmptyLink(object ob)
    {
        string typ = ob.ToString();

        if (typ == "")
        {
            return "沒有資料可供下載";
        }
        else
        {
            return "<a  href=\"" + typ + "\">檔案下載</a>";
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "SELECT * FROM [ClassingFA] where EngName like '" + DropDownList1.SelectedItem.Text +"%'";
        //GridView1.DataBind();
        Label1.Text = DropDownList1.SelectedItem.Text;
    }
}