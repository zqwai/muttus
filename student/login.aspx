<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DB.Web.student.login" %>

<!DOCTYPE html>
<html>
<head runat="server">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title> Mutuus管理系统</title>

    <link href="http://www.imutuus.com/admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="http://www.imutuus.com/admin/css/animate.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/css/style.css" rel="stylesheet">
    
    <link href="http://www.imutuus.com/admin/css/coustom.css" rel="stylesheet">
</head>
<body  class="login-bg">
   
       <div class="middle-box text-center loginscreen animated fadeInDown">
       
            <!-- <h1 class="logo-name text-small">Mutuus管理系统</h1> -->

            <h1 class="logo-name logo-pic">
                <img src="http://www.imutuus.com/images/logo.png" alt="Mutuus">
            </h1>
            <form class="m-t" role="form" runat="server" id="form1">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                <asp:scriptmanager runat="server"></asp:scriptmanager>
    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                    </ContentTemplate></asp:UpdatePanel>
                <div class="login-qrcode">
                    <div class="qrcode" style="">
                        <img  runat="server" id="qrcode" alt="qrcode" style="width: 100%;">
                    </div>
                    <p class="text-muted text-center"><small>若需重新扫描，请刷新页面。</small></p>
                    <%--<a class="text-muted text-center btn btn-link btn-login-qrcode"><small>密码登录</small></a>--%>
                </div>
            
                <div class="login-password" style="display: none;">
                    <div class="form-group">
                        <input type="text" class="form-password" placeholder="微信号" required autofocus>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-password" placeholder="密码" required>
                    </div>
                    <input type="button" name="" value="登录" class="btn btn-primary block full-width m-b">
                    <a class="text-muted text-center btn btn-link btn-login-qrcode"><small>二维码登录</small></a>
                </div>
            </form>
            <p class="m-t copyright"> mutuus &copy; 2017 </p>

    </div>

    <!-- Mainly scripts -->
    <script src="http://www.imutuus.com/admin/js/jquery-2.1.1.js"></script>
    <script src="http://www.imutuus.com/admin/js/bootstrap.min.js"></script>
<script>
    $('.btn-login-qrcode').on('click', function () {
        $('.login-password').show();
        $(this).parent().hide();
    });
    $('.btn-login-qrcode').on('click', function () {
        $('.login-qrcode').show();
        $(this).parent().hide();
    });
</script>
  
</body>
</html>
