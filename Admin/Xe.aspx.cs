using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Xe : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bntUpload_Click(object sender, EventArgs e)
    {
        //GridViewRow row = (GridViewRow)GridView2.Parent.Parent;
        //FileUpload FileUpload1 = row.FindControl("FileUpload1") as FileUpload;
        //Label lblThongBaoUpload = row.FindControl("lblThongBaoUpload") as Label;

        //int sizeLimit = 777000;
        //if (FileUpload1.HasFile)
        //{
        //    if (FileUpload1.PostedFile.ContentLength <= sizeLimit)
        //    {
        //        string path = ConfigurationManager.AppSettings["XeImagePath"].ToString() + FileUpload1.FileName;
        //        FileUpload1.SaveAs(path);
        //        lblThongBaoUpload.Text = "File đã được up lên " + path;
        //    }
        //    else
        //    {
        //        lblThongBaoUpload.Text = "File có kích thước quá lớn.";
        //    }
        //}
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        int sizeLimit = 1077000;
        if (FileUpload2.HasFile)
        {
            if (FileUpload2.PostedFile.ContentLength <= sizeLimit)
            {
                string path = ConfigurationManager.AppSettings["XeImagePath"].ToString() + FileUpload2.FileName;
                FileUpload2.SaveAs(path);
            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
   
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lbthongbao.Text = "Một số lỗi đã sảy ra khi xóa dữ liệu"
                + "Message" + e.Exception.Message;
        }
        else if(e.AffectedRows == 0)
        {
            lbthongbao.Text = "Có một người đang sử lí dữ liệu này.<br/><br/>"
                + "Cố gắng thử lại!";
        }
    }
}