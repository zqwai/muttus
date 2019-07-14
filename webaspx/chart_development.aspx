<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chart_development.aspx.cs" Inherits="DB.Web.chart_development" %>

<!DOCTYPE html>

<html>
<head runat="server">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">

    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title>七大领域发展频次</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="css/wx_chart.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server"  class="page__form flexbox">

<header class="chart__hender">
	<nav class="chart-nav clearfix">
		<div class="logo"></div>
		<div class="block"></div>
		<div id="jMenu" class="menu">
			<span class="line"></span>
			<!-- <span class="line two"></span>
			<span class="line three"></span> -->
		</div>
	</nav>
	<ul id="chartSubNav" class="chart_sub-nav">
			<li class="on"><a href="chart_development.aspx">七大领域发展频次</a></li>
			<li><a href="chart_seventeen.aspx">17个早期学习目标发完成度</a></li>
			<li><a href="chart_cognition.aspx">成长追踪</a></li>
        <li><a href="chart_growth.aspx">当月数据报告</a></li>
	</ul>
</header>

<section class="chart__content flex">
	<div class="main-chart" id="mainChart">

	</div>
</section>

<footer class="chart__footer">
</footer>

</form>
</body>
<script src="js/jquery.1.11.0.min.js"></script>
<script src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="./js/echarts/echarts.min.js"></script>
<script src="./js/charts.js"></script>
<script>
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('mainChart'));
    var myDate = new Date();
    option = {
        backgroundColor: '#fff',

        title: {
            text: '七大领域发展频次',
            subtext: '统计截至：'+ myDate.toLocaleDateString(),

            left: 'center',
            top: 20,
            padding: [60, 0, 20, 0],
            textStyle: {
                color: '#666',

            },
            subtextStyle: {
                color: '#999',
                fontStyle: 'italic',
            }
        },

        tooltip: {
            trigger: 'item',
            formatter: "{a}<br/>{b} : {c} 分" // {a} <br/>{b} : {c}({d}%)    {a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）
        },

        visualMap: {
            show: false,
            min: 1,
            max: 100,
            inRange: {
                color: ['#121122', 'rgba(3,4,5,0.4)', 'red'],
                colorLightness: [0.4, 0.8]
            }
        },
        series: [
            {
                name: '上课频率',
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [
                    { value: <%=GetStr1() %>, name: '自我认知' },
                    { value: <%=GetStr2() %>, name: '沟通和语言' },
                    { value: <%=GetStr3() %>, name: '身体发展' },
                    { value: <%=GetStr4() %>, name: '文字读写' },
                                    { value: <%=GetStr5() %>, name: '数学' },
                                    { value: <%=GetStr6() %>, name: '社会认知' },
                                    { value: <%=GetStr7() %>, name: '艺术表达与设计' }

                ].sort(function (a, b) { return a.value - b.value; }),
                roseType: 'radius',
                label: {
                    normal: {
                        textStyle: {
                            color: 'rgba(0, 0, 0, 0.3)'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        lineStyle: {
                            color: 'rgba(0, 0, 0, 0.3)'
                        },
                        smooth: 0.2,
                        length: 5,
                        length2: 10
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#c23531',
                        shadowBlur: 50,
                        shadowColor: 'rgba(0, 0, 0, 0.2)'
                    }
                },

                animationType: 'scale',
                animationEasing: 'elasticOut',
                animationDelay: function (idx) {
                    return Math.random() * 200;
                }
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</html>
