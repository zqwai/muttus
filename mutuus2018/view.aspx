<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LA.Web._107album.index" %>

<!doctype html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <meta name="zqwai.com" content="True">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>
    <meta http-equiv="cleartype" content="on">

    <meta name="viewport" content="user-scalable=no, width=414" />
    
    <title>妙拓思发现之旅</title>
    <meta name="keywords" content="mutuus mutuus早教 mutuus托班 mutuus英式双语托班 mutuus开放式儿童成长中心">
    <meta name="description" content="为了我们自己的孩子，为了实践我们期望中的教学体验，我们创办了mutuus，希望我们的孩子们能以自己的内因驱动进行自主的学习、探索、思考，成为能够适应未来快速变化的人。">

    <link href="css/index.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">

</head>

<body class="sIndex">
 
<div id="form1" class="container"><!-- container -->

</div>

</body>
<script src="js/jquery.1.11.0.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

<script>
wx.config({
debug: false,
appId: "wxf1b528cc436d1f15",
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
    'checkJsApi',
    'onMenuShareTimeline',
    'onMenuShareAppMessage',
    'onMenuShareQQ',
    'onMenuShareWeibo'
    ]
});

    var wxTitle = '妙拓思发现之旅';
    var wxDesc = '2018，我们将拒绝平庸，being imaginative，being different，成就非凡';
    var wxLink =  window.location.href; //'http://www.imutuus.com/view.aspx';
    var wxImgUrl = 'http://www.imutuus.com/img/logowhitebg.gif';

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
        alert('wx.onMenuShareTimeline:fail: '+JSON.stringify(res));
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
        alert('wx.onMenuShareTimeline:fail: '+JSON.stringify(res));
    }
});

});
wx.error(function (res) {
alert('wx.error: '+JSON.stringify(res));
});

</script>
</html>
