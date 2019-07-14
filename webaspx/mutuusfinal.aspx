<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DB.Web.index" %>

<!doctype html>
<html>
  <head runat="server">

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="chrome=1,IE=edge" />
  <title>妙拓思发现之旅</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">

</head>
<body>

<form id="form1" runat="server" class="page__phone">
空的，测试分享
</form>
</body>
<script src="http://apps.bdimg.com/libs/zepto/1.1.4/zepto.min.js"></script>

<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
var wxAppid = 'wxf1b528cc436d1f15';
var wxTitle = '妙拓思发现之旅';
var wxDesc = '2018，我们将拒绝平庸，being imaginative，being different，成就非凡';
var wxLink = 'http://www.imutuus.com/mutuusfinal.aspx';
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
            console.log('已分享');
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
            console.log('已分享');
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
