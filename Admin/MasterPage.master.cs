using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    Label1.Text = "Xin chào, " + Session["TenDangNhap"].ToString();
        //}
        //catch (Exception)
        //{
        //    Response.Redirect("DangNhapAdmin.aspx");

        //}


        if (Session["TenDangNhap"] == null)
        {
            Response.Redirect("DangNhapAdmin.aspx");
        }
        else
        {
            Label1.Text = "Xin chào, " + Session["TenDangNhap"].ToString();
        }
        
    }

    //Add the following method
    protected string SetCssClass(string page)
    {
        string [] arr = Request.Url.AbsolutePath.ToLower().Split('/');
        foreach (string item in arr)
        {
            if (item.ToLower().Equals(page.ToLower()))
            {
                return "pcoded-trigger";
            }
        }
        return "";
    }


    protected void linkDangXuat_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
        Response.Redirect("DangNhapAdmin.aspx");
    }


}
