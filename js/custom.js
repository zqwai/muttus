$.fn.tap = function(fn){
	var collection = this,
		isTouch = "ontouchend" in document.body,
		tstart = isTouch ? "touchstart" : "mousedown",
		tmove = isTouch ? "touchmove" : "mousemove",
		tend = isTouch ? "touchend" : "mouseup",
		tcancel = isTouch ? "touchcancel" : "mouseout";
	collection.each(function(){
		var i = {};
		i.target = this;
		$(i.target).on(tstart,function(e){
			var p = "touches" in e ? e.touches[0] : (isTouch ? window.event.touches[0] : window.event);
			i.startX = p.clientX;
			i.startY = p.clientY;
			i.endX = p.clientX;
			i.endY = p.clientY;
			i.startTime = + new Date;
		});
		$(i.target).on(tmove,function(e){
			var p = "touches" in e ? e.touches[0] : (isTouch ? window.event.touches[0] : window.event);
			i.endX = p.clientX;
			i.endY = p.clientY;
		});
		$(i.target).on(tend,function(e){
			if((+ new Date)-i.startTime<300){
				if(Math.abs(i.endX-i.startX)+Math.abs(i.endY-i.startY)<20){
					var e = e || window.event;
					e.preventDefault();
					fn.call(i.target);
				}
			}
			i.startTime = undefined;
			i.startX = undefined;
			i.startY = undefined;
			i.endX = undefined;
			i.endY = undefined;
		});
	});
	return collection;
};
//初始化
var bWidth = window.screen.availWidth;
var bHeight =window.screen.availHeight;

$(function() {
	/*floatbtn show hide*/
    $(window).scroll( function() {
        var top = $(document).scrollTop();
        if(top > bHeight/3){
            // var height = $(window).height();
            $(".floatbtn").fadeIn(300);
        }
        if(top <  bHeight/3){
            $(".floatbtn").fadeOut(200);
        }
        if (top > 100) {
        	$(".btn-detil").removeClass('hide');
        }
        if (top < 100) {
        	$(".btn-detil").addClass('hide');
        }
    });
    /*back-to-top*/
    $('#back-to-top').tap(function(){
        $('html, body').animate({
            scrollTop: 0
        }, 500);
    });


});

