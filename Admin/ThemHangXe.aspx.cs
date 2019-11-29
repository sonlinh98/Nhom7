using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ThemHangXe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        //up server
        FileUpload f = (FileUpload)FormView1.FindControl("fuThemHangXe");
        String path = Server.MapPath("~/Admin/images/");
        f.PostedFile.SaveAs(path + f.FileName);
        //up data
        SqlDataSource1.InsertParameters["Anh"].DefaultValue = f.FileName;
    }

    protected void InsertCancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("HangXe.aspx");
    }

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception != null){
            lbLoi.Text = "Có 1 lỗi xảy ra khi thêm hãng xem!Vui lòng thử lại!";
            e.ExceptionHandled = true;
        }
        else
        {
            Response.Redirect("HangXe.aspx");
        }
    }
}