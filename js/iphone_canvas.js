/**
 * Copyright 2017, Script
 * http://www.zqwai.com/
 */
// $(document).ready(function (){});
'use strict';

// rAF
window.requestAnimationFrame = function() {
	return window.requestAnimationFrame ||
		window.webkitRequestAnimationFrame ||
		window.mozRequestAnimationFrame ||
		window.msRequestAnimationFrame ||
		window.oRequestAnimationFrame ||
		function(f) {
			window.setTimeout(f,1e3/60);
		}
}();
// const
const SAVAILWIDTH=window.screen.availWidth;
const SAVAILHEIGHT=window.screen.availHeight;
console.log( SAVAILWIDTH , SAVAILHEIGHT );


let scrollBg = [];
let cIndex = 0;
let speed = 5;
let currentImage;


document.body.onload = game;

function game() {
  init()
};

function init(i) {

  const PAGEMAIN = document.querySelector("#pageMain");
  const _iphoneCanvas = document.querySelector("#iphoneCanvas");
  const _iphoneCtx=_iphoneCanvas.getContext('2d');
  // rest
  PAGEMAIN.style.overflow = 'hidden';
  // iphoneCanvas size
  _iphoneCanvas.width = SAVAILWIDTH;
  _iphoneCanvas.height = SAVAILHEIGHT;
  console.log(_iphoneCanvas.width);
  _iphoneCtx.fillStyle='#ccc';
  _iphoneCtx.fillRect(0, 0, SAVAILWIDTH, SAVAILHEIGHT);


  for (var i = 0; i < 5; i++) {
  	scrollBg[i] = new Image();
  	scrollBg[i].src = './images/wx_bg/p' + i + '.jpg';
    console.log(scrollBg[i]);
  }

};





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
