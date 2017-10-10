<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="SizeChart.aspx.cs" Inherits="DesignedByYou.SizeChart" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h4 {
            margin-top: 50px;
        }

            h4 span {
                font-size: 13px;
                color: grey;
            }

        [class^="col-"] {
            /*background-color: #eee;*/
            border: 1px solid #ddd;
            text-align: center;
            overflow: hidden;
            height: 50px;
            padding-top: 10px;
            font-weight: bold;
        }
    </style>
    <div class="container">
        <br />

        <br />
        <h1 class="page-header">Size Chart</h1>
        <h4>UPPER PARTS/DRESSES			
        </h4>
        <hr />

        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">
            <div class="col-xs-3 col-md-3">
                SIZE
            </div>
            <div class="col-xs-3 col-md-3">
                BUST
            </div>
            <div class="col-xs-3 col-md-3">WAIST</div>
            <div class="col-xs-3 col-md-3">
                HIP

            </div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">



            <div class="col-xs-3 col-md-3">XS</div>
            <div class="col-xs-3 col-md-3">33.5</div>
            <div class="col-xs-3 col-md-3">25</div>
            <div class="col-xs-3 col-md-3">35.5</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">


            

            <div class="col-xs-3 col-md-3">S</div>
            <div class="col-xs-3 col-md-3">35.5</div>
            <div class="col-xs-3 col-md-3">27</div>
            <div class="col-xs-3 col-md-3">37.5</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">


            <div class="col-xs-3 col-md-3">M</div>
            <div class="col-xs-3 col-md-3">37.5</div>
            <div class="col-xs-3 col-md-3">29</div>
            <div class="col-xs-3 col-md-3">39.5</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">


            <div class="col-xs-3 col-md-3">L</div>
            <div class="col-xs-3 col-md-3">39.5</div>
            <div class="col-xs-3 col-md-3">31</div>
            <div class="col-xs-3 col-md-3">42</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">
            <div class="col-xs-3 col-md-3">XL</div>
            <div class="col-xs-3 col-md-3">42</div>
            <div class="col-xs-3 col-md-3">33.5</div>
            <div class="col-xs-3 col-md-3">44.5</div>
        </div>
    </div>
    <div class="container" style="padding-bottom: 60px;">
        <br />

        <h4>BOTTOMS			
		
        </h4>
        <hr />

        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">
            <div class="col-xs-3 col-md-3">
                SIZE
            </div>
            <div class="col-xs-3 col-md-3">
                BUST
            </div>
            <div class="col-xs-3 col-md-3">WAIST</div>
            <div class="col-xs-3 col-md-3">
                HIP

            </div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">




            <div class="col-xs-3 col-md-3">OO</div>
            <div class="col-xs-3 col-md-3">32.5</div>
            <div class="col-xs-3 col-md-3">24</div>
            <div class="col-xs-3 col-md-3">34.5</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">



            <div class="col-xs-3 col-md-3">S</div>
            <div class="col-xs-3 col-md-3">35.5</div>
            <div class="col-xs-3 col-md-3">27</div>
            <div class="col-xs-3 col-md-3">37.5</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">


            <div class="col-xs-3 col-md-3">O</div>
            <div class="col-xs-3 col-md-3">33.5</div>
            <div class="col-xs-3 col-md-3">25</div>
            <div class="col-xs-3 col-md-3">35.5</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">



            <div class="col-xs-3 col-md-3">2</div>
            <div class="col-xs-3 col-md-3">35</div>
            <div class="col-xs-3 col-md-3">26.5</div>
            <div class="col-xs-3 col-md-3">37</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">


            <div class="col-xs-3 col-md-3">4</div>
            <div class="col-xs-3 col-md-3">36.5</div>
            <div class="col-xs-3 col-md-3">28</div>
            <div class="col-xs-3 col-md-3">38.5</div>
        </div>

        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">


            <div class="col-xs-3 col-md-3">6</div>
            <div class="col-xs-3 col-md-3">38</div>
            <div class="col-xs-3 col-md-3">29.5</div>
            <div class="col-xs-3 col-md-3">40</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">


            <div class="col-xs-3 col-md-3">8</div>
            <div class="col-xs-3 col-md-3">39.5</div>
            <div class="col-xs-3 col-md-3">31</div>
            <div class="col-xs-3 col-md-3">41.5</div>
        </div>
        <div class="row col-md-offset-1 col-md-10 col-md-offset-1">


            <div class="col-xs-3 col-md-3">10</div>
            <div class="col-xs-3 col-md-3">41</div>
            <div class="col-xs-3 col-md-3">32.5</div>
            <div class="col-xs-3 col-md-3">43</div>


        </div>

    </div>
</asp:Content>
