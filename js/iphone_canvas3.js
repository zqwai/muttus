/**
 * Copyright 2017, Script
 * http://www.zqwai.com/
 */
'use strict';
(function() {
    var lastTime = 0;
    var vendors = ['webkit', 'moz'];
    for(var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
        window.requestAnimationFrame = window[vendors[x] + 'RequestAnimationFrame'];
        window.cancelAnimationFrame = window[vendors[x] + 'CancelAnimationFrame'] ||    // name has changed in Webkit
                                      window[vendors[x] + 'CancelRequestAnimationFrame'];
    }

    if (!window.requestAnimationFrame) {
        window.requestAnimationFrame = function(callback, element) {
            var currTime = new Date().getTime();
            var timeToCall = Math.max(0, 16.7 - (currTime - lastTime));
            var id = window.setTimeout(function() {
                callback(currTime + timeToCall);
            }, timeToCall);
            lastTime = currTime + timeToCall;
            return id;
        };
    }
    if (!window.cancelAnimationFrame) {
        window.cancelAnimationFrame = function(id) {
            clearTimeout(id);
        };
    }
}());


// const
var SAVAILWIDTH=window.screen.availWidth;
var SAVAILHEIGHT=window.screen.availHeight;
console.log( SAVAILWIDTH , SAVAILHEIGHT );

var PAGEMAIN = document.querySelector("#pageMain");
var _iphoneCanvas = document.querySelector("#myCanvas");
var _iphoneCtx=_iphoneCanvas.getContext('2d');

var scrollBg = [];
var cIndex = 0;
var speed = 5;
var currentImage;

var lastTime, nowTime, deltaTime,requestId,requestId2;
	lastTime = Date.now();
	deltaTime = 0;

// let imgPageOne = new Image();
// imgPageOne.src = '';

var the_images = [];
the_images.push( 'http://www.imutuus.com/images/wx_bg/p5.jpg');
the_images.push( 'http://www.imutuus.com/images/wx_bg/p1.jpg');
the_images.push( 'http://www.imutuus.com/images/wx_bg/p2.jpg');
the_images.push( 'http://www.imutuus.com/images/wx_bg/p3.jpg');
the_images.push( 'http://www.imutuus.com/images/wx_bg/p4.jpg');
console.log(the_images[1]);
// rest
// PAGEMAIN.style.overflow = 'hidden';
document.querySelector(".swiper-slide").height = SAVAILHEIGHT;
document.querySelector(".page__phone").height = SAVAILHEIGHT;
// iphoneCanvas size
_iphoneCanvas.width = SAVAILWIDTH;
_iphoneCanvas.height = SAVAILHEIGHT;
console.log(_iphoneCanvas.width);

// document.body.onload = pageMain;

var cavImg = new Image();

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

    var pagePhoneSwiper = new Swiper(".page__phone",{
    	direction : 'vertical',
    	pagination: '.swiper-pagination',
    	// hashnav:true,
    	onInit: function(swiper){
    		musicInit();
    		init();

    	},
    	onSlideChangeStart: function(swiper){
    		if (swiper.activeIndex==0) {
    			window.cancelAnimationFrame(requestId);
    			drawImagePage0();
    		}
    		else if (swiper.activeIndex==1) {
    			window.cancelAnimationFrame(requestId2);
    			cavImg.src = the_images[1];
    			cavImg.onload = function () {
    				renderGame()
    			}
    		}
    		else if (swiper.activeIndex==2) {
    			window.cancelAnimationFrame(requestId);
    			cavImg.src = the_images[2];
    			cavImg.onload = function () {
    				renderGame2()
    			}
    		}
    		else if (swiper.activeIndex==3) {
    			window.cancelAnimationFrame(requestId2);
    			cavImg.src = the_images[3];
    			cavImg.onload = function () {
    				renderGame()
    			}
    			_iphoneCanvas.style.display = 'block';
    		}
    		else if (swiper.activeIndex==4) {
    			window.cancelAnimationFrame(requestId);
    			_iphoneCanvas.style.display = 'none';
    		}
    	},
    	onTransitionEnd: function(swiper){
    	}

    });


});
wx.error(function (res) {
    console.log('wx.error: '+JSON.stringify(res));
});


function init(i) {
	drawImagePage0();
	cavImg.onload = function(){
		the_images[1];
		the_images[2];
		the_images[3];
		the_images[4];
	};
};
function preImage(url,callback){
     var img = new Image(); //创建一个Image对象，实现图片的预下载
     img.src = url;
    if (img.complete) { // 如果图片已经存在于浏览器缓存，直接调用回调函数
         callback.call(img);
        return; // 直接返回，不用再处理onload事件
     }
     img.onload = function () { //图片下载完毕时异步调用callback函数。
         callback.call(img);//将回调函数的this替换为Image对象
     };
}
function drawImagePage0() {

	// window.cancelAnimationFrame(renderGame);

	var sx,sy,swidth,sheight,x,y,width,height;
	preImage(the_images[0],function(){
		sx = sy = x = y = 0;
		swidth = Math.floor(SAVAILWIDTH * this.height / SAVAILHEIGHT);

		var longImg = Math.floor( this.width / 2 - swidth / 2);
		sx = longImg;
		width = _iphoneCanvas.width;
		sheight =	this.height;
		height = _iphoneCanvas.height;
		// console.log(longImg);
		_iphoneCtx.clearRect(0, 0, _iphoneCanvas.width, _iphoneCanvas.height);
		_iphoneCtx.fillStyle = '#fff';
		_iphoneCtx.fillRect(0, 0, _iphoneCanvas.width, _iphoneCanvas.height);
		_iphoneCtx.drawImage(this,sx,sy,swidth,sheight,x,y,width,height);
	});
}


