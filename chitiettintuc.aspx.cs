using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chitiettintuc : System.Web.UI.Page
{
    luotxemDataContext dt = new luotxemDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        int? so = null;
        int id = Convert.ToInt32(Request["matin"]);
        int idtin = Convert.ToInt32(Request["idtin"]);
        //lay sl sqlsever
        dt.tintuc_chiTietLuotXem(id, ref so);

        if (so == null)
        {
            so = 0;
        }
        int gt = Convert.ToInt32(so) + 1;
        dt.tintuc_chiTietSLX(gt, id);
    }
}