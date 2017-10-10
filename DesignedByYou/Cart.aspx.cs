using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DesignedByYou.DAL;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;

namespace DesignedByYou
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {

                    //double pr1;
                    if (Request.UrlReferrer.ToString() != Request.Url.AbsoluteUri)
                    {
                        // Console.WriteLine(Session["Price"].ToString());
                        //if (Request.QueryString["Price"] != null)
                        //{
                        //    //string str = Common.Decrypt(Request.QueryString["Price"].ToString());
                        //    //double price = Convert.ToDouble(str);
                        //     pr1 = Convert.ToDouble(Common.Decrypt(Request.QueryString["Price"].ToString().Trim()));
                        //}
                        if (Request.QueryString["Delete"] != null)
                        {
                            DeleteItem_Click(Request.QueryString["Delete"].ToString().Trim());
                        }
                        if (Request.QueryString["Add"] != null)
                        {

                            //pr1 = Convert.ToDouble(Common.Decrypt(Request.QueryString["Price"].ToString().Trim()));
                            string img = Request.QueryString["Add"].ToString().Trim();
                            string name = "div" + Request.QueryString["Add"].ToString().Split('/').Last().Split('.').First();
                            if (img.StartsWith("~"))
                            {
                                img = img.Substring(2, img.Length - 2);
                            }
                            string lblID = "lbl" + Request.QueryString["Add"].ToString().Split('/').Last().Split('.').First();
                            //if()
                            //string Add = Request.QueryString["Add"].ToString();

                            string str = "<div id=" + name + " runat='server' class='row'><div class='col-xs-2'><img class='img-responsive' src=" + img + " alt=''></div><div class='col-xs-4'><h4 class='product-name'><strong>Product name</strong></h4><h4><small>Product description</small></h4></div><div class='col-xs-6'><div class='col-xs-6 text-right'><label id=" + lblID.Trim() + " runat='server' >" + Session["Price1"] + "$</label> <h6><strong><span class='text-muted'></span></strong></h6></div><div class='col-xs-4'></div><div class='col-xs-2'><a href='Cart.aspx?Delete=" + name + "' class='btn btn-link btn-xs'><span class='glyphicon glyphicon-trash'></span></a></div></div></div> <hr>";
                            if (HttpContext.Current.Session["Cart"] != null)
                            {
                                if (!Session["Cart"].ToString().Contains(str))
                                {
                                    Session["Cart"] += str;
                                    divpanel.InnerHtml = " <div class='panel-heading'> <div class='panel-title'><div class='row'><div class='col-xs-6'><h5><span class='glyphicon glyphicon-shopping-cart'></span>Shopping Cart</h5></div><div class='col-xs-6'><a href='HomePage.aspx' class='btn btn-primary btn-sm btn-block'><span class='glyphicon glyphicon-share-alt'></span>Continue shopping</a> </div></div></div></div><div class='panel-body'>" + Session["Cart"] + "<div class='col-md-offset-6 col-md-4 col-md-2'><a href='' class='col-md-offset-6 col-md-4 col-md-offset-2 btn btn-primary btn-sm btn-block btn btn-primary btn-sm btn-block' style='width:120px;' type='submit'>Pay:" + Session["Price"].ToString() + "</a></div>";
                                }
                                else
                                {
                                    //Session["Price"] = Convert.ToDouble(Session["Price"]) - Convert.ToDouble(Session["Price1"]);
                                    divpanel.InnerHtml = " <div class='panel-heading'> <div class='panel-title'><div class='row'><div class='col-xs-6'><h5><span class='glyphicon glyphicon-shopping-cart'></span>Shopping Cart</h5></div><div class='col-xs-6'><a href='HomePage.aspx' class='btn btn-primary btn-sm btn-block'><span class='glyphicon glyphicon-share-alt'></span>Continue shopping</a> </div></div></div></div><div class='panel-body'>" + Session["Cart"] + "<div class='col-md-offset-6 col-md-4 col-md-2'><a href='' class='col-md-offset-6 col-md-4 col-md-offset-2 btn btn-primary btn-sm btn-block' style='width:120px;' type='submit'>Pay:" + Session["Price"].ToString() + "</a></div>";
                                }
                            }

                            else
                            {
                                Session["Cart"] += str;
                                divpanel.InnerHtml = " <div class='panel-heading'> <div class='panel-title'><div class='row'><div class='col-xs-6'><h5><span class='glyphicon glyphicon-shopping-cart'></span>Shopping Cart</h5></div><div class='col-xs-6'><a href='HomePage.aspx' class='btn btn-primary btn-sm btn-block'><span class='glyphicon glyphicon-share-alt'></span>Continue shopping</a> </div></div></div></div><div class='panel-body'>" + Session["Cart"] + "<div class='col-md-offset-6 col-md-4 col-md-2'><a href='' class='col-md-offset-6 col-md-4 col-md-offset-2 btn btn-primary btn-sm btn-block' style='width:120px;' type='submit'>Pay:" + Session["Price"].ToString() + "</a></div>";

                            }

                        }
                        else
                        { divpanel.InnerHtml = " <div class='panel-heading'> <div class='panel-title'><div class='row'><div class='col-xs-6'><h5><span class='glyphicon glyphicon-shopping-cart'></span>Shopping Cart</h5></div><div class='col-xs-6'><a href='HomePage.aspx' class='btn btn-primary btn-sm btn-block'><span class='glyphicon glyphicon-share-alt'></span>Continue shopping</a> </div></div></div></div><div class='panel-body'>" + Session["Cart"] + "<div class='col-md-offset-6 col-md-4 col-md-2'><a href='' class='col-md-offset-6 col-md-4 col-md-offset-2 btn btn-primary btn-sm btn-block' style='width:120px;' type='submit'>Pay:" + Session["Price"].ToString() + "</a></div>"; }
                    }

                    else
                    {
                        divpanel.InnerHtml = " <div class='panel-heading'> <div class='panel-title'><div class='row'><div class='col-xs-6'><h5><span class='glyphicon glyphicon-shopping-cart'></span>Shopping Cart</h5></div><div class='col-xs-6'><a href='HomePage.aspx' class='btn btn-primary btn-sm btn-block'><span class='glyphicon glyphicon-share-alt'></span>Continue shopping</a> </div></div></div></div><div class='panel-body'>" + Session["Cart"] + "<div class='col-md-offset-6 col-md-4 col-md-2'><a href='' class='col-md-offset-6 col-md-4 col-md-offset-2 btn btn-primary btn-sm btn-block' style='width:120px;' type='submit'>Pay:" + Session["Price"].ToString() + "</a></div>";
                    }
                }
                catch (Exception)
                {

                }
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            divpanel.InnerHtml = " <div class='panel-heading'> <div class='panel-title'><div class='row'><div class='col-xs-6'><h5><span class='glyphicon glyphicon-shopping-cart'></span>Shopping Cart</h5></div><div class='col-xs-6'><a href='HomePage.aspx' class='btn btn-primary btn-sm btn-block'><span class='glyphicon glyphicon-share-alt'></span>Continue shopping</a> </div></div></div></div><div class='panel-body'>" + Session["Cart"] + "<div class='col-md-offset-6 col-md-4 col-md-2'><a href='' class='col-md-offset-6 col-md-4 col-md-offset-2 btn btn-primary btn-sm btn-block' style='width:120px;' type='submit'>Pay:" + Session["Price"].ToString() + "</a></div>";
        }

        public void DeleteItem_Click(string ID)
        {

            // Response.Redirect("HomePage.aspx");

            try
            {
                string Lbl = ID.Replace("div", "lbl").Split('_').First().Trim();
                int s1 = Session["Cart"].ToString().IndexOf(Lbl + " runat='server' >");
                int s2 = Session["Cart"].ToString().Trim().Substring(s1, 30).IndexOf("</");
                string val = (Session["Cart"].ToString().Trim().Substring(s1 + 26, 5).ToString());
                // string text = "first second";
                //string reg = @"^[0-9]+$";
                //string st = "";
                //Match m = Regex.Match(val, reg, RegexOptions.CultureInvariant);

                string numericPhone = new String(val.ToCharArray().Where(c => Char.IsDigit(c)).ToArray());

                Session["Price"] = Convert.ToDouble(Session["Price"]) - Convert.ToDouble(numericPhone.Trim());
                int start = Session["Cart"].ToString().IndexOf("<div id=" + ID);
                //int end = Session["Cart"].ToString().Trim().Substring(start, 1000).IndexOf("<hr>");

                string str = Session["Cart"].ToString().Trim().Substring(start, 730);
                int end = str.IndexOf("<hr>");
                string Data = Session["Cart"].ToString().Substring(start, start + end + 4);
                ////644
                Session["Cart"] = Session["Cart"].ToString().Replace(Data, "");

            }
            catch (Exception)
            {
                int start = Session["Cart"].ToString().IndexOf("<div id=" + ID);
                string str = Session["Cart"].ToString().Trim().Substring(start, Session["Cart"].ToString().Length - start);
                // int end = str.IndexOf("<hr>");
                // string Data = Session["Cart"].ToString().Substring(start, start + end + 4);
                //644
                Session["Cart"] = Session["Cart"].ToString().Replace(str, "");
            }

        }

    }
}
