<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bind_entrance.aspx.cs" Inherits="DB.Web.bind_entrance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">

    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title>MUTUUS学生信息</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="css/wx_chart.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server"  class="page__form flexbox">

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
		<ul class="box-btn-link">
			<li class="item">
				<a href="course_list.aspx" class="btn btn-link">今日餐表</a>
			</li>
			<li class="item">
				<a href="wx_cookbook.aspx" class="btn btn-link">今日课表</a>
			</li>
			<%--<li class="item">
				<a href="#" class="btn btn-link">成长追踪</a>
			</li>--%>
		</ul>
	</div>
</section>

<footer class="chart__footer">
</footer>

</form>
</body>
<script src="js/jquery.1.11.0.min.js"></script>
<script src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>

</script>
</html>