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

    <style>
    html {
      height:100%;
    }
    body {
      background-color:#EDEDED;
      margin:0;
      height:100%;
    }
    .page__phone{
      margin:auto;position:relative;width:100%;height:100%;overflow:hidden;
    }
    .loading{
      overflow:hidden;
      position:absolute;
      background-color:#EDEDED;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      z-index: 9999;
    }
    .loadingContent{
      width: 105px;
      height: 250px;
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate3d(-52px,-120px,0);
      text-align: center;
    }
    .loadingContent .logo{
      width: 64px;
      /* 105,110, */
      height: 67px;
      margin: 0 auto;
      position: relative;
      -webkit-animation: logoPosition 1s ease-in infinite;
      animation: logoPosition 1s ease-in infinite
    }
    .loadingContent .svglogo{
      width: 100%;
      position: relative;
    }
    .loadingContent .text{
      margin-top:15px;
      position: relative;
    }
    .loadingContent .text .point:nth-child(1){
      /* display: none; */
      opacity: .2;
      -webkit-animation: pointHide 1s ease-in infinite;
      animation: pointHide 1s ease-in infinite
    }
    .loadingContent .text .point:nth-child(2){
      -webkit-animation: pointHide 1.2s ease-in infinite;
      animation: pointHide 1.2s ease-in infinite
    }
    .loadingContent .text .point:nth-child(3){
      -webkit-animation: pointHide 1.4s ease-in infinite;
      animation: pointHide 1.4s ease-in infinite
    }
    @keyframes logoPosition {
      0% {
        top: 0;
      }

      50% {
        top: -5px;
      }

      100% {
        top: 0;
      }
    }
    @keyframes pointHide {
      0% {
        opacity: 0
      }

      50% {
        opacity: 1
      }

      100% {
        opacity: 0
      }
    }
  </style>


</head>

<body >
 
<div id="form1" class="page__phone">

  <!-- copy these lines to your document: -->

  <div id="mutuusfinal_hype_container" class="hype_container">
    <script type="text/javascript" charset="utf-8" src="mutuus_final.hyperesources/mutuusfinal_hype_generated_script.js"></script>
  </div>

  <!-- end copy -->
  <!-- text content for search engines: -->

  <div style="display:none" aria-hidden=true>

    <div></div>

  </div>

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

});
wx.error(function (res) {
    console.log('wx.error: '+JSON.stringify(res));
});

</script>
</html>
