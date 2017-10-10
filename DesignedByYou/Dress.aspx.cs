using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DesignedByYou.DAL;

namespace DesignedByYou
{
    public partial class Dress : System.Web.UI.Page
    {
        public static string[] str = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Dress = Request.QueryString["Name"].ToString().Trim().Split('.').First().Split('_').First().ToString();
            if (!Page.IsPostBack)
            {
                string imgPath = "~/Images/Dress/" + Request.QueryString["Name"].ToString();
                imgJacket.Src = imgPath;
                imgJacket.Height = 300;
                imgJacket.Width = 150;
                //   string path = "~/Images/Jacket/";
                DirectoryInfo d = new DirectoryInfo(@"C:/Users/saki/Documents/Visual Studio 2013/Projects/DesignedByYou/DesignedByYou/Images/Dress");
                // string directory = "C:/Users/saki/Documents/Visual Studio 2013/Projects/DesignedByYou/DesignedByYou/Images/Jacket/Jacket_" + btn.Text.Trim();
                FileInfo[] Files = d.GetFiles("*.*"); //Getting Text files
                str = new string[Files.Count()];
                int i = 0;
                foreach (FileInfo file in Files)
                {
                    //str = str + ", " + file.Name;
                    str[i] = file.Name;
                    i++;
                }


            }
            foreach (string color in str)
            {

                string name = color.Split('.').First();
                if (name.Contains(Dress + "_"))
                {
                    // string imgPath = "~/Images/Dress/" + Request.QueryString["Name"].ToString();
                    Button btn = new Button();
                    btn.ID = name;
                    btn.Text = name.Split('_').Last();
                    //  btn.Style.Add("background:", (imgPath));
                    //imgJacket.Src = imgPath;
                    btn.Click += new System.EventHandler(btn_Click);
                    divcolor.Controls.Add(btn);
                }


            }
            lblPrice.Text = "$98";
            // Description.InnerHtml = " Product Details /n Off-white and navy striped knitted boxy top, has a round neck, short extended sleeves Material & Care <hr />Material & Care \n Viscose rayon\n Machine-wash";
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string path = "~/Images/Dress/";
            DirectoryInfo d = new DirectoryInfo(@"C:/Users/saki/Documents/Visual Studio 2013/Projects/DesignedByYou/DesignedByYou/Images/Dress");
            //  string directory = "C:/Users/saki/Documents/Visual Studio 2013/Projects/DesignedByYou/DesignedByYou/Images/Dress/Dress_" + btn.Text.Trim();
            FileInfo[] Files = d.GetFiles("*.*"); //Getting Text files
            string[] str = new string[100];
            int i = 0;
            foreach (FileInfo file in Files)
            {
                //str = str + ", " + file.Name;
                str[i] = file.Name;

                if (str[i].ToString().Contains(btn.ID))
                {
                    imgJacket.Src = path + str[i].ToString();
                    imgJacket.Height = 300;
                    imgJacket.Width = 150;
                    break;
                }
                i++;
            }
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx?Img=" + imgJacket.Src.Trim() + "");
        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            double price = Convert.ToDouble(Session["Price"]);
            string name = "div" + imgJacket.Src.Trim().ToString().Split('/').Last().Split('.').First();

            if (HttpContext.Current.Session["Cart"] != null)
            {
                if (!Session["Cart"].ToString().Contains(name))
                {
                    Session["Price"] = price + Convert.ToDouble(lblPrice.Text.Replace('$', ' ').Trim());
                }
            }
            else
            {
                Session["Price"] = price + Convert.ToDouble(lblPrice.Text.Replace('$', ' ').Trim());
            }
                        // string str = lblPrice.Text.Replace('$', ' ').Trim();
            // str = Common.Encrypt(str.ToString());
            Session["Price1"] = Convert.ToDouble(lblPrice.Text.Replace('$', ' ').Trim());
            // double pr = Convert.ToDouble(Common.Encrypt(str));
            //  double pr1 = Convert.ToDouble(Common.Decrypt(str.ToString()));
            Response.Redirect("Cart.aspx?Add=" + imgJacket.Src.Trim() + "");
        }


    }
}