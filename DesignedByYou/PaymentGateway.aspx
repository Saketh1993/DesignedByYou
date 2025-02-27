﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentGateway.aspx.cs" Inherits="DesignedByYou.PaymentGateway" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <div style="color: #324143; margin: 30px 0 0 60px; font-family: Arial;">
        <span style="font-size: small;">Your Name:</span>
        <asp:TextBox runat="server" ValidationGroup="save" ID="txtName" Style="margin-left: 30px; width: 200px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPurpose"
            ErrorMessage="Please enter your Name" runat="server"
            ValidationGroup="save" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <span style="font-size: small;">Your Email Id:</span><asp:TextBox runat="server" ValidationGroup="save"
            Style="margin-left: 20px; width: 200px;"
            ID="txtEmailId"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ControlToValidate="txtEmailId" ValidationGroup="save"
            ErrorMessage="Invalid Email Format"
            ForeColor="red"></asp:RegularExpressionValidator><br />
        <br />
        <span style="font-size: small;">Your Phone No:</span>
        <asp:TextBox runat="server" ID="txtPhone" ValidationGroup="save" Style="margin-left: 6px; width: 200px;"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPhone"
            ForeColor="red" ErrorMessage="Invalid Phone No"
            ValidationGroup="save" ValidationExpression="^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <span style="font-size: small;">Enter Amount:</span><asp:TextBox runat="server" ID="txtAmount" ValidationGroup="save"
            Style="margin-left: 16px; width: 200px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtAmount"
            runat="server" ForeColor="red" ErrorMessage="Please enter the amount."></asp:RequiredFieldValidator>
        <br />
        <br />
        <span style="font-size: small;">Currency:</span>
        <asp:DropDownList runat="server" ID="ddlCurrency" Style="margin-left: 42px; width: 204px;">
            <asp:ListItem>- Select -</asp:ListItem>
            <asp:ListItem>INR</asp:ListItem>
            <asp:ListItem>USD</asp:ListItem>
            <asp:ListItem>EURO</asp:ListItem>
            <asp:ListItem>Pound</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <span style="font-size: small;">Your Purpose:</span><asp:TextBox TextMode="MultiLine"
            Rows="10" runat="server" ID="txtPurpose"
            Height="50px"
            Style="margin-left: 17px; margin-left: 19px; width: 200px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtPurpose"
            ErrorMessage="Can not be left blank" ValidationGroup="save"
            runat="server" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnPay" runat="server" Text="Pay Now" CssClass="button" Style="font-size: 12px; cursor: pointer; height: 27px; margin-left: 207px; margin-top: 10px; width: 93px;"
            ValidationGroup="save" OnClick="btnPay_Click"></asp:Button>
    </div>
</asp:Content>
