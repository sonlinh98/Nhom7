﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ThemXeMoi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (FileUpload1.HasFile)
        {
                string path = ConfigurationManager.AppSettings["XeImagePath"].ToString() + FileUpload1.FileName;
            FileUpload1.SaveAs(path);
        }
    }
}