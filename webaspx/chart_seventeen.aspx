<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chart_seventeen.aspx.cs" Inherits="DB.Web.chart_seventeen" %>

<!DOCTYPE html>

<html lang="zh-CN">
<head runat="server">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">

    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title>17个早期学习目标发展频次</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="css/wx_chart.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server" class="page__form flexbox">

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
			<li><a href="chart_development.aspx">七大领域发展频次</a></li>
			<li class="on"><a href="chart_seventeen.aspx">17个早期学习目标发完成度</a></li>
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

    var dataAxis = ['[ELG 01]发展人际关系', '[ELG 02]自信和自我意识', '[ELG 03]管理情绪和行为', '[ELG 04]听和注意力', '[ELG 05]理解力', '[ELG 06]说', '[ELG 07]移动和操作',
    '[ELG 08]健康和自我照顾', '[ELG 09]阅读', '[ELG 10]写作',
    '[ELG 11]数字', '[ELG 12]形状、空间和测量', '[ELG 13]人和社区', '[ELG 14]世界', '[ELG 15]技术', '[ELG 16]探索和使用媒介与材质', '[ELG 17]富有想象力'];
    var data =   <%=GetSignature() %>;

    var yMax = 100;
    var dataShadow = [];
    var myDate = new Date();
    for (var i = 0; i < data.length; i++) {
        dataShadow.push(yMax);
    }

    option = {
        title: {
            text: '17个早期学习目标完成度',
            subtext: '统计截至：' + myDate.toLocaleDateString(),

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
            trigger: 'axis',
            left: 'center',
            formatter: "{b} <br/> {c} " // {a} <br/>{b} : {c}({d}%)    {a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）
        },
        xAxis: {
            show: false,
            data: dataAxis,
            axisLabel: {
                // inside: true,
                textStyle: {
                    color: '#666'
                }
            },
            nameRotate: 45,
            axisTick: {
                show: false
            },
            axisLine: {
                show: false
            },
            z: 10
        },
        yAxis: {
            axisLine: {
                show: false
            },
            axisTick: {
                show: false
            },
            axisLabel: {
                textStyle: {
                    color: '#999'
                }
            }
        },
        dataZoom: [
            {
                type: 'inside'
            }
        ],
        series: [
            { // For shadow
                type: 'bar',
                itemStyle: {
                    normal: { color: 'rgba(0,0,0,0.05)' }
                },
                // center: ['50%', '70%'],
                barGap: '-100%',
                barCategoryGap: '40%',
                data: dataShadow,
                animation: false
            },
            {
                type: 'bar',
                itemStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(
                            0, 0, 0, 1,
                            [
                                { offset: 0, color: '#83bff6' },
                                { offset: 0.5, color: '#188df0' },
                                { offset: 1, color: '#188df0' }
                            ]
                        )
                    },
                    emphasis: {
                        color: new echarts.graphic.LinearGradient(
                            0, 0, 0, 1,
                            [
                                { offset: 0, color: '#2378f7' },
                                { offset: 0.7, color: '#2378f7' },
                                { offset: 1, color: '#83bff6' }
                            ]
                        )
                    }
                },
                data: data
            }
        ]
    };

    // Enable data zoom when user click bar.
    var zoomSize = 6;
    myChart.on('click', function (params) {
        console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
        myChart.dispatchAction({
            type: 'dataZoom',
            startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
            endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
        });
    });

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</html>
