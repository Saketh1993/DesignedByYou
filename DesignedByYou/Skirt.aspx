<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Skirt.aspx.cs" Inherits="DesignedByYou.clothing.Skirt" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <br />
            <br />
            <br />
            <br />
            <div class="col-md-7 center-block">
                <br />
                <img id="imgJacket" runat="server" />

            </div>
            <br />
            <br />
            <div runat="server" class="col-md-offset-1 col-md-4 text-center">
                <p class="text-center">Pick Your Color</p>
                <div id="divcolor" style="border: 1px solid #b5b4b7; padding: 20px 10px 20px 10px;" runat="server">
                </div>
                <br />
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="XS"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="S"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="M"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="L"></asp:Button>
                <asp:Button runat="server" CssClass="btn btn-primary btn-circle btn-lg" Text="XL"></asp:Button>
                <br />
                <br />
                Price:
                <asp:Label ID="lblPrice" runat="server" Style="margin-top: 30px; color: red; font-size: 30px" Height="30" Width="30"></asp:Label>
                <br />
                <asp:Button ID="Button3" CssClass="btn-primary" Text="Add to Cart" Height="35px" Style="margin-left: 30px; margin-top: 10px;" runat="server" OnClick="btnAddtoCart_Click" />
                <asp:Button ID="Button4" CssClass="btn-primary" Text="Buy Now" Height="35px" Style="margin-left: 20px; margin-top: 10px;" runat="server" OnClick="btnSelect_Click" />
                <%-- <asp:Button ID="btnRed" Text="Red" Style="background-color: red; color: white" runat="server" OnClick="btnRed_Click" />
                <asp:Button ID="btnBlack" Text="Black" Style="background-color: black; color: white" runat="server" OnClick="btnBlack_Click" />--%>
            </div>
            <br />
            <br />


            <%--<asp:Button ID="btnAddtoCart" CssClass="btn-primary" Text="Add to Cart" Height="35px" Style="margin-left: 150px; margin-top: 10px;" runat="server" OnClick="btnAddtoCart_Click" />
            <asp:Button ID="btnSelect" CssClass="btn-primary" Text="Buy Now" Height="35px" Style="margin-left: 20px; margin-top: 10px;" runat="server" OnClick="btnSelect_Click" />--%>
        </div>

        <div class="row">

            <div class="col-md-8">
                <p id="Description" runat="server">
                </p>

            </div>
            <div class="col-md-4">
                <%-- Price:
                <asp:Label ID="lblPrice" runat="server" Style="margin-top: 30px; color: red; font-size: 30px" Height="30" Width="30"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" CssClass="btn-primary" Text="Add to Cart" Height="35px" Style="margin-left: 30px; margin-top: 10px;" runat="server" OnClick="btnAddtoCart_Click" />
                <asp:Button ID="Button2" CssClass="btn-primary" Text="Buy Now" Height="35px" Style="margin-left: 20px; margin-top: 10px;" runat="server" OnClick="btnSelect_Click" />--%>
            </div>

        </div>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
