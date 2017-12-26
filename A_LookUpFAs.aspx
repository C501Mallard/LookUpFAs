<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="A_LookUpFAs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h1></h1>
    </div>
    <div class="container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT FA_Class.Class_ID, FA_Class.ClassName, ClassingFA.ClassingFA_ID, ClassingFA.ChtName, ClassingFA.EngName FROM ClassingFA INNER JOIN FA_Class ON ClassingFA.Class_ID = FA_Class.Class_ID WHERE (ClassingFA.ChtName LIKE '%' + @TextBox1 + '%')">
            <SelectParameters>
                <%--<asp:ControlParameter ControlID="RadioButtonList1" Name="TableSource" PropertyName="SelectedValue" DefaultValue="" DbType="String" />--%>
                <asp:ControlParameter ControlID="TextBox1" Name="TextBox1" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>

        <br />

        <div class="input-group">
            <asp:Label ID="Label1" runat="server" Text="關鍵字查詢:" CssClass="MSZH input-group-addon"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="MSZH form-control"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="送出" CssClass="btn btn-primary btn-sm MSZH" />
        </div>
        <br />

        <hr />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>

        <asp:GridView ID="GridView1" runat="server" CssClass="MSZH" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Groove" BorderWidth="4px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="查詢" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>


        <br />
    </div>
    <script>
        //調整標題列 HighLight (Active) 的項目
        $(function () {
            $("#LookUpFAs").addClass("active");
        });
    </script>
</asp:Content>

