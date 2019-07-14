<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chart_cognition.aspx.cs" Inherits="DB.Web.chart_cognition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">

    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title>成长追踪</title>

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
		</div>
	</nav>
	<ul id="chartSubNav" class="chart_sub-nav">
			<li><a href="chart_development.aspx">七大领域发展频次</a></li>
			<li><a href="chart_seventeen.aspx">17个早期学习目标发完成度</a></li>
			<li class="on"><a href="chart_cognition.aspx">成长追踪</a></li>
        <li><a href="chart_growth.aspx">当月数据报告</a></li>
	</ul>
</header>

<section class="chart__content cognition-bg flex">

	<div class="block-5rem"></div>

	<ul class="cognition__head">
		<li class="student-name">
			<div class="cn">
				<strong class="name" runat="server" id="name"></strong>
				<span>小朋友</span>
			</div>
		</li>
		<li class="student-mouth-age">
			<span class="title">月龄：</span>
			<span class="age" runat="server" id="age"></span>
		</li>
	</ul>

	<div class="cognition__content">



		<section class="wrap-content">
			<header class="cognition-subject">
				<div class="cn">

					<span>个人评价</span>
				</div>
				<div class="en"></div>
			</header>

			<article class="cognition-detil">
				<div class="result">
					<span class="title">当前发展结果：</span>
					<span class="cont" runat="server" id="result">继续观察</span>
				</div>

				<dl class="status">
					<dt class="title">发展中</dt>
                    <asp:Repeater ID="Repeater1" runat="server"><ItemTemplate>
					<dd class="item">
						<%--<span class="cn">与其他人一起玩</span>--%>
						<span class="cn"><%#Eval("jnname")%></span>
                        <span class="en"><%#Eval("ename")%></span>
					</dd>
					</ItemTemplate></asp:Repeater>
				</dl>
			</article>
		</section>



	</div>






</section>

<footer class="chart__footer"></footer>

</form>
</body>
<script src="js/jquery.1.11.0.min.js"></script>
<script src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script src="./js/charts.js"></script>
<script>
</script>
</html>
