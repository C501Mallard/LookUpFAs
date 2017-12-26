<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchEn.aspx.cs" Inherits="SearchEn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Bootstrap core CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        .Enfirst {
            color: royalblue;
            text-size-adjust: unset;
            font-weight: 800;
            font-size: large;
        }

        .dir {
            color: black;
            text-size-adjust: unset;
            font-weight: 800;
            font-size: large;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%-- <form id="form1" runat="server">--%>
    <div class="container">
        <%-- <div class="col-lg-12">
            <h1 class="page-header">英文查詢</h1>
        </div>--%>
        <br />
        <div class="dir">


            
            <%--<div class="Enfirst">
             <a href="#aa">A</a>、<a href="#bb">B</a>、<a href="#cc">C</a>、<a href="#dd">D</a>、
             <a href="#ee">E</a>、<a href="#ff">F</a>、<a href="#gg">G</a>、<a href="#hh">H</a>、
             <a href="#ii">I</a>、<a href="#kk">K</a>、<a href="#ll">l</a>、<a href="#mm">M</a>、
             <a href="#nn">N</a>、<a href="#oo">O</a>、<a href="#pp">P</a>、<a href="#qq">Q</a>、
             <a href="#rr">R</a>、<a href="#ss">S</a>、<a href="#tt">T</a>、<a href="#uu">U</a>、
             <a href="#vv">V</a>、<a href="#xx">X</a>、<a href="#zz">Z</a>、<a href="#ww">α</a>、
             <a href="#yy">β</a>--%>

            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="alert-warning form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                <asp:ListItem >A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>D</asp:ListItem>
                <asp:ListItem>E</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
                <asp:ListItem>G</asp:ListItem>
                <asp:ListItem>H</asp:ListItem>
                <asp:ListItem>I</asp:ListItem>
                <asp:ListItem>K</asp:ListItem>
                <asp:ListItem>l</asp:ListItem>
                <asp:ListItem>M</asp:ListItem>
                <asp:ListItem>N</asp:ListItem>
                <asp:ListItem>O</asp:ListItem>
                <asp:ListItem>P</asp:ListItem>
                <asp:ListItem>Q</asp:ListItem>
                <asp:ListItem>R</asp:ListItem>
                <asp:ListItem>S</asp:ListItem>
                <asp:ListItem>T</asp:ListItem>
                <asp:ListItem>U</asp:ListItem>
                <asp:ListItem>V</asp:ListItem>
                <asp:ListItem>X</asp:ListItem>
                <asp:ListItem>Z</asp:ListItem>
                <asp:ListItem>α</asp:ListItem>
                <asp:ListItem>β</asp:ListItem>
            </asp:DropDownList>

            <asp:Label ID="Label2" runat="server" Text="請選擇英文字母開頭"></asp:Label>
        </div>



        <hr />
        <div class="dir">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>">
                <%--<SelectParameters>
                    <asp:ControlParameter Name="EngName" ControlID="DropDownList1" Type="String" />
                </SelectParameters>--%>
            </asp:SqlDataSource>
            <asp:Repeater ID="rptResult" runat="server" DataSourceID="SqlDataSource2">

                <ItemTemplate>
                    <div class="alert alert-warning" role="alert" id="SearchFAlistID">
                        <div class="panel-info">
                            <div class="panel-heading">
                                <table class="table2">
                                    <tr>
                                        <td>
                                            <h4>
                                                <a data-toggle="collapse" data-parent="#SearchFAlistID" href="#<%#Eval("ClassingFA_ID") %>" style="color: #1a5214;">
                                                    <%#Eval("ChtName") %>  ，【 <%#Eval("EngName") %> 】
                                                </a>
                                            </h4>
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
        </div>


















        <%-- <div class="dir">

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>">--%>
        <%--<SelectParameters>
                 <asp:ControlParameter Name="EngName" ControlID="DropDownList1" Type="String" />
             </SelectParameters>--%>


        <%--</asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="EngName" HeaderText="EngName" SortExpression="EngName" />
                </Columns>

                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />

            </asp:GridView>



        </div>

      
    </div>--%>
</asp:Content>