// var cav = document.querySelector('#myCanvas');
// var _iphoneCtx = cav.getContext('2d');
var vx = 0;
function renderGame() {
	requestId = requestAnimationFrame(renderGame);
	// var interval = 1000/fps;
	nowTime = Date.now();
	deltaTime = nowTime - lastTime;
	// lastTime = nowTime;
	if (deltaTime > 40) {
		// console.log(deltaTime);
		deltaTime = 40;		//为了让游览器缩小时候果实变得过大
	}
	// console.log(deltaTime);
    var imgW = cavImg.width;
    var imgH = cavImg.height;
    var nImgW = Math.floor(SAVAILWIDTH * imgH / SAVAILHEIGHT);
		// Math.round(imgW*SAVAILWIDTH/imgH);
		// console.log(nImgW);
    var sx=0,sy=0,sw=nImgW,sh=imgH,dx=0,dy=0,dw=SAVAILWIDTH, dh=SAVAILHEIGHT;

    _iphoneCtx.clearRect(0, 0, _iphoneCanvas.width, _iphoneCanvas.height);
    // _iphoneCtx.fillStyle = '#333';
    // _iphoneCtx.fillRect(0, 0, SAVAILWIDTH, SAVAILHEIGHT);
    // _iphoneCtx.drawImage(cavImg, sx, sy, sw, sh, dx, dy, dw, dh);
		var wA =imgW-nImgW;
    var mVx= wA - Math.abs(vx);
    _iphoneCtx.drawImage(cavImg, Math.abs(vx), sy, sw, imgH, dx, dy, dw, dh);
    if (wA < Math.abs(vx) ) {
        vx = imgW-nImgW;
    }
		else {
	    vx -= 1;
		}
		// console.log(vx);
};
function renderGame2() {
	requestId2 = requestAnimationFrame(renderGame2);
	// var interval = 1000/fps;
	nowTime = Date.now();
	deltaTime = nowTime - lastTime;
	// lastTime = nowTime;
	if (deltaTime > 40) {
		// console.log(deltaTime);
		deltaTime = 40;		//为了让游览器缩小时候果实变得过大
	}
	// console.log(deltaTime);
    var imgW = cavImg.width;
    var imgH = cavImg.height;
    var nImgW = Math.floor(SAVAILWIDTH * imgH / SAVAILHEIGHT);
		// Math.round(imgW*SAVAILWIDTH/imgH);
		// console.log(nImgW);
    var sx=0,sy=0,sw=nImgW,sh=imgH,dx=0,dy=0,dw=SAVAILWIDTH, dh=SAVAILHEIGHT;

    _iphoneCtx.clearRect(0, 0, _iphoneCanvas.width, _iphoneCanvas.height);
    // _iphoneCtx.fillStyle = '#333';
    // _iphoneCtx.fillRect(0, 0, SAVAILWIDTH, SAVAILHEIGHT);
    // _iphoneCtx.drawImage(cavImg, sx, sy, sw, sh, dx, dy, dw, dh);
		var wA =imgW-nImgW;
    var mVx= wA - Math.abs(cIndex);
    _iphoneCtx.drawImage(cavImg, mVx, sy, sw, imgH, dx, dy, dw, dh);
    if (wA < Math.abs(cIndex) ) {
        cIndex = imgW-nImgW;
    }
		else {
	    cIndex -= 1;
		}
		// console.log(vx);
};


//音乐
function musicInit (){
	var myAudio = document.createElement("audio");
	var audioHtml = '<div id=audioControl class=play></div>';
	myAudio.id="music",
	myAudio.src='video/sijidewenhou.mp3',
	myAudio.loop="loop",

	$("#audiocontainer").append(myAudio,audioHtml);
	var audioEl = document.getElementById("music");
	audioEl.load();
	audioEl.play();


	var isMusicPlaying=!0;
	function musicPlaying (){
			if(isMusicPlaying==!0){
					myAudio.pause();
					$('#audioControl').removeClass('play');
					isMusicPlaying=!1;
			}else{
					myAudio.play();
					$('#audioControl').addClass('play');
					isMusicPlaying=!0;
			}
	};
	document.getElementById("audioControl").addEventListener('touchstart',musicPlaying,!1);
};


(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();





// window.addEventListener("orientationchange",function(){
// 	if(window.orientation==90||window.orientation==-90){
//     _iphoneCanvas.width = sAvailWidth;
//     _iphoneCanvas.height = sAvailHeight;
// 	}
// 	else if (window.orientation==0||window.orientation==180) {
//     _iphoneCanvas.width = sAvailHeight;
//     _iphoneCanvas.height = sAvailWidth;
// 	}
// },!1);
