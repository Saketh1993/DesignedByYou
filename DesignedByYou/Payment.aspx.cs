using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DesignedByYou.DAL;

namespace DesignedByYou
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string img1 = Request.QueryString["Img"].ToString();
            //Image img = new Image();
            ////img.ImageUrl = "//c1.staticflickr.com/1/466/19681864394_c332ae87df_t.jpg";
            //img.ImageUrl = img1;
            //img.CssClass = "img-responsive";
            //divImage.Controls.Add(img);
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            
        }
    }
}