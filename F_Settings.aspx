<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F_Settings.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container MSZH">
        <br />
        <br />
        <h5 class="MSZH">您的帳號資訊:</h5>
        <h5 class="MSZH">您可在本頁更新「性別」、「生日」與「體重」，我們會在後續的功能中，加強對您推播訊息的優化。</h5>

        <%--        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>"
            SelectCommand="SELECT UID, AccountName, Auth_Way, Token, Gender, Weight, Birthday, JoinDate, AdminGroup, Enabled FROM Users WHERE (UID ='5cZaCPp8FyYOeLioxJ38KhuBI9h2')"
            UpdateCommand="update [users] set Gender=@Gender,Weight=@Weight,Birthday=@Birthday where UID='5cZaCPp8FyYOeLioxJ38KhuBI9h2'">
                        <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="String" DefaultValue="" Name="AAA" PropertyName="Text" />
            </SelectParameters>

            <UpdateParameters>
                <asp:Parameter Name="Weight" Type="Int64" />
                <asp:Parameter Name="Birthday" Type="DateTime" />
            </UpdateParameters>

        </asp:SqlDataSource>--%>
        <%--        <asp:DetailsView ID="DetailsView1" runat="server" CssClass="MSZH" AutoGenerateRows="False" DataKeyNames="UID" DataSourceID="SqlDataSource1"
            AutoGenerateEditButton="true">
            <Fields>
                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" />
                <asp:BoundField DataField="AccountName" HeaderText="AccountName" ReadOnly="True" SortExpression="AccountName" />
                <asp:BoundField DataField="Auth_Way" HeaderText="Auth_Way" ReadOnly="True" SortExpression="Auth_Way" />
                <asp:BoundField DataField="Token" HeaderText="Token" ReadOnly="True" SortExpression="Token" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="JoinDate" HeaderText="JoinDate" ReadOnly="True" SortExpression="JoinDate" />
                <asp:BoundField DataField="AdminGroup" HeaderText="AdminGroup" ReadOnly="True" SortExpression="AdminGroup" />
                <asp:BoundField DataField="Enabled" HeaderText="Enabled" ReadOnly="True" SortExpression="Enabled" />


                <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Weight" SortExpression="Weight">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Weight") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Birthday" SortExpression="Birthday">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

            </Fields>
        </asp:DetailsView>--%>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>"
            SelectCommand="SELECT * FROM [Users] WHERE UID ='5cZaCPp8FyYOeLioxJ38KhuBI9h2'"
            UpdateCommand="update [users] set Gender=@Gender,Weight=@Weight,Birthday=@Birthday where UID='5cZaCPp8FyYOeLioxJ38KhuBI9h2'">
            <UpdateParameters>
                <asp:Parameter Name="Birthday" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="UID" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HeaderText="用戶資訊" HorizontalAlign="Center">
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <Fields>
                <%--                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" />
                <asp:BoundField DataField="AccountName" HeaderText="AccountName"  ReadOnly="True" SortExpression="AccountName" />
                <asp:BoundField DataField="Auth_Way" HeaderText="Auth_Way"  ReadOnly="True" SortExpression="Auth_Way" />
                <asp:BoundField DataField="Token" HeaderText="Token"  ReadOnly="True" SortExpression="Token" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="JoinDate" HeaderText="JoinDate"  ReadOnly="True" SortExpression="JoinDate" />
                <asp:BoundField DataField="AdminGroup" HeaderText="AdminGroup"  ReadOnly="True" SortExpression="AdminGroup" />
                <asp:BoundField DataField="Enabled" HeaderText="Enabled"   ReadOnly="True" SortExpression="Enabled" />--%>


                <asp:TemplateField HeaderText="UID 用戶序號" SortExpression="UID">

                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("UID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("UID") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="10em" Wrap="False" />
                    <ItemStyle Width="30em" Wrap="False" />
                </asp:TemplateField>

                <asp:TemplateField HeaderText="帳號名稱" SortExpression="AccountName">

                    <EditItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("AccountName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("AccountName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>



                <asp:TemplateField HeaderText="認證方式" SortExpression="Auth_Way">

                    <EditItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Auth_Way") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Auth_Way") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="IID" SortExpression="Token">

                    <EditItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Token") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Token") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="性別(M/F)" SortExpression="Gender">

                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Width="100%" Text='<%# Bind("Gender") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="體重(公斤)" SortExpression="Weight">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Width="100%" Text='<%# Bind("Weight") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Weight") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="生日" SortExpression="Birthday">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Width="100%" Text='<%# Bind("Birthday") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Birthday") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="加入日" SortExpression="JoinDate">

                    <EditItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("JoinDate") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("JoinDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="管理者" SortExpression="AdminGroup">

                    <EditItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("AdminGroup") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("AdminGroup") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="啟用" SortExpression="Enabled">

                    <EditItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("Enabled") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("Enabled") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

            </Fields>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:DetailsView>




        <asp:TextBox ID="TextBox1" runat="server" CssClass="NotFun" Visible="False"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="查詢" OnClick="Button1_Click" Visible="False" />
    </div>
    <script>
        //調整標題列 HighLight (Active) 的項目
        $(function () {
            $("#Settings").addClass("active");
        });
    </script>
    <script>
        //叫出Firebase登錄資訊
        console.log("個人資訊設定");
        //console.log("Session", sessionStorage);
        console.log(localStorage.getItem("UID"));
        //console.log(localStorage.getItem("Email"));
        //console.log(localStorage.getItem("photoURL"));
        //console.log(localStorage.getItem("displayName"));
        //console.log(localStorage.getItem("emailVerified"));
        //console.log(localStorage.getItem("isAnonymous"));
        //console.log(localStorage.getItem("phoneNumber"));
        //console.log(localStorage.getItem("lastSignInTime"));
        //console.log(localStorage.getItem("creationTime"));
        $(function () {
            $("#ContentPlaceHolder1_TextBox1").text(localStorage.getItem("UID"));
        });

        $(".NotFun").val(localStorage.getItem("UID"));

    </script>

</asp:Content>

