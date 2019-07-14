// wechart Menu hide
// function onBridgeReady() {
//   WeixinJSBridge.invoke('hideOptionMenu');
// }
// if (typeof WeixinJSBridge == "undefined") {
//   document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
// } else if (document.attachEvent) {
//   document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
//   document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
// } else {
//   onBridgeReady();
// }
// Menu
var jMenu = document.querySelector('#jMenu');
var overlaybg = '<div class="overlaybg hide"></div>';
$('body').append(overlaybg);
jMenu.addEventListener('touchstart',function (event) {
	if (event.targetTouches.length == 1) {
		var touch = event.targetTouches[0];

		$('.overlaybg').toggleClass('hide');
		$('#chartSubNav').toggleClass('open');
		$('#jMenu').toggleClass('open');
	}
});
$('.overlaybg').on('touchstart',function () {
		$('.overlaybg').addClass('hide');
		$('#chartSubNav').removeClass('open');
		$('#jMenu').removeClass('open');
})
// chart_cognition
$('.wrap-header').on('click',function () {
	$(this).toggleClass('open').siblings('.wrap-content').toggleClass('hide')
	$(this).next().children().siblings('.cognition-subject').addClass('open')
	$(this).next().children().siblings('.cognition-detil').removeClass('hide');
});
$('.cognition-subject').on('click',function () {
	$(this).toggleClass('open').next().toggleClass('hide');
})
