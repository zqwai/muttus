<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="address.aspx.cs" Inherits="DB.Web.address" %>

<!doctype html>
<html lang="zh-CN">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="http://www.imutuus.com/images/mutuus.png">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>

    <title>mutuus - being imaginative, being different</title>
    <meta name="keywords" content="mutuus mutuus早教 mutuus托班 mutuus英式双语托班 mutuus开放式儿童成长中心">
    <meta name="description" content="为了我们自己的孩子，为了实践我们期望中的教学体验，我们创办了mutuus，希望我们的孩子们能以自己的内因驱动进行自主的学习、探索、思考，成为能够适应未来快速变化的人。">

    <link href="css/css.css" rel="stylesheet">

    <script src="js/jquery.1.11.0.min.js"></script>

</head>
<body>
    <form id="form1" runat="server"  class="page__form">

<nav>
    <a class="logo" href="index.aspx"></a>
    <ul class="menu list-unstyled" id="menu">
        <li><a href="event_list.aspx">EVENTS</a></li>
        <li><a href="address.aspx">LOCATIONS</a></li>
        <li class="toggle openMenu">
            <a href="javascript:void(0)">
                <i class="fa fa-bars"></i>
            </a>
        </li>
    </ul>
    <div class="fixed-toggle openMenu"><a href="javascript:void(0)" id="openMenu"><i class="fa fa-bars"></i></a></div>
</nav>

<div class="top-menu" id="topMenu">
    <div class="close" id="closeMenu"><i class="fa fa-times"></i></div>
    <div class="row">
        <div class="col-md-3">
            <a href="index.aspx">
                <div class="logo"></div>
            </a>

        </div>
        <div class="col-md-2">
            <ul class="menu list-unstyled">
                <li><a href="introduction.aspx">about us</a></li>
                <li><a href="about_eyfs.aspx">about EYFS</a></li>
                <li><a href="about_logo.aspx">the logo</a></li>
                <li><a href="about_space.aspx">the space</a></li>
                <li><a href="form.aspx">open day</a></li>
            </ul>
        </div>
        <div class="col-md-2">
            <ul class="menu small list-unstyled">
                <li><a href="address.aspx">Locations</a></li>
                <li><a href="event_list.aspx">Events</a></li>
            </ul>

        </div>
        <div class="col-md-2">
            <div class="bdsharebuttonbox">
                <ul class="menu small list-unstyled">
                    <li><a href="javascript:void(0)" data-cmd="tsina" title="分享到新浪微博"><i class="fa fa-weibo"></i> WEIBO</a></li>
                    <li><a href="javascript:void(0)" data-cmd="weixin" title="分享到微信"><i class="fa fa-weixin"></i> WECHAT</a></li>
                    <li><a href="javascript:void(0)" data-cmd="fbook" title="分享到Facebook"><i class="fa fa-facebook-square"></i>FACEBOOK</a></li>
                    <li><a href="javascript:void(0)" data-cmd="twi" title="分享到Twitter"><i class="fa fa-twitter-square"></i>TWITTER</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>


<section class="page-top adderss-bg">
    <div class="overlay"></div>

    <div class="slogan">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>being imaginative</h3>
                    <h3>being different</h3>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="volume" id="volumeOpenner"></div> -->
    <div class="arrow"></div>

</section>



<section class="about">
    <div class="container">
        <div class="row">
            <div class="col-md-12 about-eyfs">

                <h2>
                    Location List
                </h2>
                <hr>
                <div class="row">

                    <div class="col-md-6">
                        <h4 style="color:#0099cc;margin-bottom:3rem;margin-top:3rem;">杭州未来科技城淘宝城中心</h4>
                        <p>公司地址：杭州市余杭区五常街道赛银国际广场8号楼二层（FamilyMart楼上）</p>
                        <p>咨询热线：<a href="tel:0571-88681657">0571-88681657</a></p>

                        <a target="_blank" href="http://map.qq.com/m/place/info/uid=7175097818658037007&word=%E8%B5%9B%E9%93%B6%E5%9B%BD%E9%99%85%E5%B9%BF%E5%9C%BA&type=point" class="btn btn-default btn-width-260 btn-border btn-index-margin-5rem">
                            查看地图
                        </a>
                    </div>
                    <div class="col-md-6">
                        <!-- <div class="baidu-map" id="dituContent"></div> -->
                    </div>

                </div>
            </div>

        </div>
    </div>
