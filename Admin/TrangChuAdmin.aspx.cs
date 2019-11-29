using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Chart1.Series["Series1"].IsValueShownAsLabel = true;
        //Chart1.Series["Series1"].Points[2].Label = "My Point Label\nLabel Line #2";
    }

    protected void Chart1_Load(object sender, EventArgs e)
    {
        
    }
}