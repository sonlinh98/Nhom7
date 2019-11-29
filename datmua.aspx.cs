using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class datmua : System.Web.UI.Page
{
    private string TenTaiKhoanLogin = "son";
    private int maxe;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            // Kiểm tra đăng nhập
            //TenTaiKhoanLogin = Session["TenDangNhap"].ToString();

            int custID = 0;
            bool kq =  int.TryParse(Request.QueryString["MaXe"], out custID);

            if (kq)
            {
                maxe = custID;
            }
            else
            {
                // TH mã xe không hợp lệ
                Response.Redirect("trangchu.aspx");
            }
            
        }
        catch (Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "confirm", "var result = confirm('Bạn phải đăng nhập trước khi đặt mua xe. Bạn có muốn đăng nhập?');", true);
        }



        btnBack.OnClientClick = "javascript:window.history.go(-1);return false;";

    }

    protected void btnDatXe_Click(object sender, EventArgs e)
    {
        #region Lấy thông tin đơn hàng

        SqlDsDonHang.InsertParameters["NgayTao"].DefaultValue = DateTime.Now.ToShortDateString();

        SqlDsDonHang.InsertParameters["MaXe"].DefaultValue = maxe.ToString();


        DataView dv = (DataView)SqlDsGiaBan.Select(DataSourceSelectArguments.Empty);
        SqlDsDonHang.InsertParameters["DonGia"].DefaultValue = dv[0][0].ToString();


        SqlDsDonHang.InsertParameters["TenTaiKhoan"].DefaultValue = TenTaiKhoanLogin;

        // Hình thức thanh toán
        if (chkTrucTiep.Checked)
        {
            SqlDsDonHang.InsertParameters["HinhThucThanhToan"].DefaultValue = "Tiền mặt";
        }
        else
        {
            SqlDsDonHang.InsertParameters["HinhThucThanhToan"].DefaultValue = "Thẻ";
            SqlDsDonHang.InsertParameters["TenNganHang"].DefaultValue = ddlNganHang.SelectedValue;
            SqlDsDonHang.InsertParameters["MaTheNganHang"].DefaultValue = txtMaThe.Text;
        }

        SqlDsDonHang.InsertParameters["TrangThaiDonHang"].DefaultValue = "Tạo đơn hàng";



        // Thông tin người nhận
        string tenNguoiNhan = txtTenKH.Text;
        string diachiNguoiNhan = txtDiaChi.Text;
        string dienthoaiNguoiNhan = txtDienThoai.Text;
        SqlDsDonHang.InsertParameters["TenNguoiNhan"].DefaultValue = tenNguoiNhan;
        SqlDsDonHang.InsertParameters["DiaChiNhan"].DefaultValue = diachiNguoiNhan;
        SqlDsDonHang.InsertParameters["SDTNguoiNhan"].DefaultValue = dienthoaiNguoiNhan;
        #endregion

        #region thực hiện tạo đơn hàng mới
        try
        {
            // Cập nhật tình trạng xe
            SqlDsUpdateXe.UpdateCommand = "UPDATE XE SET [CoSan]='false' WHERE [MaXe]='" + maxe + "'";
            SqlDsUpdateXe.Update();

            // Tạo đơn hàng mới
            SqlDsDonHang.Insert();


            lblThongBao1.Text = "Đặt mua thành công";
            lblThongBao.Text = "  ";
            btnDatXe.Enabled = false;
            btnBack.OnClientClick = "";
            btnBack.PostBackUrl = "trangchu.aspx";
        }
        catch (Exception ex)
        {
            // Hiển thị thông báo lỗi
            lblThongBao1.Text = "";
            lblThongBao.Text = "Đặt mua không thành công. Lỗi " + ex.Message;
        }

        #endregion
    }

    protected void chkTrucTiep_CheckedChanged(object sender, EventArgs e)
    {
        if (chkTrucTiep.Checked)
        {
            ddlNganHang.Enabled = false;
            txtMaThe.Enabled = false;
            RequiredFieldValidator4.Enabled = false;
            RegularExpressionValidator2.Enabled = false;
        }
        else
        {
            ddlNganHang.Enabled = true;
            txtMaThe.Enabled = true;
            RequiredFieldValidator4.Enabled = true;
            RegularExpressionValidator2.Enabled = true;
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("trangchu.aspx");
    }

}