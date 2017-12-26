<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="E_LookupRec.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <br />

        <h4 class="MSZH">&nbsp;以下是您查詢紀錄的熱點分布:</h4>
        <br />
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

            <article class="MSZH">
                <p>尋找您的位置: <span id="status">checking...</span></p>
            </article>
            <!--Heapmap的圖會貼在這下面-->

            <div>
                <asp:SqlDataSource ID="sdsHeatmap" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT [LFA_ID], [LFA_Lat], [LFA_Long] FROM [LookupFA] Where [UID]=@uuid ORDER BY [LFA_ID] ">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DbType="String" Name="uuid" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="gvHeatmap" runat="server" AutoGenerateColumns="False" DataKeyNames="LFA_ID" DataSourceID="sdsHeatmap" CssClass="d-none">
                    <Columns>
                        <asp:BoundField DataField="LFA_ID" HeaderText="LFA_ID" ReadOnly="True" SortExpression="LFA_ID" />
                        <asp:BoundField DataField="LFA_Lat" HeaderText="LFA_Lat" SortExpression="LFA_Lat" />
                        <asp:BoundField DataField="LFA_Long" HeaderText="LFA_Long" SortExpression="LFA_Long" />
                    </Columns>
                </asp:GridView>
            </div>

            <br />
    </div>

    <script>
        //調整標題列 HighLight (Active) 的項目
        $(function () {
            $("#LookupRec").addClass("active");
        });
    </script>

    <%--注意這裡要放上Google Api Key，我這裡放了Browser key，Lin12的MallardPushPush專案--%>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBh7zYWVOSxIjyglIP5jxt-0eOBsSo_jDU&libraries=visualization"></script>
    <script>
        //《待辦》要從資料庫撈出所有搜尋紀錄的經緯位座標
        var heatmapData = [];
        //var gvHM = document.getElementById("__VIEWSTATE");
        var i = 1;

        $('table > tbody > tr').each(function () {
            var lat = $.trim($(this).find("td:eq(1)").text()); //1是抓取第二欄的文字
            var long = $.trim($(this).find("td:eq(2)").text()); //2是抓取第二欄的文字
            console.log(i + ": " + lat + " , " + long);
            if (i != 1)
                heatmapData.push(new google.maps.LatLng(lat, long));
            i++;
        });
    </script>

    <script>
        function success(position) {
            var s = document.querySelector('#status');

            if (s.className == 'success') {
                // not sure why we're hitting this twice in FF, I think it's to do with a cached result coming back
                return;
            }

            s.innerHTML = "完成定位! 你的概略位置為: " + position.coords.latitude + ", " + position.coords.longitude + ", 誤差半徑: " + position.coords.accuracy + " 公尺。";
            s.className = 'success';

            var mapcanvas = document.createElement('div');
            mapcanvas.id = 'mapcanvas';
            $("#mapcanvas").addClass("responsive")
            mapcanvas.style.height = '48em';
            mapcanvas.style.width = 'auto';

            document.querySelector('article').appendChild(mapcanvas);

            console.log(position.coords.latitude + " , " + position.coords.longitude + " , Accurcy:" + position.coords.accuracy);

            var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

            var myOptions = {
                zoom: 8,
                //center: latlng,  //這個是您的位置
                center: { lat: 23.60, lng: 121.00 },
                mapTypeControl: false,
                navigationControlOptions: { style: google.maps.NavigationControlStyle.SMALL },
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("mapcanvas"), myOptions);

            var marker = new google.maps.Marker({
                position: latlng,
                map: map,
                title: "您的位置! (誤差半徑 " + position.coords.accuracy + " 公尺)" //若Google帳號未附於手機，特別不準。
            });


            //附加Heatmap到Google Map去
            var heatmap = new google.maps.visualization.HeatmapLayer({
                data: heatmapData
            });
            heatmap.setMap(map);
        }

        function error(msg) {
            var s = document.querySelector('#status');
            s.innerHTML = typeof msg == 'string' ? msg : "failed";
            s.className = 'fail';

            // console.log(arguments);
        }

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(success, error);
        } else {
            error('您的瀏覽器未支援定位功能');
        }
    </script>

    <script>
        //調整標題列 HighLight (Active) 的項目
        $(function () {
            $("#LookupRec").addClass("active");
        });
    </script>

    <script>
        //$("NotFun").html("<tbody><tr></tr></tbody>");
        console.log("D.這裡是查詢熱點紀錄頁" + localStorage.getItem("uid"));
        $(".NotFun").val(localStorage.getItem("uid"));
        //$("#Text1").val(localStorage.getItem("UID"));
        //var a = "aaa";
        //$("#Text1").text(a);
    </script>

</asp:Content>

