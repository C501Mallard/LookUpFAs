<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">

        <!-- Page Heading -->
        <h1 class="my-4 MSZH">食品添加物的世界
       
            <small>由此展開......</small>
        </h1>

        <div class="row">
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="A_LookUpFAs.aspx">
                        <img class="card-img-top MSZH" src="img/block-1.jpg" alt="查詢添加物"></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="A_LookUpFAs.aspx" class="MSZH">A.查詢添加物</a>
                        </h4>
                        <p class="card-text MSZH">各位觀眾，衛服部食藥署的權威資料呦。</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="B_FunGame.aspx">
                        <img class="card-img-top MSZH" src="img/block-2.jpg" alt="來玩小遊戲"></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="B_FunGame.aspx" class="MSZH">B.來玩小遊戲</a>
                        </h4>
                        <p class="card-text MSZH">選擇題挑戰賽，超好玩的好嗎! 來嘛，來嘛! 週冠軍有機會獲得「Google Streetview」大阪一日遊哦!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="C_MyFaviFA.aspx">
                        <img class="card-img-top MSZH" src="img/block-3.jpg" alt="我的最愛"></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="C_MyFaviFA.aspx" class="MSZH">C.我的最愛</a>
                        </h4>
                        <p class="card-text MSZH">管理您標記為「最愛」的食品添加物項目。</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="D_PushNoti.aspx">
                        <img class="card-img-top MSZH" src="img/block-4.jpg" alt="推播紀錄"></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="D_PushNoti.aspx" class="MSZH">D.推播紀錄</a>
                        </h4>
                        <p class="card-text MSZH">各種曾經為您推播過的重要訊息。</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="E_LookupRec.aspx">
                        <img class="card-img-top MSZH" src="img/block-5.jpg" alt="以前查過啥"></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="E_LookupRec.aspx" class="MSZH">E.以前查過啥</a>
                        </h4>
                        <p class="card-text MSZH">過去的添加物查詢紀錄，以及在哪裡查的歷史足跡。</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="F_Settings.aspx">
                        <img class="card-img-top MSZH" src="img/block-6.jpg" alt="個人資訊設定"></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="F_Settings" class="MSZH">F.個人資訊設定</a>
                        </h4>
                        <p class="card-text MSZH">設定您的出生年、體重及痼疾資料，以利我們為您呈現最符合需求的資料。</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; C501 Team Mallard 2017</p>
        </div>
        <!-- /.container -->
    </footer>

    <script>
        //調整標題列 HighLight (Active) 的項目
        $(function () {
            //$("#MainPage").removeClass("active");
            $("#MainPage").addClass("active");
        });
    </script>

    <script>
        //叫出Firebase登錄資訊
        var userLogin;
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                userLogin = user;
                console.log("User is logined", user);
                console.log(user.uid);
                console.log(user.email);
                console.log(user.photoURL);
                console.log(user.displayName);
                console.log(user.emailVerified); //true or false
                console.log(user.isAnonymous); //ture or false
                console.log(user.phoneNumber);
                console.log(user.metadata.lastSignInTime);
                console.log(user.metadata.creationTime);
                localStorage.setItem("uid", user.uid);
                localStorage.setItem("email", user.email);
                localStorage.setItem("photoURL", user.photoURL);
                localStorage.setItem("displayName", user.displayName);
                localStorage.setItem("emailVerified", user.emailVerified);
                localStorage.setItem("isAnonymous", user.isAnonymous);
                localStorage.setItem("phoneNumber", user.phoneNumber);
                localStorage.setItem("lastSignInTime", user.metadata.lastSignInTime);
                localStorage.setItem("creationTime", user.metadata.creationTime);
            }
        });

        // Store
        //localStorage.setItem("lastname", "Smith");
        //// Retrieve
        //document.getElementById("result").innerHTML = localStorage.getItem("lastname");
        //var hell = localStorage.getItem("lastname");

    </script>

    <script>
        // [START get_messaging_object]
        // Retrieve Firebase Messaging object.
        const messaging = firebase.messaging();
        // [END get_messaging_object]

        // IDs of divs that display Instance ID token UI or request permission UI.
        const tokenDivId = 'token_div';
        const permissionDivId = 'permission_div';

        // [START refresh_token]
        // Callback fired if Instance ID token is updated.
        messaging.onTokenRefresh(function () {
            messaging.getToken()
                .then(function (refreshedToken) {
                    console.log('Token refreshed.');
                    console.log(currentToken);
                    // Indicate that the new Instance ID token has not yet been sent to the
                    // app server.
                    setTokenSentToServer(false);
                    // Send Instance ID token to app server.
                    sendTokenToServer(refreshedToken);
                    // [START_EXCLUDE]
                    // Display new Instance ID token and clear UI of all previous messages.
                    //resetUI();
                    // [END_EXCLUDE]
                })
                .catch(function (err) {
                    console.log('Unable to retrieve refreshed token ', err);
                    showToken('Unable to retrieve refreshed token ', err);
                });
        });
        // [END refresh_token]

        function showToken(currentToken) {
            // Show token in console and UI.
            //var tokenElement = document.querySelector('#token');
            //tokenElement.textContent = currentToken;

            console.log("currentToken:" + currentToken);
            alert(currentToken);
        }

        // Send the Instance ID token your application server, so that it can:
        // - send messages back to this app
        // - subscribe/unsubscribe the token from topics
        function sendTokenToServer(currentToken) {
            if (!isTokenSentToServer()) {
                console.log('Sending token to server...');
                // TODO(developer): Send the current token to your server.
                setTokenSentToServer(true);
            } else {
                console.log('Token already sent to server so won\'t send it again ' +
                    'unless it changes');
            }

        }

        function isTokenSentToServer() {
            return window.localStorage.getItem('sentToServer') == 1;
        }

        function setTokenSentToServer(sent) {
            window.localStorage.setItem('sentToServer', sent ? 1 : 0);
        }

        function requestPermission() {
            console.log('Requesting permission...');
            // [START request_permission]
            messaging.requestPermission()
                .then(function () {
                    console.log('Notification permission granted.');
                    // TODO(developer): Retrieve an Instance ID token for use with FCM.
                    // [START_EXCLUDE]
                    // In many cases once an app has been granted notification permission, it
                    // should update its UI reflecting this.
                    resetUI();
                    // [END_EXCLUDE]
                })
                .catch(function (err) {
                    console.log('Unable to get permission to notify.', err);
                });
            // [END request_permission]
        }
    </script>
</asp:Content>

