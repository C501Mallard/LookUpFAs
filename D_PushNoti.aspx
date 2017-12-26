<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="D_PushNoti.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container">
        <br/>
        <h4 class="MSZH">這裡有您過去所收到的所有推播紀錄:</h4>

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
        <asp:Button ID="Button1" runat="server" Text="查詢紀錄" OnClick="Button1_Click" />
        
        <hr />

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT Group_Members.UID, Group_Members.GroupID, PushNotification.PN_ID, PushNotification.PN_Title, PushNotification.PN_Content, PushNotification.PN_DateTime FROM PushNotification INNER JOIN Group_Members ON PushNotification.GroupID = Group_Members.GroupID WHERE (Group_Members.UID = @uuid) ORDER BY PushNotification.PN_DateTime DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="String" Name="uuid" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="MSZH" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UID,GroupID,PN_ID" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" Visible="False">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="GroupID" HeaderText="推播群組" ReadOnly="True" SortExpression="GroupID" >
                <HeaderStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="PN_ID" HeaderText="推播序號" ReadOnly="True" SortExpression="PN_ID" >
                <HeaderStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="PN_Title" HeaderText="標題" SortExpression="PN_Title">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PN_Content" HeaderText="內容" SortExpression="PN_Content">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PN_DateTime" HeaderText="推播日時" SortExpression="PN_DateTime" />
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
            $("#PushNoti").addClass("active");
        });
    </script>

    <script>
        //$("NotFun").html("<tbody><tr></tr></tbody>");
        console.log("D.這裡是推播紀錄頁" + localStorage.getItem("uid"));
        $(".NotFun").val(localStorage.getItem("uid"));
        //$("#Text1").val(localStorage.getItem("UID"));
        //var a = "aaa";
        //$("#Text1").text(a);
    </script>



</asp:Content>

