using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tintuc : System.Web.UI.Page
{
    static int currentposition = 0;
    static int totalrows = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindata();
        }
    }
    private void bindata()
    {
        String mycon = "Data Source=.\\SQLEXPRESS; Initial Catalog=QlBanOto; Integrated Security=True";
        String myquery = "select * from TinTuc  ORDER BY NgayTao DESC";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        totalrows = ds.Tables[0].Rows.Count;
        DataTable dt = ds.Tables[0];
        PagedDataSource pg = new PagedDataSource();
        pg.DataSource = dt.DefaultView;
        pg.AllowPaging = true;
        pg.CurrentPageIndex = currentposition;
        pg.PageSize = 4;
        ViewState["LastPage"] = pg.PageCount - 1;
        btnTrangDau.Enabled = !pg.IsFirstPage;
        btnQuayLai.Enabled = !pg.IsFirstPage;
        btnTiep.Enabled = !pg.IsLastPage;
        btnTrangCuoi.Enabled = !pg.IsLastPage;
        //Binding pg to datalist
        DataList2.DataSource = pg;//dl is datalist
        DataList2.DataBind();

        con.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        currentposition = 0;
        bindata();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (currentposition == totalrows - 1)
        {

        }
        else
        {
            currentposition = currentposition - 1;
            bindata();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (currentposition == totalrows - 1)
        {

        }
        else
        {
            currentposition = currentposition + 1;
            bindata();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        currentposition = Convert.ToInt32(ViewState["LastPage"]);
        bindata();
    }
}