<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="來查添加物 (Look up FAs)" />
    <meta name="author" content="C501 Team Mallard" />
    <title>「來查添加物」登陸頁</title>

    <link rel="icon" type="image/png" href="img/FA_Icon.ico" />

    <!-- Bootstrap core CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template -->
    <link href="Content/font-awesome.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="Content/landing-page.min.css" rel="stylesheet" />

    <style>
        .MSZH {
            font-family: "Microsoft JhengHei";
        }
    </style>
</head>
<body class="MSZH">
    <form id="form1" runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-light bg-light static-top">
            <div class="container">
                <a class="navbar-brand" href="#"><mark>來查添加物 (Look up FAs)</mark></a>
                <a class="btn btn-primary" href="SignInSignUp.aspx">登入</a>
            </div>
        </nav>
        <!-- Masthead -->
        <header class="masthead text-white text-center">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 mx-auto">
                        <h1 class="mb-5 MSZH">您知道孩子們每天吃的食品，含有什麼添加物嗎?</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12 mx-auto">
                        <h4 class="mb-5 MSZH">您知道一般柴魚醬油的柴魚味怎麼來的嗎?</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12 mx-auto">
                        <h4 class="mb-5 MSZH">想吃得健康，吃得安心</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12 mx-auto">
                        <a class="btn btn-lg btn-primary MSZH" href="SignInSignUp.aspx">跟我走，咱們註冊去!</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- Icons Grid -->
        <section class="features-icons bg-light text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex">
                                <i class="fa fa-database m-auto text-primary"></i>
                            </div>
                            <h3 class="MSZH">豐富詳盡的資料庫</h3>
                            <p class="lead mb-0 MSZH">採用我國衛服部食藥署公布的權威資料庫，羅列所有合法食品添加物的特性與用途，精確可靠，值得您信賴。</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex">
                                <i class="fa fa-commenting m-auto text-primary"></i>
                            </div>
                            <h3 class="MSZH">為您量身定做的訊息提示</h3>
                            <p class="lead mb-0 MSZH">依據您輸入的年齡、體重及痼疾，重點提示您該特別小心的食品添加物，讓您遠離健康風險，吃得安心。</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                            <div class="features-icons-icon d-flex">
                                <i class="fa fa-flag-checkered m-auto text-primary"></i>
                            </div>
                            <h3 class="MSZH">有趣的小遊戲</h3>
                            <p class="lead mb-0 MSZH">為您精心編製的挑戰賽，讓您在遊戲之中，獲得寶貴的食品添加物知識! 育教於樂，連小朋友都喜歡。</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Image Showcases -->
        <section class="showcase">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-1.jpg');"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        <h2 class="MSZH">還有還有，即時的重大食安訊息推播!</h2>
                        <p class="lead mb-0 MSZH">大家在忙碌之餘，未必有空閒注意食安新聞，所以我們將貼心地把訊息推播至您的手機或電腦瀏覽器，讓您訊息不漏接。</p>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-lg-6 text-white showcase-img" style="background-image: url('img/bg-showcase-2.jpg');"></div>
                    <div class="col-lg-6 my-auto showcase-text">
                        <h2 class="MSZH">更厲害的，還能回顧您歷來查詢地點的分布!</h2>
                        <p class="lead mb-0 ">結合運用「Google地圖&copy;」的服務，您可知道一直以來查詢食品添加物的地點分布，以及最常查詢的項目。未來將結合「Google Place&copy;」，適時推播所在位置店家的相關食安消息。</p>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-3.jpg');"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        <h2 class="MSZH">最後還有，簡單易用的字典式查詢</h2>
                        <p class="lead mb-0 MSZH">食品添加物的特殊用字會造成查詢上的困難，所以採用優化後的字典式「首字母」(頭文字，Initial)查詢法，加快檢索速度。</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonials -->
        <section class="testimonials text-center bg-light">
            <div class="container">
                <h2 class="mb-5 MSZH">聽聽我們的用戶怎麼說...</h2>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-1.jpg" alt="" />
                            <h5 class="MSZH">瑪格列特</h5>
                            <p class="font-weight-light mb-0 MSZH">"太棒了，今天才知道：原來香菇醬油的香菇味可以用食品添加物調出來。"</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-2.jpg" alt="" />
                            <h5 class="MSZH">弗瑞德</h5>
                            <p class="font-weight-light mb-0 MSZH">"感謝C501第六組，因為你們我才知道吃香腸不可以配香蕉。"</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-3.jpg" alt="" />
                            <h5 class="MSZH">莎拉</h5>
                            <p class="font-weight-light mb-0 MSZH">"這麼好用的系統居然不收費，由衷感激製作小組！"</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Call to Action -->
        <section class="call-to-action text-white text-center">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <h2 class="mb-4 MSZH">想要知道更多嗎? 一起來註冊囉!</h2>
                    </div>
                    <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                        <a class="btn btn-lg btn-primary MSZH" href="SignInSignUp.aspx">註冊 Go!</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer -->
        <footer class="footer bg-light">
            <div class="container">
                <div class="row">
                    <div>
                        <a href="TermOfServiceAndPrivatePolicy.aspx" class="MSZH">隱私及服務條款</a>
                        <p class="text-muted small mb-4 mb-lg-0 MSZH">&copy; C510 Team Mallard 2017 版權所有.</p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JavaScript -->
        <script src="Scripts/jquery-3.2.1.min.js"></script>
        <script src="Scripts/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
