
function swiperAbout () {
	new Swiper('.s_about', {
		direction: 'vertical',
		slidesPerView: 'auto',
		freeMode: true,
		scrollbar: {
			el: '.sBannerScrollbar',
		},
		mousewheel: true,
	});
}

var swiperIndex = sessionStorage.getItem('swiperIndex') ? sessionStorage.getItem('swiperIndex') : 0,
initSwiper = {
  direction: 'vertical',
  initialSlide : swiperIndex,
  hashNavigation: true,
  // slidesPerView: 'auto',
  // freeMode: true,
  mousewheel: true,
  hashNavigation: {
    replaceState: true,
  },
  navigation: {
    prevEl: '.pre-page-btn',
    nextEl: '.next-page-btn',
  },
  // 切换页面成功之前的回调
  onSlideChangeStart: function (swiper) {
    sessionStorage.setItem('swiperIndex', swiper.activeIndex);
  }
};

var swiperFather = new Swiper('.s_wrap', initSwiper);


var swiper = new Swiper('.west_lake_wrap',{
	autoplay: {
	delay: 5000,
	disableOnInteraction: false,
	},
	speed: 700,
	allowTouchMove: false,
	lazy: {
	loadPrevNext: true,
	loadPrevNextAmount: 3,
	},
	centeredSlides: true,
	// spaceBetween : 50,
	// slidesOffsetBefore: 40,
	loop: true,
	slidesPerView : 'auto',
	on: {
	slideChangeTransitionEnd: function(){
		this.slides.transition(this.params.autoplay.delay+this.params.speed).transform('translate3d(-60px, 0, 0)');
	},
	slideChangeTransitionStart: function(){
		this.slides.transition(this.params.speed).transform('translate3d(0, 0, 0)');
	},
	},
	// pagination: {
	// el: '.swiper-pagination',
	// clickable :true,
	// renderBullet: function (index, className) {
	//         return '<div class="' + className + '"><span></span><i></i></div>';
	//       },
	// },
	navigation: {
	nextEl: '.swiper-button-next',
	prevEl: '.swiper-button-prev',
	},
});
window.onresize=function(){
	swiper.update();
}
//loading 
var _LoadingHtml = '<div id="loadingDiv" style="position:absolute;left:0;width:100%;height:100%;top:0;z-index:10000;background: rgba(0,0,0,.2);"><div id="loadingDiv" style="position:absolute; cursor:wait;left:50%;top:50%;width: 80px;height: 80px;line-height:80px;margin-left:-40px;margin-top:-40px;z-index:10005;border-radius:.5rem;background: rgba(0,0,0,.8) url(Images/fancybox_loading@2x.gif) no-repeat center center;"></div></div>';  
document.write(_LoadingHtml); 
//监听加载状态改变  
document.onreadystatechange = completeLoading;  
//加载状态为complete时移除loading效果  
function completeLoading() {  
    if (document.readyState == "complete") {  
        var loadingMask = document.getElementById('loadingDiv');  
        loadingMask.parentNode.removeChild(loadingMask);  
    }  
} 

$(function(){
	global.setupBindings();
	$('#sAbout,#sAbout2').on('click', function(){
		console.log('22')
		$('.s_about').addClass('show');
		swiperAbout();
		$('html,body').addClass('fiexd');
		$('#topMenu').removeClass('open');
		$('.overlay').remove();
	})
	$('#sWrap,#sWrap2').on('click', function(){
		console.log('22')
		$('.s_about').removeClass('show');
		swiperAbout();
		$('html,body').removeClass('fiexd');
		$('#topMenu').removeClass('open');
		$('.overlay').remove();
	})
})

var global = {
	setupBindings: function() {
		var overlayhtml = '<div class="overlay top-menu-overlay"></div>'
		var n = $("#homeHeader").height() + 60;
		n < 700 && (n = 700);
		// $("#homeHeader").css("height", n + "px");
		var dheight = window.screen.availHeight;
		$(".page__2").css("min-height", dheight + "px");
		$(".page__2,.page__4,.page__5").css("min-height", dheight/2 + "px");
		$("#homeHeader").css("height", dheight + "px");

		$(".openMenu").click(function() {
			$("#topMenu").toggleClass("open");
			$("#curtain").toggleClass("open");
			$('html').addClass('fancybox-enabled');
			$('#topMenu').after(overlayhtml);

			$('.top-menu-overlay').click(function() {
				$(this).remove();
				$('html').removeClass('fancybox-enabled');
				$("#topMenu").removeClass("open");
				$("#curtain").removeClass("open");
			});
		}),
		$("#closeMenu").click(function() {
			$("#topMenu").toggleClass("open");
			$("#curtain").toggleClass("open");
			$('html').removeClass('fancybox-enabled');
			$('.top-menu-overlay').remove();
		}),
		$("#curtain").click(function() {
			$("#topMenu").toggleClass("open");
			$("#curtain").toggleClass("open");
			$('html').addClass('fancybox-enabled');
			$('#topMenu').after(overlayhtml);

			$('.top-menu-overlay').click(function() {
				$(this).remove();
				$('html').removeClass('fancybox-enabled');
				$("#topMenu").removeClass("open");
				$("#curtain").removeClass("open");
			});
		}),
		$("#volumeOpenner").click(function() {
			$("#headerVideo").prop("muted") ? (
				$("#headerVideo").prop("muted", !1),
				$("#volumeOpenner").addClass("open")
			) : (
				$("#headerVideo").prop("muted", !0),
				$("#volumeOpenner").removeClass("open")
			)
		});
	}
};