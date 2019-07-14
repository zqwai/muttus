<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DB.Web.index" %>

<!doctype html>
<html lang="zh-CN">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">

    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>

    <title>樟村情缘鲜花 周年庆活动</title>

    <link rel="stylesheet" href="zqw_test/flower/css/main.css">
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>

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
          <template>
            <el-carousel indicator-position="outside">
              <el-carousel-item v-for="data in list">
                <img :src="data.src">
              </el-carousel-item>
            </el-carousel>
          </template>
        </div>


    </header>
    <section class="v__cont">
        
        <div id="vContText" class="v_cont_text">
            <p v-for="item in items">{{ item.msg }}</p>
        </div>
        
        <div id="imgTitle" class="img-title">
            <img :src="imgsrc">
        </div>

        <div id="dr01" class="v__tab">
            <!-- 导航栏 -->

                <ul id="tabNav" class="v__tab-nav">
                    <li class="tab-item" @click="toggleTabs(tab01);">{{tab01Text}}</li>
                    <li class="tab-item" @click="toggleTabs(tab02);">{{tab02Text}}</li>
                    <li class="tab-item" @click="toggleTabs(tab03);">{{tab03Text}}</li>
                    <li class="tab-item" @click="toggleTabs(tab04);">{{tab04Text}}</li>
                </ul>

            <!-- 点击导航后要切换的内容 -->
            <div class="v__tab-Cont">
                <!-- 如果把切换出去的组件保留在内存中，可以保留它的状态或避免重新渲染。为此可以添加一个 keep-alive 指令参数 -->
                <transition name="component-fade" mode="out-in">
                    <component :is="currentView" keep-alive></component>
                </transition>
            </div>
        </div>



    </section>
    <footer id="footTopBg" class="v__foot">
        <img :src="imgsrc">
        <p><br></p>
        <p>{{copyright}}</p>
        <p><br></p>
        <p>{{webmaker}}</p>
        <p>{{weixinID}}</p>
        <p><br></p>
    </footer>
</form> 
</body>
<script src="zqw_test/flower/js/main.js"></script>




<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
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

    var wxTitle = '周年狂欢 再聚情缘';
    var wxDesc = '樟村情缘鲜花 周年庆促销活动开始了！活动期间，多买多送！！！';
    var wxLink =  window.location.href; //'http://www.imutuus.com/';
    var wxImgUrl = 'http://www.imutuus.com/zqw_test/flower/images/share.jpg';

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

</script>
</html>
