<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="DesignedByYou.Cart" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">
        document.onkeydown = function my_onkeydown_handler() {
            switch (event.keyCode) {
                case 116: //F5 button
                    event.returnValue = false;
                    event.keyCode = 0;
                    return false;
                case 82: //R button
                    if (event.ctrlKey) {
                        event.returnValue = false;
                        event.keyCode = 0;
                        return false;
                    }
            }
        }
    </script>

    <div class="container" onload="return my_onkeydown_handler()">
        <br />
        <br />
        <br />
        <div class="row">
            <div class="col-xs-8">
                <br />
                <br />
                <br />
                <div id="divpanel" runat="server" class="panel panel-info">
                </div>


            </div>
        </div>
    </div>

</asp:Content>
