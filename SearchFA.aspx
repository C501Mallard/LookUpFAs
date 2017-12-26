<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchFA.aspx.cs" Inherits="SearchFA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <!-- Bootstrap core CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        /*.panel-heading {
             background-color:#91f2a5;
            color:#147643;
        }

        .panel-body {
           background-color: #caf3cd;
           color:#147643;
        }*/

        #searchlist {
            height: 85%;
        }

        /*範例連結:https://codepen.io/manikantag/pen/qdeELg*/
        .startclick {
            font-size: 20px;
            color: rgba(0,0,0,0.3);
            width: 28px;
            height: 28px;
            cursor: pointer;
        }

            .startclick #startspan {
                margin-left: 4px;
                margin-top: 3px;
                z-index: 999;
                position: absolute;
            }

                .startclick #startspan:hover {
                    opacity: 0.8;
                }

                .startclick #startspan:active {
                    transform: scale(0.93,0.93) translateY(2px);
                }

        .ring, .ring2 {
            opacity: 0;
            background: grey;
            width: 1px;
            height: 1px;
            position: absolute;
            /*top: 19px;
            left: 18px;*/
            /*border-radius: 50%;*/
            cursor: pointer;
        }

        .active #startspan, .active-2 #startspan {
            color: #F5CC27;
        }

        .active-2 .ring {
            /*width: 28px;
            height: 18px;
            top: -2px !important;
            left: -2px !important;*/
            position: absolute;
            /*border-radius: 50%;*/
            opacity: 1;
        }

        /*.active-2 .ring {
            background: #F5CC27;
        }

        .active-2 .ring2 {
            background: #fff;
        }*/

        .active-3 .ring2 {
            /*width: 30px;
            height: 30px;*/
            /*top: -3px;
            left: -3px;*/
            position: absolute;
            /*border-radius: 50%;*/
            opacity: 1;
        }

        .info {
            font-family: 'Open Sans', sans-serif;
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
            white-space: nowrap;
            color: grey;
            position: relative;
            opacity: 0;
            transition: all 0.3s ease;
        }

        .info-tog {
            color: #F5CC27;
            position: relative;
            opacity: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <%--<div class="col-lg-12">
            <h1 class="page-header">類別查詢</h1>
        </div>--%>
        <%-- <form id="form1" runat="server">--%>
        <br />
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT ClassName FROM FA_Class"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource2" DataTextField="ClassName" AutoPostBack="true" CssClass="alert-success form-control">
            </asp:DropDownList>
           
            <hr />
            <asp:Repeater ID="rptResult" runat="server">

                <ItemTemplate>
                    <div class="alert alert-success" role="alert" id="SearchFAlistID">
                        <div class="panel-info">
                            <div class="panel-heading">
                                <table class="table2">
                                    <tr>
                                        <td>
                                            <h4>
                                                <a data-toggle="collapse" data-parent="#SearchFAlistID" href="#<%#Eval("ClassingFA_ID") %>" style="color:#1a5214;">
                                                    <%#Eval("ChtName") %>  ，【 <%#Eval("EngName") %> 】
                                                </a>
                                            </h4>
                                        </td>
                                        <td>
                                            <div class="startclick">
                                                <span id="startspan" class="fa fa-star-o"></span>
                                                <div class="ring"></div>
                                                <div class="ring2"></div>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="startclick">
                                                <p class="info">Added to favourites!</p>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="<%#Eval("ClassingFA_ID") %>" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <table class="table1">
                                        <tr>
                                            <td style="width: 120px">範圍和劑量：</td>
                                            <td><%#Eval("UsageRangeDosageLimit") %></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 120px">使用限制：</td>
                                            <td><%#Eval("UsageLimit") %></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 120px">規格：</td>
                                            <td>
                                                <%# checkEmptyLink( Eval("ClassingFASpec"))%>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div style="overflow: hidden;">
                <asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnPage"
                            Style="padding: 4px; margin: 2px; background: #1a9b58; border: solid 1px #666; font: 8pt tahoma;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                            runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <%-- </form>--%>
    </div>

    <script>
        //調整標題列 HighLight (Active) 的項目
        $(function () {
            $("#LookUpFAs").addClass("active");
        });
    </script>
</asp:Content>

