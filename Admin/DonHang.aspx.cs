using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //GridView1.Columns[3].Visible = false;
        lblThongBao.Text = "  ";
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception!=null)
        {
            lblThongBao.Text = "Có lỗi xảy ra khi cập nhật trạng thái đơn hàng. Lỗi " + e.Exception.Message;
        }
        else if (e.AffectedRows==0)
        {
            lblThongBao.Text = "Người nào đó đang thực hiện. Cố gắng thử lại!";
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lblThongBao.Text = "  ";
    }

    protected void GridView1_Load(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        if (row!=null)
        {
            lblThongBao.Text = row.Cells[0].Text;
        }
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        if (row != null)
        {
            lblThongBao.Text = row.Cells[0].Text;
        }
    }

    protected void ddlTrangthaidonhang_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}