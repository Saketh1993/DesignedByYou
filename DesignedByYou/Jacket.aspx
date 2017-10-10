<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Jacket.aspx.cs" Inherits="DesignedByYou.clothing.Jackets" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row">
            <br />
            <br />
            <br />
            <br />
            <div class="col-md-7 center-block">


                <img src="~/Images/Jacket/Jacket_black.PNG" id="imgJacket" runat="server" height="400" width="250" />

            </div>
            <br />
            <br />
            <div runat="server" class="col-md-offset-1 col-md-4 text-center">
                <div id="divcolor" runat="server" style="border: 1px solid #b5b4b7; padding: 20px 10px 20px 10px;">

                    <p class="text-center">Pick Your Color</p>
                    <%-- <asp:Button ID="btnRed" Text="Red" Style="background-color: red; color: white" runat="server" OnClick="btnRed_Click" />
                <asp:Button ID="btnBlack" Text="Black" Style="background-color: black; color: white" runat="server" OnClick="btnBlack_Click" />--%>
                </div>
                <br />

                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="XS"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="S"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="M"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="L"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="XL"></asp:Button>
                <br />
                <a href="SizeChart.aspx">size chart</a>
                <br />
                Price:
                <asp:Label ID="lblPrice" runat="server" Style="margin-top: 30px; color: red; font-size: 30px" Height="30" Width="30"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnAddtoCart" CssClass="btn-primary" Text="Add to Cart" Height="35px" Style="margin-left: 50px; margin-top: 10px;" runat="server" OnClick="btnAddtoCart_Click" />
                <asp:Button ID="btnBuy" CssClass="btn-primary" Text="Buy Now" Height="35px" Style="margin-left: 20px; margin-top: 10px;" runat="server" OnClick="btnBuy_Click" />
                <%-- <asp:Button ID="btnSelect" CssClass="btn-primary" Text="Buy Now" Height="35px" Style="margin-left: 240px; margin-top: 30px;" runat="server" OnClick="btnSelect_Click" />--%>
            </div>
            <div class="row">

                <%-- <div class="col-md-8">
                <p id="Description" runat="server">
                </p>

            </div>--%>
                <%--<div class="col-md-4">
                <%-- Price:
                <asp:Label ID="lblPrice" runat="server" Style="margin-top: 30px; color: red; font-size: 30px" Height="30" Width="30"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnAddtoCart" CssClass="btn-primary" Text="Add to Cart" Height="35px" Style="margin-left: 50px; margin-top: 10px;" runat="server" OnClick="btnAddtoCart_Click" />
                <asp:Button ID="btnBuy" CssClass="btn-primary" Text="Buy Now" Height="35px" Style="margin-left: 20px; margin-top: 10px;" runat="server" OnClick="btnBuy_Click" />--%>
            </div>


        </div>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
