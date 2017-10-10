using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DesignedByYou
{
    public partial class JacketHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string path = "Images/Jacket/Design/";
            DirectoryInfo d = new DirectoryInfo(@"C:/Users/saki/Documents/Visual Studio 2013/Projects/DesignedByYou/DesignedByYou/Images/Jacket/Design");
            // string directory = "C:/Users/saki/Documents/Visual Studio 2013/Projects/DesignedByYou/DesignedByYou/Images/Jacket/Jacket_" + btn.Text.Trim();
            FileInfo[] Files = d.GetFiles("*.*"); //Getting Text files

            // string str = null;
            //int i = 1;
            foreach (FileInfo file in Files)
            {
                //str = str + ", " + file.Name;
                //str = "Dress" + i.ToString();

                //if (file.Name.ToString().Contains(str))
                //{
                // container1.InnerHtml += @"<div class='col-xs-12 col-sm-6 col-md-4'><div class='panel single-blog'><img src=" + path + file.Name.ToString().Trim() + " height='180' align='center'  class='img-responsive'  alt=''><div class='content'><ul class='list-unstyled list-inline'><li></li><li></li></ul></div></div></div>";
                // imgJacket.Src = path + file.Name.ToString();
                //<a href='PropertyDetail.aspx?ID=" + dr["HNO"].ToString().Trim() + "'><p style='font-size:16px;font-family: 'Times New Roman', Georgia, Serif;'>" + dr["Description"].ToString().Substring(0, 50) + "</p><a href='#' class='read-more' style='font-size:10px;font-family: 'Times New Roman', Georgia, Serif;' >Read more</a>
                // continue;
                //  }    
                ImageButton img = new ImageButton();
                img.ImageUrl = path + file.Name.ToString().Trim();
                img.CssClass = "col-xs-12 col-sm-6 col-md-3 col-md-offsset-1  col panel single-blogs img-responsive";
                img.Attributes.Add("style", "margin-left: 60px;");
                img.Height = 300;
                img.Width = 220;
                img.ID = file.Name.ToString().Trim();
                //img.ID = file.Name;
                this.container1.Controls.Add(img);
                //img.Click += new EventHandler(img_Click);
                // Page.Form.Controls.Add(img);
                // i++;
                img.Click += new ImageClickEventHandler(img_Click);


            }

        }

        public void img_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgBtn = sender as ImageButton;
            string id = imgBtn.ID;

            // ScriptManager.RegisterStartupScript(Page, this.GetType(), "alert", string.Format("alert('{1}', '{0}');","COnfirm" , Title), true);
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "showError",
            "alert('" + id + "');", true);
            Response.Redirect("~/Jacket.aspx?Name=" + id + "");
        }
    }
}