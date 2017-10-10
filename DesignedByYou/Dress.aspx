<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dress.aspx.cs" EnableEventValidation="false" Inherits="DesignedByYou.Dress" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%--<asp:content id="content1" contentplaceholderid="head" runat="server">
</asp:content>--%>
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
                <a href="SizeChart.aspx">size chart</a>
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

            <%--<div class="col-md-8">
                <p id="Description" runat="server">
                </p>

            </div>
            <div class="col-md-4">--%>
            <%-- Price:
                <asp:Label ID="lblPrice" runat="server" Style="margin-top: 30px; color: red; font-size: 30px" Height="30" Width="30"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" CssClass="btn-primary" Text="Add to Cart" Height="35px" Style="margin-left: 30px; margin-top: 10px;" runat="server" OnClick="btnAddtoCart_Click" />
                <asp:Button ID="Button2" CssClass="btn-primary" Text="Buy Now" Height="35px" Style="margin-left: 20px; margin-top: 10px;" runat="server" OnClick="btnSelect_Click" />--%>
            <%-- </div>--%>

            <%-- <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

            <!-- ModalPopupExtender -->
            <asp:UpdatePanel ID="updatePanel1" runat="server">
                <ContentTemplate>
                    <asp:LinkButton ID="lnkSizeChart" runat="server" Text="Size Chart"></asp:LinkButton>
                    <asp:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="lnkSizeChart"
                        CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                    </asp:ModalPopupExtender>
                    <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" Style="display: none">
                        This is an ASP.Net AJAX ModalPopupExtender Example<br />
                        <asp:Button ID="btnClose" runat="server" Text="Close" />
                    </asp:Panel>
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="lnkSizeChart" />
                </Triggers>
            </asp:UpdatePanel>--%>
            <style type="text/css">
                .modalBackground {
                    background-color: Black;
                    filter: alpha(opacity=90);
                    opacity: 0.8;
                }

                .modalPopup {
                    background-color: #FFFFFF;
                    border-width: 3px;
                    border-style: solid;
                    border-color: black;
                    padding-top: 10px;
                    padding-left: 10px;
                    width: 300px;
                    height: 140px;
                }
            </style>
        </div>
        <br />
        <br />
        <br />
        <br />
    </div>

</asp:Content>
