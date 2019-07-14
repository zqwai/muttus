<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DB.Web.index" %>

<!doctype html>
<html lang="zh-CN">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">

    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>

    <title>樟村情缘鲜花店 周年庆活动</title>

    <link rel="stylesheet" href="zqw_test/flower/css/main.css">

</head>
<body>



<div class="loading">    
<svg id='loadsvg' x="0px" y="0px" viewBox="0 0 30 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
  <rect x="0" y="7.92077" width="4" height="15.1585">
    <animate attributeName="height" attributeType="XML" values="5;21;5" begin="0s" dur="0.6s" repeatCount="indefinite"></animate>
    <animate attributeName="y" attributeType="XML" values="13; 5; 13" begin="0s" dur="0.6s" repeatCount="indefinite"></animate>
  </rect>
  <rect x="10" y="6.07923" width="4" height="18.8415">
    <animate attributeName="height" attributeType="XML" values="5;21;5" begin="0.15s" dur="0.6s" repeatCount="indefinite"></animate>
    <animate attributeName="y" attributeType="XML" values="13; 5; 13" begin="0.15s" dur="0.6s" repeatCount="indefinite"></animate>
  </rect>
  <rect x="20" y="10.0792" width="4" height="10.8415">
    <animate attributeName="height" attributeType="XML" values="5;21;5" begin="0.3s" dur="0.6s" repeatCount="indefinite"></animate>
    <animate attributeName="y" attributeType="XML" values="13; 5; 13" begin="0.3s" dur="0.6s" repeatCount="indefinite"></animate>
  </rect>
</svg>
</div> 

<form id="form1" runat="server" class="wrap" style="display: none;">


    <div id="audiocontainer">
        <div id='controlBox'></div>
        <div id="jaudio"></div>
    </div>

    <header class="v__header">

    <div id="headpic">
      <img src="http://www.imutuus.com/zqw_test/flower/images/xianhua_01.jpg">
      <img src="http://www.imutuus.com/zqw_test/flower/images/xianhua_02.jpg">
      <img src="http://www.imutuus.com/zqw_test/flower/images/xianhua_03.jpg">
      <img src="http://www.imutuus.com/zqw_test/flower/images/xianhua_04.png">
    </div>


    </header>
    <section class="v__cont">
        
        <div id="vContText" class="v_cont_text">
            <p>周年庆促销活动开始了！！！</p>
            <h3 style='margin-top:2rem;margin-bottom: 2rem;'>活动一：</h3>
            <p>凡在本店购买植物盆栽</p>
            <p>满88元赠送儿童小靠椅</p>
            <p>满168元赠送拖把</p>
            <p>满208元赠送热水壶</p>
            <p>满288元赠送拖把和儿童小靠椅</p>
            <p>多买多送送完为止</p>

            <h3 style='margin-top:2rem;margin-bottom: 2rem;'>活动二：</h3>
            <p>凡在本店做满500元婚车免费使用拱门一天</p>
            
            <h3 style='margin-top:2rem;margin-bottom: 2rem;'>
                活动三：
                <small style="font-size: 1.2rem">（仅限本人领取）</small>
            </h3>
            <p>转发本店止条链接并积攒38个送保温杯1个送完为止</p>
            
            <p>&nbsp;</p>
            <p>活动从1月28日开始。</p>
            <p>最终解释权归“樟村情缘鲜花店”所有</p>
            <p>热线1：13687931622</p>
            <p>热线2：13970307262</p>
            <p>地址：樟村三环路（原老粮库）</p>
            <p><img src="http://www.imutuus.com/zqw_test/flower/images/car/0.jpg" width="100%"></p>
        </div>
        
        <div id="imgTitle" class="img-title">
            <img src="http://www.imutuus.com/zqw_test/flower/images/xianhua_13.png">
        </div>

        <div id="vTab" class="v__tab">

                <ul id="tabNav" class="v__tab-nav nav-js">
                    <li>婚车花盘</li> 
                    <li>插花</li> 
                    <li>盆栽</li> 
                    <li>其他</li>
                </ul>

            <div id='tabCont' class="v__tab-Cont-js">

                    <ul class="tab-cont cont-img">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/car/7.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/car/1.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/car/2.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/car/3.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/car/4.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/car/5.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/car/6.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/car/8.jpg">
                    </ul>
                    <ul class="tab-cont cont-img">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/1.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/2.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/3.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/4.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/5.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/6.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/7.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/8.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/chahua/9.jpg">
                    </ul>
                    <ul class="tab-cont cont-img">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/panzai/1.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/panzai/2.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/panzai/3.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/panzai/6.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/panzai/7.jpg">
                    </ul>
                    <ul class="tab-cont cont-img">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/other/1.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/other/2.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/other/3.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/other/4.jpg">
                        <img src="http://www.imutuus.com/zqw_test/flower/images/other/5.jpg">
                    </ul>

            </div>
        </div>



    </section>
    <footer id="footTopBg" class="v__foot">
        <img src="http://www.imutuus.com/zqw_test/flower/images/foot-top.png">

        <p>Desginer: zqwai2011</p>
    </footer>

