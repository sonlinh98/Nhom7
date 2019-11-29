using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;

public partial class HangXe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    //{
    //    FileUpload f = (FileUpload)GridView1.FindControl("fuSua");
    //    if (f.FileName.ToString() != "")
    //    {
    //        f.SaveAs(MapPath("~/Admin/images/" + f.FileName));
    //    }
    //}

    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    FileUpload f = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("fuSua");
    //    TextBox txb = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
    //    if (f.FileName.ToString() != "")
    //    {
    //        e.NewValues["Anh"] = "~/Admin/images/" + f.FileName.ToString();
    //    }
    //    else
    //        e.OldValues["Anh"] = txb.Text;
    //}
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //up server
        FileUpload f = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("fuSua");
        TextBox txb = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        //up data
        if (f.HasFile)
        {
            String path = Server.MapPath("~/Admin/images/");
            f.PostedFile.SaveAs(path + f.FileName);
            e.NewValues["Anh"] =  f.FileName.ToString();
        }
        else
            e.OldValues["Anh"] = txb.Text;
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblLoi.Text = "Một lỗi xảy ra khi xóa dữ liệu.";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblLoi.Text = "Một người dùng khác có thể đang cập nhật dữ liệu.";
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lblLoi.Text = "";
    }


    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        if (txtTenHang.Text!=null)
        {
            string command = SqlDataSource1.SelectCommand; // added just for debug purpose
            SqlDataSource1.SelectCommand = "SELECT  * from HANG_XE where TenHang LIKE '%"+txtTenHang.Text+"%'";
                                        
            SqlDataSource1.DataBind();

            GridView1.DataSource = null;

            GridView1.DataBind();

        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtTenHang.Text = "";
        SqlDataSource1.SelectCommand = "SELECT  * from HANG_XE";

        SqlDataSource1.DataBind();

        GridView1.DataSource = null;

        GridView1.DataBind();
    }
}
