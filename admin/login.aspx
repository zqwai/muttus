<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DB.Web.Admin.login" %>


<!DOCTYPE html>
<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>管理系统 | 登录</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
    <link href="css/coustom.css" rel="stylesheet">
</head>
<body class="login-bg">
    <form id="form1" runat="server">
  
    <div class="middle-box text-center loginscreen animated fadeInDown">

            <h1 class="logo-name logo-pic">
                <img src="http://www.imutuus.com/images/logo.png" alt="Mutuus">
            </h1>


            <!-- <h3>Mutuus管理系统</h3> -->
            
            <div class="m-t">
                <div class="form-group">
                    <input type="text"  runat="server" id="name" class="form-password" placeholder="账号" required autofocus>
                </div>
                <div class="form-group">
                    <input type="password" runat="server" id="password" class="form-password" placeholder="密码" required>
                </div>
                <asp:Button ID="Button1" runat="server" Text="登录"  CssClass="btn btn-primary block full-width m-b" OnClick="Button1_Click" />


                <!-- <a href="#"><small>忘记密码?</small></a>
                <p class="text-muted text-center"><small>如果没有账号?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register.html">创建账号</a> -->
            </div>
            <p class="m-t copyright"> <small>Mutuus &copy; 2017-2020</small> </p>

    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
