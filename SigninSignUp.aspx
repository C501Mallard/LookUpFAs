<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SigninSignUp.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>登入/註冊</title>

    <link rel="icon" type="image/png" href="img/FA_Icon.ico" />

    <style>
        body {
            margin: 0;
            padding: 0;
            /*background: #000 url(Images/cinnamon-stars-2991174_1920.jpg) center center fixed no-repeat;*/
            background: #000 url(img/coffee-2446645_1920.jpg) center center fixed no-repeat;
            background-size: cover;
        }

        .MSZH {
            font-family: "Microsoft JhengHei";
        }
    </style>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>

<body>
    <form id="form1" runat="server">
        <!-- The surrounding HTML is left untouched by FirebaseUI.
         Your app may use that space for branding, controls and other customizations.-->
        <div style="height: 5em"></div>

        <h1 class="text-center text-white MSZH">登入與註冊</h1>
        <h3 class="text-center text-info MSZH">若您未曾註冊，我們將引導您完成相關作業</h3>

        <div id="firebaseui-auth-container"></div>

        <%--<div id="result">Hello Hell</div>--%>
    </form>

    <script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
    <script>
        // Initialize Firebase
        var config = {
            apiKey: "AIzaSyBh7zYWVOSxIjyglIP5jxt-0eOBsSo_jDU",
            authDomain: "lookupfas.firebaseapp.com",
            databaseURL: "https://lookupfas.firebaseio.com",
            projectId: "lookupfas",
            storageBucket: "lookupfas.appspot.com",
            messagingSenderId: "970074044960"
        };
        firebase.initializeApp(config);
    </script>

    <%--FirebaseUI 函式庫 (繁中在地化) 1061207--%>
    <script src="https://www.gstatic.com/firebasejs/ui/2.5.1/firebase-ui-auth__zh_tw.js"></script>
    <link type="text/css" rel="stylesheet" href="https://www.gstatic.com/firebasejs/ui/2.5.1/firebase-ui-auth.css" />

    <script type="text/javascript">
        // FirebaseUI config.
        var uiConfig = {
            signInSuccessUrl: 'MainPage.aspx',
            signInOptions: [
                // Leave the lines as is for the providers you want to offer your users.
                firebase.auth.GoogleAuthProvider.PROVIDER_ID,
                //firebase.auth.FacebookAuthProvider.PROVIDER_ID,
                //firebase.auth.EmailAuthProvider.PROVIDER_ID
            ],
            // Terms of service url.
            tosUrl: 'https://www.google.com'
        };

        //firebase.auth().setPersistence(firebase.auth.Auth.Persistence.SESSION);
        var ui = new firebaseui.auth.AuthUI(firebase.auth());
        // The start method will wait until the DOM is loaded.
        ui.start('#firebaseui-auth-container', uiConfig);
    </script>

    <script>
        var userLogin;
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                userLogin = user;
                console.log("User is logined", user);

            } else {
                userLogin = null;
                console.log("User is not logined yet.");
            }
        });
    </script>

    <!-- jQuery -->
    <script src="Scripts/jquery-3.2.1.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Scripts/bootstrap.bundle.min.js"></script>

</body>
</html>
