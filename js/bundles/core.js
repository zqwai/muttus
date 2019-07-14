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
// 自定义弹出提示
function myalert(text,id){  if(id==undefined){id=1000;}
    var htmls='<div   class="myalert"><span ></span></div>';    
    $("body").append(htmls); 
    $(".myalert").find("span").text(text);      
    var s=setTimeout(function(){  $("body").find(".myalert").remove();        
    clearTimeout(s); },id);
};


$(document).ready(function() {
	global.setupBindings(), 
	$(window).resize(), 
	typeof readyFunction != "undefined" && readyFunction(), 
	$("#homeHeader video").addClass("show"), 
	setTimeout(function() {
		$("#homeHeader ").addClass("show")
	}, 2e3), 
	$("#Guests").change(function() {
		$("#divGuests").html("");
		var n = $("#Guests").val();
		n > 1 && guests.addGuests(n)
	});

	// 自定义链接 防冲突
    $('.dLink').on('click',function(){
        var _dLink =$(this).data('link');
        var _dLinkDisable=$(this).hasClass('dLink-disable');
        if(!_dLinkDisable){
            window.location.href= _dLink;
        }else {return false;}
    });
    /*back-to-top*/
	$('#back-to-top').on('click',function(){
	    $('html, body').animate({
	        scrollTop: 0
	    }, 500);
	});
});
$(window).scroll(function() {
	//初始化
	var bWidth = window.screen.availWidth;
	var bHeight =window.screen.availHeight;
	var _scrollTop = $(document).scrollTop();
	_scrollTop > 0 ? $("nav").hasClass("scrolled") || (
		$("nav").addClass("scrolled"), 
		setTimeout(function() {
			$("nav").hasClass("scrolled") && $("nav").addClass("fixed")
		}, 200)
	) : $("nav").hasClass("scrolled") && (
		$("nav").removeClass("scrolled"), 
		$("nav").removeClass("fixed")
	);
	var dheight = window.screen.availHeight;
	// console.log(dheight/8,_scrollTop);

	if( dheight/6 < _scrollTop){
		$('.slogan h3:first-child').addClass('animated fadeOutLeft').removeClass('fadeInLeft');
		$('.slogan h3:last-child').addClass('animated fadeOutRight').removeClass('fadeInRight');
		
	}
	else if(dheight/6 > _scrollTop ){
		$('.slogan h3:first-child').removeClass('fadeOutLeft').addClass('animated fadeInLeft');
		$('.slogan h3:last-child').removeClass('fadeOutRight').addClass('animated fadeInRight');
	};

	if(_scrollTop > bHeight/3){
        $(".floatbtn").fadeIn(300);
    }
    if(_scrollTop <  bHeight/3){
        $(".floatbtn").fadeOut(200);
    };
 //    $("[data-fancybox]").fancybox({
	// 	iframe : {
	// 		scrolling : 'auto',
	// 	}
	// });
});

$(window).resize(function() {
	$("#topMenu").css("margin-top", $("#topMenu").outerHeight() * -1 + "px")
});
//禁止默认触屏默认动作
// document.addEventListener("touchmove",function(e){e.preventDefault()},!1);

// baidu share
window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"mutuus - being imaginative, being different","bdMini":"2","bdMiniList":[],"bdPic":"http://www.imutuus.com/images/bg/about_logo_2.gif","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
