<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="C_MyFaviFA.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <div class="container">
        <br/>
        <h4 class="MSZH">這裡有您所設定的「我的最愛」食品添加物:</h4>

        <br/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT Users.* FROM Users
where uid = @uid">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="String" Name="uid" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <%--<asp:GridView ID="GridView1" runat="server" CssClass="NotFun"></asp:GridView>--%>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="NotFun" Width="30%"></asp:TextBox>
        <%--<input id="Text1" type="text" value=""/>--%>
        <asp:Button ID="Button1" runat="server" Text="查詢「我的最愛」" OnClick="Button1_Click" />
        
        <hr />

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT FavoriteCFA.UID, FA_Class.ClassName, FavoriteCFA.ClassingFA_ID, ClassingFA.ChtName, ClassingFA.EngName, ClassingFA.Class_ID FROM FavoriteCFA INNER JOIN ClassingFA ON FavoriteCFA.ClassingFA_ID = ClassingFA.ClassingFA_ID INNER JOIN FA_Class ON ClassingFA.Class_ID = FA_Class.Class_ID WHERE (FavoriteCFA.UID = @uuid) ORDER BY ClassingFA.ClassingFA_ID">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="String" Name="uuid" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="MSZH" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" HorizontalAlign="Center" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" Visible="False">
                </asp:BoundField>
                <asp:BoundField DataField="Class_ID" HeaderText="類別編號" SortExpression="Class_ID" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="ClassName" HeaderText="類別名稱" SortExpression="ClassName" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="ClassingFA_ID" HeaderText="分類添加物編號" SortExpression="ClassingFA_ID">
                    <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="ChtName" HeaderText="中文品名" SortExpression="ChtName">
                    <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="EngName" HeaderText="英文品名" SortExpression="EngName" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
    </div>

    <script>
        //調整標題列 HighLight (Active) 的項目
        $(function () {
            $("#MyFaviFA").addClass("active");
        });
    </script>

    <script>
        //$("NotFun").html("<tbody><tr></tr></tbody>");
        console.log("D.這裡是我的最愛" + localStorage.getItem("uid"));
        $(".NotFun").val(localStorage.getItem("uid"));
        //$("#Text1").val(localStorage.getItem("UID"));
        //var a = "aaa";
        //$("#Text1").text(a);
    </script>
</asp:Content>