</form> 
</body>
<!-- <script src="zqw_test/flower/js/index.js"></script> -->
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script>




// var wxAppid = 'wxf1b528cc436d1f15';
wx.config({
      debug: false,
      appId: 'wxf1b528cc436d1f15',
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
    // alert('微信框架加载完成')
    musicInit();

    var wxTitle = '周年狂欢 再聚情缘',
        wxDesc = '樟村情缘鲜花店 周年庆促销活动开始了！活动期间，多买多送！！！',
        wxLink =  window.location.href,
        wxImgUrl = 'http://www.imutuus.com/zqw_test/flower/images/share.jpg';

    console.log(wxLink);

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







var load = document.querySelector(".loading"), 
page = document.querySelector("#form1"),
jAudio = document.querySelector("#jaudio");

var oTab = document.getElementById("tabNav");
var oLis = oTab.getElementsByTagName("li");
var oContBox = document.getElementById("tabCont");
var oConts = oContBox.getElementsByTagName("ul");

oLis[0].className = "active";
oConts[0].className = "active";

for(var i = 0; i < oLis.length; i++) {
    oLis[i].index = i;
    oLis[i].onclick = function () {

        for(var j = 0; j < oLis.length; j++) {
            oLis[j].className = "";
            oConts[j].className = "";
        }
        this.className = "active";
        oConts[this.index].className = "active";
    }       
} 





window.onscroll= function () {
    var topScroll =  document.documentElement.scrollTop || document.body.scrollTop;//滚动的距离,距离顶部的距离
    console.log(topScroll);
    var bignav  = document.getElementById("tabNav");//获取到导航栏id
    if(topScroll > 1770){  //当滚动距离大于250px时执行下面的东西
        bignav.style.position = 'fixed';
        bignav.style.top = '0';
        bignav.style.zIndex = '9999';
        bignav.style.width = '84%';
        bignav.style.left = '2.5rem';
    }else{//当滚动距离小于250的时候执行下面的内容，也就是让导航栏恢复原状
        bignav.style.position = 'static';
        bignav.style.width = 'auto';
    }
}



document.onreadystatechange = loadingChange;//当页面加载状态改变的时候执行这个方法.    
function loadingChange()     
{     
    if(document.readyState == "complete"){
        // musicInit();
      setTimeout(function () {
        // load.innerHTML = '加载完成';
        // load.style.opacity = '0';
        // load.style.zIndex = '0';
        load.style.display = 'none';
        page.style.display = 'block';
      },1500);
        
    }     
}

// window.onload = function () {
//    setTimeout(function () {
//     alert('页面加载完成')
//         // load.innerHTML = '加载完成';
//         // load.style.opacity = '0';
//         // load.style.zIndex = '0';
//         load.style.display = 'none';
//         page.style.display = 'block';
//       },1500);
// }


//音乐
function musicInit(e){
  var myAudio=document.createElement("audio"),
  audioHtml= '<div id=audioControl class=play></div>';

  myAudio.id="music",
  myAudio.src='http://www.imutuus.com/video/CNBALLERCLOUDWANG1.mp3',
  myAudio.loop="loop",
  myAudio.autoplay="autoplay",
  jAudio.appendChild(myAudio);

  var controlBox = document.querySelector("#controlBox");
  controlBox.innerHTML = audioHtml;


  var audioControl = document.querySelector("#audioControl");

  var isMusicPlaying=!0;

  audioControl.addEventListener('touchstart',musicPlaying,!1);

  function musicPlaying(){
      if(isMusicPlaying==!0){
          myAudio.pause();
          audioControl.className = 'pause';
          isMusicPlaying=!1;
      }else{
          myAudio.play();
          audioControl.className = 'play';
          isMusicPlaying=!0;
      }
  };
}







</script>
</html>
