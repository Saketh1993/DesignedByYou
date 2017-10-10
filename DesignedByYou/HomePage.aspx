<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="DesignedByYou.HtmlPage" %>

<%--<asp:Content ID="content2" ContentPlaceHolderID="head" runat="server">
        <%--<link href="Styles/MyTheme.css" rel="stylesheet" />
</asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $('#myCarousel').carousel({
            pause: 'none'
        })

    </script>
    <style type="text/css">
        @import url(//fonts.googleapis.com/css?family=Lato:300);

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

            *:before, *:after {
                box-sizing: border-box;
                padding: 0;
                margin: 0;
            }

        body {
            font-family: Lato, Arial, "Hiragino Kaku Gothic Pro W3", Meiryo, sans-serif;
            background-color: #f1f1f1;
            color: #464646;
            text-align: center;
            margin: 0 auto;
        }

            body a, body a:visited {
                color: #555;
                text-decoration: none;
            }

                body a:hover {
                    color: #444;
                }

        article figure::after, article figure .image, article figure .lighting, article .item-content {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        article .item-wrapper, article .item-content {
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
        }

        article .item-wrapper, article figure, article .item-content {
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
        }

        article {
            position: relative;
            display: inline-block;
            vertical-align: top;
            width: calc(33.33% - 4%);
            height: 24vw;
            margin: 1.8%;
            -webkit-perspective: 1600px;
            perspective: 1600px;
            cursor: pointer;
        }

            article .item-wrapper {
                width: 100%;
                height: 100%;
                box-shadow: 0 0 4px rgba(0, 0, 0, 0.1);
            }

                article .item-wrapper::before {
                    content: '';
                    position: absolute;
                    top: 5%;
                    left: 5%;
                    width: 90%;
                    height: 90%;
                    -webkit-transition: all .2s ease-in;
                    transition: all .2s ease-in;
                    box-shadow: 0 8px 38px rgba(0, 0, 0, 0.86);
                }

                article .item-wrapper:hover::before {
                    box-shadow: 0 14px 64px rgba(0, 0, 0, 0.92);
                }

                article .item-wrapper.enter.ease, article .item-wrapper.leave {
                    -webkit-transition: all .1s ease-in;
                    transition: all .1s ease-in;
                }

            article figure {
                width: 100%;
                height: 100%;
            }

                article figure::after {
                    content: '';
                    background-color: rgba(0, 0, 0, 0.06);
                }

                article figure .image {
                    background-position: center;
                    background-size: cover;
                }

                article figure .lighting {
                    background: -webkit-linear-gradient(315deg, rgba(255, 255, 255, 0.24) 0%, rgba(255, 255, 255, 0) 100%);
                    background: linear-gradient(135deg, rgba(255, 255, 255, 0.24) 0%, rgba(255, 255, 255, 0) 100%);
                }

            article .item-content {
                pointer-events: none;
                padding: 20% 20px 20px;
                color: #fff;
                text-shadow: 0 3px 10px rgba(0, 0, 0, 0.76);
            }

                article .item-content h1 {
                    margin-bottom: 5%;
                    -webkit-transform: translateZ(100px);
                    transform: translateZ(100px);
                }

                article .item-content p {
                    font-size: 13px;
                    margin-bottom: 5%;
                    -webkit-transform: translateZ(50px);
                    transform: translateZ(50px);
                }

                article .item-content .author {
                    -webkit-transform: translateZ(70px);
                    transform: translateZ(70px);
                }

        @media (max-width: 860px) {
            article {
                width: calc(50vw - 3.9vw);
                height: 38vw;
            }
        }

        @media (max-width: 667px) {
            article {
                width: calc(100vw - 3.9vw);
                height: 60vw;
            }
        }
    </style>



    <div id="background-carousel">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="item active" style="background-image: url(https://farm6.staticflickr.com/5835/23411294075_786e13e9ca_o.jpg)"></div>
                <div class="item" style="background-image: url(https://images.alphacoders.com/458/458630.jpg)"></div>
                <div class="item" style="background-image: url(http://eskipaper.com/images/photo-brunette-girl-dress-fashion-1.jpg)"></div>

            </div>
        </div>
    </div>


    <div id="content-wrapper">
        <!-- PAGE CONTENT -->
        <div class="container">
            <div class="page-header">
                <br />
                <center style="color: #000000; text-decoration: none; text-shadow: 2px 1px 1px #080000;"><p  class="title">
                       Designed by you !!   <i class="glyphicon glyphicon-scissors"></i>
                    </p></center>
            </div>
            <%--<ul class="cards">


                <li class="cards__item">
                    <div class="card">
                        <div class="card__image card__image--Jacket"></div>
                        <div class="card__content">
                            <div class="card__title">Jacket</div>
                            <p class="card__text">This defines the ability for a flex item to grow if necessary. It accepts a unitless value that serves as a proportion. It dictates what amount of the available space inside the flex container the item should take up.</p>
                            <a href="JacketHome.aspx" class="btn btn--block card__btn"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                        </div>
                    </div>
                </li>
                <li class="cards__item">
                    <div class="card">
                        <div class="card__image card__image--Skirt"></div>
                        <div class="card__content">
                            <div class="card__title">Skirt</div>
                            <p class="card__text">This defines the ability for a flex item to shrink if necessary. Negative numbers are invalid.</p>
                            <a href="Skirt.aspx" class="btn btn--block card__btn"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                        </div>
                    </div>
                </li>
                <li class="cards__item">
                    <div class="card">
                        <div class="card__image card__image--Dress"></div>
                        <div class="card__content">
                            <div class="card__title">Dress</div>
                            <p class="card__text">This defines the default size of an element before the remaining space is distributed. It can be a length (e.g. 20%, 5rem, etc.) or a keyword. The auto keyword means "look at my width or height property."</p>
                            <a href="DressHome.aspx" class="btn btn--block card__btn"><i class="glyphicon glyphicon-shopping-cart"></i></a>
                        </div>
                    </div>
                </li>
            </ul>--%>
            <!-- End Well -->
            <article>
                <div class="item-wrapper" id="Dress">
                    <figure>
                        <div class="image" style="background-image: url(http://www.kzdress.com/wp-content/uploads/2016/06/Formal-Dresses-For-Women-1466259558-2016.jpg);"></div>
                        <div class="lighting"></div>
                    </figure>
                    <div class="item-content">
                        <h1>Dress</h1>
                        <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit</p>
                        <div class="author">Jordan Quinn</div>
                    </div>
                </div>
            </article>
            <article>
                <div class="item-wrapper" id="skirt">
                    <figure>
                        <div class="image" style="background-image: url(https://i.pinimg.com/736x/46/b6/59/46b65908336126e2f1453de8d8632a52--navy-outfits-skirt-outfits.jpg);"></div>
                        <div class="lighting"></div>
                    </figure>
                    <div class="item-content">
                        <h1>Skirts</h1>
                        <p>Donec pede justo fringilla vel aliquet nec vulputate eget arcu</p>
                        <div class="author">Edna Hardy</div>
                    </div>
                </div>
            </article>
            <article>
                <div class="item-wrapper" id="Jacket">
                    <figure>
                        <div class="image" style="background-image: url(https://images.express.com/is/image/expressfashion/0098_08923262_0625?cache=on&wid=361&fmt=jpeg&qlt=75,1&resmode=sharp2&op_usm=1,1,5,0&defaultImage=Photo-Coming-Soon);"></div>
                        <div class="lighting"></div>
                    </figure>
                    <div class="item-content">
                        <h1>Jacket</h1>
                        <p>In enim justo rhoncus ut imperdiet a venenatis vitae justo</p>
                        <div class="author">Kayla	Beck</div>
                    </div>
                </div>
            </article>
            <script>
                var articles = $('article > .item-wrapper'),
                lightingRgb = '255,255,255';

                articles.mousemove(function (e) {
                    var current = $(this),
                        x = current.width() - e.offsetX * 2,
                        y = current.height() - e.offsetY * 2,
                        rx = -x / 30,
                        ry = y / 24,
                        deg = Math.atan2(y, x) * (180 / Math.PI) + 45;
                    current.css({ "transform": "scale(1.05) rotateY(" + rx + "deg) rotateX(" + ry + "deg)" });
                    $('figure > .lighting', this).css('background', 'linear-gradient(' + deg + 'deg, rgba(' + lightingRgb + ',0.32) 0%, rgba(' + lightingRgb + ',0) 100%)');
                });

                articles.on({
                    'mouseenter': function () {
                        var current = $(this);
                        current.addClass('enter ease').removeClass("leave");
                        setTimeout(function () {
                            current.removeClass('ease');
                        }, 280);
                    },
                    'mouseleave': function () {
                        var current = $(this);
                        current.css({ "transform": "rotate(0)" });
                        current.removeClass('enter').addClass("leave");
                        $('figure > .lighting', this).removeAttr('style');
                    }
                }
                );

                $("#skirt").click(function () {
                    document.location.href = "SkirtHome.aspx";
                })
                $("#Dress").click(function () {
                    document.location.href = "DressHome.aspx";
                })
                $("#Jacket").click(function () {
                    document.location.href = "JacketHome.aspx";
                })

            </script>
        </div>
        <!-- End Container -->
        <!-- PAGE CONTENT -->
    </div>








</asp:Content>
