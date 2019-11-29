using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string err = Request.QueryString["err"];
        if (err!=null&&!err.Equals(""))
        {
            lblThongBao.Text = "Sai tài khoản hoặc mật khẩu";
        }
        else
        {
            lblThongBao.Text = "";
        }

    }

    protected void linkDangNhap_Click(object sender, EventArgs e)
    {
        // Dùng 1 dataview để lấy kết quả trong sqlDsTaiKhoan
        DataView dv = (DataView)SqlDsTaiKhoan.Select(DataSourceSelectArguments.Empty);

        // Lấy số dòng của dataview
        int num = 0;
        try
        {
            num = dv.Count;
        }
        catch (Exception)
        {
            Response.Redirect("DangNhapAdmin.aspx?err=notOk");
        }
        if (num > 0)// Trường hợp đăng nhập thành công
        {
            // Tạo đối tượng thuộc lớp tài khoản
            TaiKhoan userLogin = new TaiKhoan();

            userLogin.TenTaiKhoan = txtTenTaiKhoan.Text;
            userLogin.MatKhau = txtMatKhau.Text;
            

            Session.Add("User", userLogin);
            Session.Add("TenDangNhap", userLogin.TenTaiKhoan);

            lblThongBao.Text = "";

            //// Chuyển trang trang chủ admin
            Response.Redirect("TrangChuAdmin.aspx");
        }
        else
        {
            Response.Redirect("DangNhapAdmin.aspx?err=notOk");
        }

    }

}