<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DB.Web.index" %>

<!doctype html>
<html lang="zh-CN">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="http://www.imutuus.com/images/mutuus.png">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>

    <title>尚品包装 - 报价表明细</title>
    <meta name="keywords" content="尚品包装">
    <meta name="description" content="尚品包装：打印、割样、刀模，包装大货生产，一站式工厂">

    <link href="css/css.css" rel="stylesheet">
    
    <script src="js/jquery.1.11.0.min.js"></script>
</head>
<body>
<form id="form1" runat="server" class="page__form">
<div style="max-width: 100%;min-width: 320px;margin:0 auto;">
<img src="http://www.imutuus.com/images/shangping/inde_01.png" style="display: block;width: 100%;height: auto;margin:0;padding:0">
<img src="http://www.imutuus.com/images/shangping/inde_02.png" style="display: block;width: 100%;height: auto;margin:0;padding:0">
<img src="http://www.imutuus.com/images/shangping/inde_03.png" style="display: block;width: 100%;height: auto;margin:0;padding:0">
<img src="http://www.imutuus.com/images/shangping/inde_04.png" style="display: block;width: 100%;height: auto;margin:0;padding:0">
<img src="http://www.imutuus.com/images/shangping/inde_05.png" style="display: block;width: 100%;height: auto;margin:0;padding:0">
</div>
<div class="floatbtn">
    <span id="back-to-top"><i class="fa fa-arrow-up"></i></span>
</div>

</form>
</body>


<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>

var wxAppid = 'wxf1b528cc436d1f15';
var wxTitle = '尚品包装 - 报价表明细';
var wxDesc = '尚品包装：打印、割样、刀模，包装大货生产，一站式工厂';
var wxLink = 'http://www.imutuus.com/share_shangping.aspx';
var wxImgUrl = 'http://www.imutuus.com/images/shangping/shangping.png';

  
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

$(window).scroll(function() {
    //初始化
    var bWidth = window.screen.availWidth;
    var bHeight =window.screen.availHeight;
    var _scrollTop = $(document).scrollTop();
    var dheight = window.screen.availHeight;


    if(_scrollTop > bHeight/3){
        $(".floatbtn").fadeIn(300);
    }
    if(_scrollTop <  bHeight/3){
        $(".floatbtn").fadeOut(200);
    };
 
});

$(document).ready(function() {
    /*back-to-top*/
    $('#back-to-top').on('click',function(){
        $('html, body').animate({
            scrollTop: 0
        }, 500);
    });
});
</script>

</html>
