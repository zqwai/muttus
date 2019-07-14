<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chart_growth.aspx.cs" Inherits="DB.Web.chart_growth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <form id="form1" runat="server" class="page__form flexbox">

<header class="chart__hender ">
	<nav class="chart-nav clearfix">
		<div class="logo"></div>
		<div class="block"></div>
		<div id="jMenu" class="menu">
			<span class="line"></span>
		</div>
	</nav>
	<ul id="chartSubNav" class="chart_sub-nav">
			<li class="on"><a href="chart_development.aspx">七大领域发展频次</a></li>
			<li><a href="chart_seventeen.aspx">17个早期学习目标发展频次</a></li>
			<li><a href="chart_cognition.aspx">成长追踪</a></li>
			<li><a href="chart_growth.aspx">当月数据报告</a></li>
	</ul>
</header>

<section class="chart__content flex">

    <header class="student-info woman" runat="server" id="headpic">
		<div class="main">
			<div class="header_pic hide">
				<img src="./images/shangping/shangping.png" alt="header">
			</div>
			<h1 class="name" runat="server" id="name"></h1>
			<ul class="info">
				<li></li>
				<li class="sex">
					<span>姓别：</span>
					<strong runat="server" id="sex"></strong>
				</li>
				<li class="month_age">
					<span>月龄：</span>
					<strong  runat="server" id="age"></strong>
				</li>
				<li class="month_age"></li>
			</ul>
		</div>
	</header>

	<div class="student-cont student-cont-goal clearfix">
		<dl class="goal">
			<dd runat="server" id="show"></dd>
			<dt class="goal-title">已完成发展目标</dt>
		</dl>
		<div class="goal-chart">
			<div class="chart-growth-pie" id="mainChartPie"></div>
		</div>
	</div>
	<div class="student-cont student-cont-bar">
		<!-- <div class="goal-title">已完成发展目标在七大领域占比</div> -->
		<div class="chart-growth-bar" id="mainChartBar"></div>
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
    var mainChartPie = echarts.init(document.getElementById('mainChartPie')),
    mainChartBar = echarts.init(document.getElementById('mainChartBar')),
    //定义 饼图 数据
    _optionTitle = '当前总成长目标完成度',
    _optionSubtext = '统计截至：2017-07-20',
    _legendData = ['已完成','未完成'],
    _mainData = [
           <%=GetSignature2() %>
    ];
    //定义 图表 数据
    _optionBarTitle = '当前总成长目标完成度',
    _optionBarSubtext = '统计截至：2017-07-20',
    // _barLegendData = ['已完成','未完成'],
    _barX = [
        'A 个人，社会和情感发展',
        'B 沟通与语言',
        'C 物理发展',
        'D 读写能力',
        'E 数学',
        'F 了解世界',
        'G 表现艺术与设计',
    ],
    _barAllTitle =  '本月',
    _barAllData =  <%=GetSignature() %>,
    _barNowTitle =  '上月',
    _barNowData =  <%=GetSignature1() %>;

    //数据 饼图
    mainChartPieOption = {
        // backgroundColor: '#fff',
        title: {
            // text: _optionTitle,
            // subtext: _optionSubtext,
            left: 'center',
            top: 20,
            padding: [60, 0,20,0],
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
            formatter: "{b}: {c}"
        },
        legend: {
            orient: 'horizontal',
            bottom: '0%',
            data: _legendData,
        },

        series : [
            {
                //  name:_optionTitle,
                type:'pie',
                //  selectedMode: 'single',
                radius: ['40%', '90%'],
                color: ['#FF999A', '#666', ],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: true,
                        position: 'inside',
                        formatter: "{d}%",
                        textStyle: {
                            fontSize: '14',
                            fontWeight: 'bold'
                        }
                    },
                    emphasis: {
                        show: true,
                        formatter:`{b}\n{d}%`,
                textStyle: {
                    fontSize: '14',
                    fontWeight: 'bold'
                }
            }
        },
    labelLine: {
        normal: {
                show: false
        }
    },
    data:_mainData,
    }
    ]
    },
//数据 图表
mainChartBarOption = {
    "title": {
        "text": _optionBarTitle,
        "subtext": _optionBarSubtext,
        "x": "center"
    },
    "tooltip": {
        "trigger": "axis",
        "axisPointer": {
            "type": "shadow"
        },
    },
    "grid": {
        "borderWidth": 0,
        "y2": 120
    },
    // "legend": {
    //     "x": "right",
    //     "data": [ ]
    // },

    "toolbox": {
        "show": true,
        "feature": {
            "restore": { },
            "saveAsImage": { }
        }
    },
    "calculable": true,
    "xAxis": [
        {
            "type": "category",
            "splitLine": {
                "show": false
            },
            "axisTick": {
                "show": false
            },
            "splitArea": {
                "show": false
            },
            "axisLabel": {
                "interval": 0,
                "rotate": 45,
                "show": true,
                "splitNumber": 15,
                "textStyle": {
                    // "fontFamily": "微软雅黑",
                    "fontSize": 10
                }
            },
            "data": _barX,
        }
    ],
    "yAxis": [
        {
            "type": "value",
            "splitLine": {
                "show": false
            },
            "axisLine": {
                "show": true
            },
            "axisTick": {
                "show": false
            },
            "splitArea": {
                "show": false
            }
        }
    ],
    "dataZoom": [
        {
            "show": true,
            "height": 30,
            "xAxisIndex": [
                0
            ],
            "bottom":40,
            "start": 0,
            "end": 80
        },
        {
            "type": "inside",
            "show": true,
            "height": 15,
            "xAxisIndex": [
                0
            ],
            "start": 1,
            "end": 35
        }
    ],
    "series": [
        {
            "name": _barAllTitle,
            "type": "bar",
            // "barWidth": "20%",
            "itemStyle": {
                "normal": {
                    "color": "#BBBBBB",
                    "barBorderRadius": 0,
                    "label": {
                        "show": true,
                        "textStyle": {
                            "color": "rgba(0,0,0,1)"
                        },
                        "position": "top",
                        formatter : function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": _barAllData,
        },
        {
            "name": _barNowTitle,
            "type": "bar",
            "stack": "收客",
            //"barWidth": "10%",
            "barGap": "-100%",
            "itemStyle": {
                "normal": {
                    "barBorderRadius": 0,
                    "color": "#59ADF3",
                    "label": {
                        "show": true,
                        "textStyle": {
                            "color": "rgba(0,0,0,1)"
                        },
                        "position": "inside",
                        formatter : function(p) {
                            return p.value > 0 ? (p.value ): '';
                        }
                    }
                }
            },
            "data": _barNowData,
        },
        // {
        //     "name": "预留",
        //     "type": "bar",
        //     "stack": "收客",
        //     "itemStyle": {
        //         "normal": {
        //             "color": "#86D560",
        //             "barBorderRadius": 0,
        //             "label": {
        //                 "show": true,
        //                 "textStyle": {
        //                     "color": "rgba(0,0,0,1)"
        //                 },
        //                 "position": "inside",
        //                 formatter : function(p) {
	      //                                           return p.value > 0 ? (p.value) : '';
	      //                                       }
        //             }
        //         }
        //     },
        //     "data": [
        //         386,
        //         0,
        //         0,
        //         122,
        //         261,
        //         171,
        //         0,
        //     ]
        // }
    ]
};

    // 使用刚指定的配置项和数据显示图表。
    mainChartPie.setOption(mainChartPieOption);
    mainChartBar.setOption(mainChartBarOption);
</script>
</html>
