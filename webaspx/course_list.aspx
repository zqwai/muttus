<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course_list.aspx.cs" Inherits="DB.Web.course_list" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head runat="server">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">

    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>mutuus </title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css" rel="stylesheet">
    <link href="css/wx_mutuus.css" rel="stylesheet">

    <script src="js/jquery.1.11.0.min.js"></script>
</head>
<body class=" course-main">



<form class="course-wrapper bg_add8df" id="form1" runat="server" >

<div class="tip-page flexbox" runat="server" id="s1">
	<header class="header">
		<div class="data">
			<span class="mouth"></span>
			<span class="day"></span>
		</div>
	</header>
	<section class="cont flex">
		<div class="noimg" >
    <asp:Image ID="Image1" runat="server"
      ImageUrl="images/wx_bg/no.png"

     ToolTip="今天休息哦！" />

			<span>今天休息哦！</span>
		</div>
	</section>
</div>

<div id="course" class="swiper-container course">


    <div class="swiper-wrapper">


        <asp:Repeater ID="Repeater1" runat="server"><ItemTemplate>
        <div class="swiper-slide my-slide"  data-time='<%#Eval("starttime")%>' data-gethours="1">

            <div class="flexbox">
                <h3 class="title" ><%#Eval("kcname")%></h3>
                <div class="flex">
                    <div class="course-detil">
                        <h5>所属课程体系</h5>
                        <div class="text"><%#Eval("txname")%></div>
                    </div>
                    <div class="course-detil">
                        <h5>主要领域</h5>
                        <div class="text"><%#Eval("jnname")%></div>
                    </div>
                    <div class="course-detil">
                        <h5>早期学习目标</h5>
                        <div class="text">
                            <%#Eval("kcmbname")%>
                        </div>
                    </div>
                </div>
                <div class="time">
                    <svg class="icon-svg" viewBox="0 0 1024 1024" width="200" height="200"><path d="M822.4 822.4c-80 80-188.8 128-310.4 128-121.6 0-230.4-48-310.4-128-80-80-128-188.8-128-310.4 0-121.6 48-230.4 128-310.4 80-80 188.8-128 310.4-128l0 0c121.6 0 230.4 48 310.4 128 80 80 128 188.8 128 310.4C950.4 633.6 902.4 742.4 822.4 822.4M963.2 268.8c-57.6-102.4-147.2-185.6-256-230.4C646.4 12.8 579.2 0 512 0c-60.8 0-121.6 12.8-176 32C204.8 80 96 182.4 41.6 310.4 16 371.2 0 441.6 0 512c0 73.6 16 140.8 44.8 204.8 44.8 105.6 124.8 192 224 246.4 73.6 38.4 156.8 60.8 243.2 60.8 67.2 0 134.4-12.8 195.2-38.4 105.6-44.8 195.2-121.6 249.6-220.8 41.6-73.6 67.2-160 67.2-252.8C1024 422.4 1001.6 339.2 963.2 268.8" p-id="4945"></path><path d="M512 476.8 512 272l-67.2 0L444.8 512l0 35.2 272 0 0-67.2L512 480z" p-id="4946"></path></svg>
                    <%#Eval("starttime")%>
                </div>
            </div>
        </div>
       </ItemTemplate></asp:Repeater>

    </div>

    <header class="course-top hide">
        <div class="nav-time-wapper">
            <div class="nav-time-pagination"></div>
        </div>

    </header>
</div>

</section>

</form>
</body>