</section>

<footer class="page footer bg__2e3033 page__pic">
    <div class="main clearfix">
        <div class="container">
            <div class="col-md-5">
                <a href="index.aspx" class="logo"></a>
            </div>
            <div class="col-md-2">
                <ul class="footer-section list-unstyled">
                    <li><a href="introduction.aspx">about us</a></li>
                    <li><a href="about_eyfs.aspx">about EYFS</a></li>
                    <li><a href="about_logo.aspx">the logo</a></li>
                    <li><a href="about_space.aspx">the space</a></li>
                    <li><a href="form.aspx">open day</a></li>
                </ul>
            </div>
            <div class="col-md-2">
                <ul class="footer-section list-unstyled">
                    <li><a href="address.aspx">Locations</a></li>
                    <li><a href="event_list.aspx">Events</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <div class="bdsharebuttonbox">
                <ul class="footer-section list-unstyled">
                    <li><a href="javascript:void(0)" data-cmd="tsina" title="分享到新浪微博"><i class="fa fa-weibo"></i> WEIBO</a></li>
                    <li><a href="javascript:void(0)" data-cmd="weixin" title="分享到微信"><i class="fa fa-weixin"></i> WECHAT</a></li>
                    <li><a href="javascript:void(0)" data-cmd="fbook" title="分享到Facebook"><i class="fa fa-facebook-square"></i>FACEBOOK</a></li>
                    <li><a href="javascript:void(0)" data-cmd="twi" title="分享到Twitter"><i class="fa fa-twitter-square"></i>TWITTER</a></li>
                </ul>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="floatbtn">
    <span id="back-to-top"><i class="fa fa-arrow-up"></i></span>
</div>



</form>
</body>


<script src="js/bundles/core.js"></script>

<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
var wxAppid = 'wxf1b528cc436d1f15';
var wxTitle = 'mutuus - being imaginative, being different';
var wxDesc = '为了我们自己的孩子，为了实践我们期望中的教学体验，我们创办了mutuus，希望我们的孩子们能以自己的内因驱动进行自主的学习、探索、思考，成为能够适应未来快速变化的人。';
var wxLink = 'http://www.imutuus.com/';
var wxImgUrl = 'http://www.imutuus.com/images/bg/about_logo_2.gif';


wx.config({
      debug: false,
      appId: wxAppid,
      <%=GetSignature() %>,
     jsApiList: [
         'checkJsApi',
         'onMenuShareTimeline',
         'onMenuShareAppMessage',
         'onMenuShareQQ',
         'onMenuShareWeibo'
     ]
});
wx.ready(function () {
    wx.checkJsApi({
        jsApiList: [
            'onMenuShareTimeline',
            'onMenuShareAppMessage',
            'onMenuShareQQ',
        ]
    });

    wx.onMenuShareTimeline({
        title: wxTitle,
        desc: wxDesc,
        link: wxLink,
        imgUrl: wxImgUrl,
        trigger: function (res) {
            console.log('用户点击分享到朋友圈');
        },
        success: function (res) {
            alert('已分享');
        },
        cancel: function (res) {
            console.log('已取消');
        },
        fail: function (res) {
            console.log('wx.onMenuShareTimeline:fail: '+JSON.stringify(res));
        }
    });

    wx.onMenuShareAppMessage({
        title: wxTitle,
        desc: wxDesc,
        link: wxLink,
        imgUrl: wxImgUrl,
        trigger: function (res) {
           console.log('用户点击分给到朋友');
        },
        success: function (res) {
            alert('已分享');
        },
        cancel: function (res) {
            console.log('已取消');
        },
        fail: function (res) {
            console.log('wx.onMenuShareTimeline:fail: '+JSON.stringify(res));
        }
    });

    wx.onMenuShareQQ({
        title: wxTitle,
        desc: wxDesc,
        link: wxLink,
        imgUrl: wxImgUrl,
        success: function () {
           console.log('已分享');
        },
        cancel: function () {
           console.log('已取消');
        },
        fail: function (res) {
            console.log('wx.onMenuShareTimeline:fail: '+JSON.stringify(res));
        }
    });

});
wx.error(function (res) {
    console.log('wx.error: '+JSON.stringify(res));
});
</script>


</html>
