﻿<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="DesignedByYou._404" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .error {
            margin: 0 auto;
            text-align: center;
        }

        .error-code {
            bottom: 60%;
            color: #2d353c;
            font-size: 96px;
            line-height: 100px;
        }

        .error-desc {
            font-size: 12px;
            color: #647788;
        }

        .m-b-10 {
            margin-bottom: 10px !important;
        }

        .m-b-20 {
            margin-bottom: 20px !important;
        }

        .m-t-20 {
            margin-top: 20px !important;
        }
    </style>
    <br />
    <br />
     <br />
    <br />
    <div class="error">
        <div class="error-code m-b-10 m-t-20">404 <i class="fa fa-warning"></i></div>
        <h3 class="font-bold">We couldn't find the page..</h3>

        <div class="error-desc">
            Sorry, but the page you are looking for was either not found or does not exist.
            <br />
            Try refreshing the page or click the button below to go back to the Homepage.
           
            <div>
                <a class=" login-detail-panel-button btn" href="HomePage.aspx">
                    <i class="fa fa-arrow-left"></i>
                    Go back to Homepage                        
                    </a>
            </div>
        </div>
    </div>
</asp:Content>