<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="https://cdn.bootcss.com/Swiper/3.4.2/js/swiper.min.js"></script>
<script>



    var mySwiper = new Swiper('#course', {
        direction: 'horizontal',
        // loop: true,

        // nextButton: '.course-navigation .next',
        // prevButton: '.course-navigation .prev',
        // buttonDisabledClass: 'inactive',

        pagination: '.nav-time-pagination',
        paginationProgressbarClass: 'nav-time-progressbar',
        paginationClickable: true,

        roundLengths: true, //防止文字模糊
        slideClass: 'my-slide',
        slideActiveClass: 'active',

        effect : 'coverflow',
        slidesPerView: 1,
        centeredSlides: true,
        coverflow: {
            rotate: 10,
            stretch: 10,
            depth: 10,
            modifier: 2,
            slideShadows : true
        },

        onProgress: function(swiper){
            for (var i = 0; i < swiper.slides.length; i++){
              var slide = swiper.slides[i];
              var progress = slide.progress;
              scale = 1 - Math.min(Math.abs(progress * 0.2), 1);

             es = slide.style;
             es.opacity = 1 - Math.min(Math.abs(progress/2),1);
                    es.webkitTransform = es.MsTransform = es.msTransform = es.MozTransform = es.OTransform = es.transform = 'translate3d(0px,0,'+(-Math.abs(progress*150))+'px)';
            }
        },
        onInit: function (swiper) {
            setTimeout(function () {
                var dtime = $('.my-slide.active').data('time');
                $('#course .nav-time-wapper .nav-time-pagination .swiper-pagination-bullet-active').append('<span class="time">' + dtime + '</span>');
            }, 100)

        },
        onSlideChangeStart: function (swiper) {
            $('#course .nav-time-wapper .nav-time-pagination .time').remove();
            var dtime = $('.my-slide.active').data('time');
            $('#course .nav-time-wapper .nav-time-pagination .swiper-pagination-bullet-active').append('<span class="time">' + dtime + '</span>');
        },
    });


    function mySwiperSlideToInit() {

        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        var _hours = date.getHours();
        var _minutes = date.getMinutes();

        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        // var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
        //         + " " + date.getHours() + seperator2 + date.getMinutes()
        //         + seperator2 + date.getSeconds();

        // var currentTimeAm = date.getHours() + seperator2 + date.getMinutes() + ' AM';
        // var currentTimePm = date.getHours()-12 + seperator2 + date.getMinutes() + ' PM';

        var dgethours = [];

        $('.my-slide').each(function () {
            function removeLastOne(str){
                return str.substring(0,str.length - 3);
            }
            var dtime = $(this).data('time');
            // console.log(dtime);
            // console.log(removeLastOne(dtime));
            dtime = parseInt(removeLastOne(dtime));

            // console.log(dtime);
            // var dd = $(this).data('gethours');
            dgethours.push(dtime);
        });

        dgethours.push(_hours);  //将当前时间添加到 数组dgethours中
        dgethours = dgethours.sort(compare);   // 数组dgethours由小到大重新排序
        var _hoursIndex = dgethours.indexOf(_hours);  //获取_hours在新数组dgethours 当前的位置
        function compare(value1, value2) {
            if (value1 < value2) {
                return -1;
            } else if (value1 > value2) {
                return 1;
            } else {
                return 0;
            }
        }

        var _index1 = _hoursIndex + 1;
        var _index2 = _hoursIndex - 1;
        if (_hoursIndex == 0) {
            mySwiper.slideTo(_index1, 100, false);
            console.log(dgethours[_hoursIndex + 1])  //如果_hours当前位置为0  输出 位置为1的值
        }
        else {
            mySwiper.slideTo(_index2, 100, false);
            console.log(dgethours[_hoursIndex - 1]);
            console.log(_index2);
        }

    }
    setTimeout(function () {
        mySwiperSlideToInit()
    }, 50);


    (function () {
    	var dt = new Date();
    	var m=new Array("Jan","Feb","Mar","Apr","Mar","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
    	var w=new Array("Monday","Tuseday","Wednesday","Thursday","Friday","Saturday","Sunday");
    	var d=new Array("st","nd","rd","th");
    	mn=dt.getMonth();
    	wn=dt.getDay();
    	dn=dt.getDate();
    	var dns;
    	if(((dn)<1) ||((dn)>3)){
    		dns=d[3];
    	}
    	else{
    		dns=d[(dn)-1];
    		if((dn==11)||(dn==12)){
    			dns=d[3];
    		}
    	}
    	$('.tip-page .header .data .mouth').html(m[mn]);
    	$('.tip-page .header .data .day').html(dn);
    })();

</script>
</html>
